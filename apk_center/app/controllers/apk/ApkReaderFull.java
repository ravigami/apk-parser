package controllers.apk;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import models.app.ApkIcon;
import models.app.ApkInfoFull;
import models.app.ApkResourceKey;
import models.app.JarEntryInfo;

import org.apache.commons.lang.StringUtils;

import play.Play;
import controllers.apk.ApkException.ApkExceptionMsg;
import controllers.common.ApkUtils;
import controllers.common.HashUtils;
import controllers.common.Pair;
import controllers.common.TimeoutController;
import controllers.common.TimeoutController.TimeoutException;
import controllers.storage.StorageLib;

public class ApkReaderFull implements Runnable {

	public File apkFile = null;
	public ApkInfoFull info = null;
	public ManifestEntry rootEntry;

	public ApkReaderFull(File apkFile) {
		this.apkFile = apkFile;
	}

	public static class ResourceItem {
		String addr;
		String fullname;
		int type;
		String value;

		public ResourceItem(String addr, String fullname, int type, String value) {
			super();
			this.addr = addr;
			this.fullname = fullname;
			this.value = value;
			this.type = type;
		}

		public static ResourceItem decodeResource(String infoLine, String valueLine) {
			String[] parts = infoLine.trim().split(" ");

			if (parts[0].equals("resource") && parts[1].startsWith("0x") && parts[2].endsWith(":")
					&& parts[3].startsWith("t=0x10")) {
				valueLine = valueLine.trim();
				String value = valueLine.substring(valueLine.indexOf(")") + 1).replace("#", "").trim();
				try {
					value = String.valueOf(Integer.parseInt(value, 16));
				} catch (Exception e) {
					value = String.valueOf(Integer.MIN_VALUE);
				}
				return new ResourceItem(parts[1], parts[2], 10, value);
			}
			if (parts[0].equals("resource") && parts[1].startsWith("0x") && parts[2].endsWith(":")
					&& parts[3].startsWith("t=0x03")) {
				valueLine = valueLine.trim();
				String value = valueLine.substring(valueLine.indexOf(")") + 1).trim();
				// return new ResourceItem(parts[1], parts[2],
				// Integer.valueOf(parts[3].substring(4), 16), value);
				return new ResourceItem(parts[1], parts[2], 3, value);
			}

			return null;
		}
	}

	public static class ManifestEntry {
		public String name;
		public List<ManifestEntry> subEntries = new ArrayList<ManifestEntry>();
		public List<ManifestAttr> attrs = new ArrayList<ManifestAttr>();

		private int wsCount = 0;

		public ManifestEntry getEntry(String line, BufferedReader br, ApkInfoFull info) throws IOException {
			String[] parts = line.trim().split(" ");
			if (parts.length >= 2) {
				name = parts[1];
			}
			wsCount = getWhitespaceCount(line);

			br.mark(1024);
			while ((line = br.readLine()) != null) {
				while (!line.trim().startsWith("E:") && !line.trim().startsWith("A:")) {
					br.mark(1024);
					line = br.readLine();
					if (line == null) {
						return this;
					}
				}
				if (line.trim().startsWith("E:") && wsCount < getWhitespaceCount(line)) {
					subEntries.add((new ManifestEntry()).getEntry(line, br, info));
					br.mark(1024);
					continue;
				}
				if (wsCount >= getWhitespaceCount(line)) {
					br.reset();
					return this;
				}
				for (Pair pair : getFields(line)) {
					String key = pair.fst.toString();
					String value = pair.snd.toString();
					attrs.add(new ManifestAttr(key, value));
				}
				br.mark(1024);
			}
			return this;
		}

		public String toString() {
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < wsCount; i++) {
				sb.append(' ');
			}
			sb.append(name + "," + attrs.size() + ",");
			for (ManifestAttr attr : attrs) {
				sb.append(attr.key);
			}

			String part1 = sb.toString() + "\r\n";
			String part2 = "";
			for (ManifestEntry entry : subEntries) {
				part2 += entry.toString() + ",";
			}

			return part1 + part2;
		}
	}

	public static class ManifestAttr {
		public String key;
		public String value;

		public ManifestAttr(String key, String value) {
			super();
			this.key = key;
			this.value = value;
		}

		public String toString() {
			return key; // + "=" + value;
		}
	}

	public ApkInfoFull decode() {
		if (!apkFile.exists())
			return null;
		try {
			info = new ApkInfoFull();

			getEntries();

			decodeApk();

			decodeManifest();

			decodeResources();

			if (!refineApkInfo()) {
				info = null;
			}

			extractFiles();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			info = null;
		}

		return info;
	}

	private void decodeApk() throws ApkException {
		File apkFolder = apkFile.getParentFile();
		String[] getManifestScript = { Play.configuration.getProperty("scriptfolder") + "/extractinfo.sh",
				apkFolder.getAbsolutePath() };
		runScripts(getManifestScript);
		if ((new File(apkFolder, "fin")).exists()) {
			// Decode complete
			File decodedFolder = new File(apkFolder, "unzipped");
			for (JarEntryInfo entry : info.entries) {
				File entryFile = new File(decodedFolder, entry.name);
				entry.hash = HashUtils.getFileSHA1(entryFile);
			}
		} else {
			throw new ApkException(ApkExceptionMsg.PARSE_FAILED_DECODE_INCOMPLETE);
		}

		return;
	}

	private void extractFiles() throws ApkException {
		if (info == null) {
			throw new ApkException(ApkExceptionMsg.PARSE_FAILED_REFINE);
		}

		try {
			File tmpIcon = File.createTempFile("icontmp_", "");
			for (ApkIcon icon : info.icon) {
				if (!ApkUtils.extractEntryFile(apkFile, icon.jarPath, tmpIcon)) {
					throw new Exception("Icon extraction failed");
				}
				icon.filePath = StorageLib.ICON.generateRelativePath(StorageLib.ICON.put(tmpIcon, true));
			}
		} catch (Exception e) {
			throw new ApkException(ApkExceptionMsg.PARSE_FAILED_EXTRACT_FILES);
		}
	}

	private boolean isLaunchableActivity(ManifestEntry rootEntry) {
		if (!rootEntry.name.equals("activity")) {
			return false;
		}

		boolean isLaunchable = false;
		for (ManifestEntry entry : rootEntry.subEntries) {
			for (ManifestEntry e : entry.subEntries) {
				if (e.name.equals("category")) {
					for (ManifestAttr attr : e.attrs) {
						if (attr.value.contains("android.intent.category.LAUNCHER")) {
							return true;
						}
					}
				}
			}
		}
		return isLaunchable;
	}

	private boolean refineApkInfo() throws ApkException {

		ManifestEntry manifestEntry = rootEntry.subEntries.get(0);
		if (!manifestEntry.name.equals("manifest")) {
			throw new ApkException(ApkExceptionMsg.PARSE_FAILED_INVALID_MANIFEST);
		}

		String versionCode = null;
		// Get info from manifest entry
		for (ManifestAttr attr : manifestEntry.attrs) {
			String key = attr.key;
			String value = attr.value;
			if (key.startsWith("android:versionCode") || key.startsWith("a:versionCode")) {
				versionCode = value;
			} else if (key.startsWith("android:versionName") || key.startsWith("a:versionName")) {
				info.setVersionName(getStringValue(value));
			} else if (key.startsWith("package")) {
				info.setPackageName(getStringValue(value));
			} else {
				// System.out.println("Unsupported " + key);
			}
		}

		for (ManifestEntry entry : manifestEntry.subEntries) {
			if (entry.name.equals("application")) {
				for (ManifestAttr attr : entry.attrs) {
					String key = attr.key;
					String value = attr.value;
					if (key.startsWith("android:label") || key.startsWith("a:label")) {
						info.addLabel(getStringValue(value));
					} else if (key.startsWith("android:icon") || key.startsWith("a:icon")) {
						info.addIcon(value, null);
					} else if (key.startsWith("android:name")) {
						info.addLabel(getStringValue(value));
					}
				}
				for (ManifestEntry activityEntry : entry.subEntries) {
					if (activityEntry.name.equals("activity")) {
						if (isLaunchableActivity(activityEntry)) {
							for (ManifestAttr attr : activityEntry.attrs) {
								String key = attr.key;
								String value = attr.value;
								if (key.startsWith("android:label") || key.startsWith("a:label")) {
									info.addLabel(getStringValue(value));
								} else if (key.startsWith("android:icon") || key.startsWith("a:icon")) {
									info.addIcon(value, null);
								}
							}
						}
					}
				}
			}
		}

		String versionName = info.getVersionName();
		if (versionName == null) {
			info.setVersionName("");
		} else if (versionName.startsWith("@")) {
			info.setVersionName(info.getRawResources(versionName.substring(1)).get(0));
		}

		if (versionCode == null) {
			info.setVersionCode(0);
		} else if (versionCode.startsWith("@")) {
			info.setVersionCode(getIntegerValue(info.getRawResources(versionCode.substring(1)).get(0)));
		} else {
			info.setVersionCode(getIntegerValue(versionCode));
		}

		List<String> refinedLabels = new ArrayList<String>();
		for (String label : info.getLabel()) {
			if (label.startsWith("@")) {
				refinedLabels.addAll(info.getRawResources(label.substring(1)));
			} else {
				refinedLabels.add(getStringValue(label));
			}
		}
		info.getLabel().clear();
		info.getLabel().addAll(refinedLabels);

		List<ApkIcon> refinedIcons = new ArrayList<ApkIcon>();
		for (ApkIcon icon : info.getIcon()) {
			if (icon.jarPath.startsWith("@")) {
				List<String> jarPaths = info.getRawResources(icon.jarPath.substring(1));
				for (String jarPath : jarPaths) {
					for (String iconPath : ApkUtils.getIconPaths(info, jarPath)) {
						// System.out.println("icon=" + iconPath);
						// TODO get file and engage it
						icon.jarPath = jarPath;
						icon.hash = ApkUtils.getEntryHash(apkFile, iconPath);
					}
				}
			}
		}
		info.getIcon().addAll(refinedIcons);
		return true;
	}

	private void decodeResources() throws IOException {
		String[] getResourcesScript = { "aapt", "dump", "--values", "resources", apkFile.getAbsolutePath() };
		String resources = runScripts(getResourcesScript);
		BufferedReader br = new BufferedReader(new StringReader(resources));
		String line = null;
		while ((line = br.readLine()) != null) {
			line = line.trim();
			if (line.startsWith("resource")) {
				String valueLine = br.readLine();
				if (valueLine == null) {
					continue;
				}

				ResourceItem item = ResourceItem.decodeResource(line, valueLine);
				if (item != null) {
					if (item.type == 3) {
						while (!item.value.equals("null") && !valueLine.endsWith("\"") && !valueLine.endsWith("\'")) {
							item.value += br.readLine() + "\r\n";
						}
						if (item.value.length() > 2) {
							item.value = item.value.substring(1, item.value.length() - 1);
						}
						info.addRawResource(new ApkResourceKey(item.addr, null, null, item.fullname), item.value);
					} else if (item.type == 10) {
						info.addRawResource(new ApkResourceKey(item.addr, null, null, item.fullname), item.value);
					}
				}
			}
		}
	}

	public static int getWhitespaceCount(String line) {
		int i = 0;

		for (i = 0; i < line.length(); i++) {
			if (line.charAt(i) != ' ') {
				return i;
			}
		}

		return i;
	}

	private boolean decodeManifest() throws IOException {
		String[] getManifestScript = { "aapt", "dump", "--values", "xmltree", apkFile.getAbsolutePath(),
				"AndroidManifest.xml" };
		String manifest = runScripts(getManifestScript);

		BufferedReader br = new BufferedReader(new StringReader(manifest));
		String line = br.readLine();
		if (line == null) {
			return false;
		}
		rootEntry = (new ManifestEntry()).getEntry(line, br, info);
		return true;
	}

	public boolean getEntries() throws IOException, ApkException {
		boolean ret = false;
		JarFile jf = null;
		info.setFileSize(apkFile.length());
		byte[] buf = new byte[4096];
		jf = new JarFile(apkFile.getAbsolutePath());
		if (jf.getManifest() == null)
			throw new ApkException(ApkExceptionMsg.PARSE_FAILED_NO_CERTIFICATES);
		List<JarEntry> entries = new ArrayList<JarEntry>();
		Enumeration<? extends JarEntry> e = jf.entries();
		while (e.hasMoreElements()) {
			JarEntry entry = e.nextElement();
			info.addEntry(entry);
			InputStream is = null;
			entries.add(entry);
			is = jf.getInputStream(entry);
			while ((is.read(buf)) != -1)
				;
		}

		for (JarEntry entry : entries) {
			if (jf.getManifest() != null && jf.getManifest().getEntries().containsKey(entry.getName())) {
				for (Certificate cert : entry.getCertificates()) {
					info.addCert(cert);
				}
			}
		}
		ret = true;
		jf.close();

		info.setFileHash(HashUtils.getFileSHA1(apkFile));

		return ret;
	}

	private static int getIntegerValue(String text) {
		int ret = Integer.MIN_VALUE;
		try {
			// hex
			if (text.startsWith("(type 0x10)")) {
				// Integer.valueOf();
				// d893f846
				Long val = Long.parseLong(text.replace("(type 0x10)", "").replace("0x", ""), 16);
				if (val > Integer.MAX_VALUE) {
					ret = Integer.MAX_VALUE;
				} else {
					ret = Integer.parseInt(text.replace("(type 0x10)", "").replace("0x", ""), 16);
				}
			} else {
				ret = Integer.parseInt(text);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	static Pattern PATTERN_STRING_VALUE = Pattern.compile("[\\\"\\\''](.+)[\\\"\\\''] \\(Raw: .+\\)");

	private static String getStringValue(String text) {
		Matcher m = PATTERN_STRING_VALUE.matcher(text);
		String ret = text;
		while (m.find()) {
			ret = m.group(1);
		}
		return ret;
	}

	static Pattern PATTERN_KEY_VALUE = Pattern.compile("([^=\\s]+)=([^=]+)([\\s]+|$)");

	public static List<Pair> getFields(String line) {
		line = line.trim();
		List<Pair> pairs = new ArrayList<Pair>();
		Matcher m = PATTERN_KEY_VALUE.matcher(line);
		while (m.find()) {
			pairs.add(new Pair(m.group(1), m.group(2)));
		}

		return pairs;
	}

	public static String runScripts(String[] args) {
		String ret = null;
		try {
			StringBuffer sb = new StringBuffer();
			Process p = Runtime.getRuntime().exec(args);
			BufferedReader bri = new BufferedReader(new InputStreamReader(p.getInputStream()));

			char[] buf = new char[4096];
			int len = 0;
			while ((len = bri.read(buf)) != -1) {
				// System.out.println(len);
				sb.append(buf, 0, len);
			}

			bri.close();
			p.waitFor();
			ret = sb.toString();
		} catch (Exception err) {
			err.printStackTrace();
		}
		return ret;
	}

	public static void main(String[] args) throws Exception {

		File target = new File(args[0]);
		if (target.isDirectory()) {
			File[] files = target.listFiles();
			System.out.println("Total file=" + files.length);
			for (File file : files) {
				if (file.isFile()) {
					ApkReaderFull reader = new ApkReaderFull(file);
					try {
						TimeoutController.execute(reader, 50000);
					} catch (TimeoutException e) {
					}
				}
			}
		} else if (target.isFile()) {
			ApkReaderFull reader = new ApkReaderFull(target);
			try {
				TimeoutController.execute(reader, 50000);
				System.out.println(reader.info);
			} catch (TimeoutException e) {
			}
		}
	}

	public boolean validateApk(ApkInfoFull info) {
		boolean ret = false;
		try {
			if (StringUtils.isEmpty(info.getPackageName()) || info.getPackageName().startsWith("@")) {
				throw new Exception("Empty package name");
			}
			// if (!ApkUtils.isValidPackageName(info.getPackageName())) {
			// throw new Exception("Invalid package name:" +
			// info.getPackageName());
			// }
			if (info.getIcon().size() == 0) {
				throw new Exception("Invalid icon size");
			}
			for (ApkIcon icon : info.getIcon()) {
				if (StringUtils.isEmpty(icon.jarPath) || icon.jarPath.startsWith("@")) {
					throw new Exception("Empty icon jarPath");
				}
				if (StringUtils.isEmpty(icon.hash)) {
					throw new Exception("Empty icon hash");
				}
			}
			if (info.getFileSize() <= 0) {
				throw new Exception("Invalid file size");
			}
			if (StringUtils.isEmpty(info.getFileHash())) {
				throw new Exception("Invalid file hash");
			}
			if (info.getVersionName() == null || info.getVersionName().startsWith("@")) {
				throw new Exception("Invalid version name");
			}
			if (info.getVersionCode() == Integer.MIN_VALUE) {
				throw new Exception("Invalid version code");
			}
			// System.out.println("FINE," + apkFile.getAbsolutePath());
			ret = true;
		} catch (Exception e) {
			// System.err.println("ERR," + e.getMessage() + "," +
			// apkFile.getAbsolutePath());
			ret = false;
		}
		return ret;
	}

	@Override
	public void run() {
		ApkInfoFull info = decode();
		validateApk(info);
	}
}
