package apkReader;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import android.content.res.AXMLPrinter;

public class APKReader {
	private static final Logger log = Logger.getLogger("APKReader");

	static final int BUFFER = 2048;

	private static final int VER_ID = 0;
	private static final int ICN_ID = 1;
	String[] VER_ICN = new String[2];

	// Some possible tags and attributes
	String[] TAGS = { "manifest", "application", "activity" };
	String[] ATTRS = { "android:", "a:", "activity:", "_:" };

	public List<String> entryList = new ArrayList<String>();

	public String fuzzFindInDocument(Document doc, String tag, String attr) {
		for (String t : TAGS) {
			NodeList nodelist = doc.getElementsByTagName(t);
			for (int i = 0; i < nodelist.getLength(); i++) {
				Node element = (Node) nodelist.item(i);
				if (element.getNodeType() == Document.ELEMENT_NODE) {
					NamedNodeMap map = element.getAttributes();
					for (int j = 0; j < map.getLength(); j++) {
						Node element2 = map.item(j);
						if (element2.getNodeName().endsWith(attr)) {
							return element2.getNodeValue();
						}
					}
				}
			}
		}
		return null;
	}

	private Document initDoc(String fileName) {
		DocumentBuilder docBuilder;
		Document doc = null;
		try {
			DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory
					.newInstance();
			docBuilder = docBuilderFactory.newDocumentBuilder();
			doc = docBuilder.parse(new File(fileName));
			doc.getDocumentElement().normalize();
		} catch (ParserConfigurationException e) {
			doc = null;
			e.printStackTrace();
		} catch (SAXException e) {
			doc = null;
			e.printStackTrace();
		} catch (IOException e) {
			doc = null;
			e.printStackTrace();
		}
		return doc;
	}

	private void extractPermissions(APKInfo info, Document doc) {
		ExtractPermission(info, doc, "uses-permission", "android:name");
		ExtractPermission(info, doc, "permission-group", "android:name");
		ExtractPermission(info, doc, "service", "android:permission");
		ExtractPermission(info, doc, "provider", "android:permission");
		ExtractPermission(info, doc, "activity", "android:permission");
	}

	private boolean readBoolean(Document doc, String tag, String attribute) {
		String str = FindInDocument(doc, tag, attribute);
		boolean ret = false;
		try {
			ret = Boolean.valueOf(str);
		} catch (Exception e) {
			ret = false;
		}
		return ret;
	}

	private void extractSupportScreens(APKInfo info, Document doc) {
		info.supportSmallScreens = readBoolean(doc, "supports-screens",
				"android:smallScreens");
		info.supportNormalScreens = readBoolean(doc, "supports-screens",
				"android:normalScreens");
		info.supportLargeScreens = readBoolean(doc, "supports-screens",
				"android:largeScreens");

		if (info.supportSmallScreens || info.supportNormalScreens
				|| info.supportLargeScreens)
			info.supportAnyDensity = false;
	}

	public APKInfo extractInfo(String fileName, APKInfo info) throws Exception {
		VER_ICN[VER_ID] = "";
		VER_ICN[ICN_ID] = "";
		try {
			Document doc = initDoc(fileName);
			if (doc == null)
				throw new Exception("Document initialize failed");

			// Fill up the permission field
			extractPermissions(info, doc);

			// Fill up some basic fields
			info.minSdkVersion = FindInDocument(doc, "uses-sdk",
					"android:minSdkVersion");
			info.targetSdkVersion = FindInDocument(doc, "uses-sdk",
					"android:targetSdkVersion");
			info.versionCode = FindInDocument(doc, "manifest",
					"android:versionCode");
			info.versionName = FindInDocument(doc, "manifest",
					"android:versionName");
			info.packageName = FindInDocument(doc, "manifest", "package");

			// Fill up the support screen field
			extractSupportScreens(info, doc);

			if (info.versionCode == null)
				info.versionCode = fuzzFindInDocument(doc, "manifest",
						"versionCode");

			if (info.versionName == null)
				info.versionName = fuzzFindInDocument(doc, "manifest",
						"versionName");
			else if (info.versionName.startsWith("@"))
				VER_ICN[VER_ID] = info.versionName;

			String id = FindInDocument(doc, "application", "android:icon");
			if (null == id) {
				id = fuzzFindInDocument(doc, "manifest", "icon");
			}

			if (null == id) {
				System.err.println("icon resId Not Found!");
				return info;
			}

			// Find real strings
			if (!info.hasIcon && id != null) {
				if (id.startsWith("@android:"))
					VER_ICN[ICN_ID] = "@"
							+ (id.substring("@android:".length()));
				else
					VER_ICN[ICN_ID] = id;

				ArrayList<String> resId = new ArrayList<String>();

				for (int i = 0; i < VER_ICN.length; i++) {
					if (VER_ICN[i].startsWith("@"))
						resId.add(VER_ICN[i]);
				}

				ResourceFinder finder = new ResourceFinder();

				ByteBuffer bb = ByteBuffer.wrap(info.manifestFileBytes);
				bb.order(ByteOrder.LITTLE_ENDIAN);

				Map<String, ArrayList<String>> response = finder
						.processResourceTable(bb, resId);

				if (!VER_ICN[VER_ID].equals("")) {
					ArrayList<String> versions = response.get(VER_ICN[VER_ID]
							.toUpperCase());
					if (versions != null) {
						if (versions.size() > 0)
							info.versionName = versions.get(0);
					} else {
						throw new Exception(
								"VersionName Cant Find in resource with id "
										+ VER_ICN[VER_ID]);
					}
				}

				ArrayList<String> iconPaths = response.get(VER_ICN[ICN_ID]
						.toUpperCase());
				if (iconPaths != null) {
					if (iconPaths.size() > 0)
						// TODO For every icon in the file
						for (String iconFileName : iconPaths) {
							if (iconFileName != null
									&& entryList.contains(iconFileName)) {
								info.iconFileNameToGet = iconFileName;
								break;
							}
						}
					// .get(iconPaths.size() - 1);
				} else {
					throw new Exception("Icon Cant Find in resource with id "
							+ VER_ICN[ICN_ID]);
				}

			}

		} catch (Exception e) {
			log.log(Level.SEVERE, "Error in APKReader", e);
			throw e;
		}
		return info;
	}

	private void ExtractPermission(APKInfo info, Document doc, String keyName,
			String attribName) {
		NodeList usesPermissions = doc.getElementsByTagName(keyName);
		if (usesPermissions != null) {
			for (int s = 0; s < usesPermissions.getLength(); s++) {
				Node permissionNode = usesPermissions.item(s);
				if (permissionNode.getNodeType() == Node.ELEMENT_NODE) {
					Node node = permissionNode.getAttributes().getNamedItem(
							attribName);
					if (node != null)
						info.Permissions.add(node.getNodeValue());
				}
			}
		}
	}

	private String FindInDocument(Document doc, String keyName,
			String attribName) {
		NodeList usesPermissions = doc.getElementsByTagName(keyName);

		if (usesPermissions != null) {
			for (int s = 0; s < usesPermissions.getLength(); s++) {
				Node permissionNode = usesPermissions.item(s);
				if (permissionNode.getNodeType() == Node.ELEMENT_NODE) {
					Node node = permissionNode.getAttributes().getNamedItem(
							attribName);
					if (node != null)
						return node.getNodeValue();
				}
			}
		}
		return null;
	}

	private int extractFiles(String apkPath, APKInfo info) {
		int errorCode = APKInfo.BAD_READ_INFO;
		try {
			FileInputStream fis = new FileInputStream(apkPath);
			ZipInputStream zis = new ZipInputStream(
					new BufferedInputStream(fis));
			info.manifestFileName = null;

			// Generate temp files
			if (info.iconFileName == null || info.iconFileName.length() == 0)
				info.iconFileName = GetTempFile("apktemp_", ".png");

			if (info.mfCertFileName == null
					|| info.mfCertFileName.length() == 0)
				info.mfCertFileName = GetTempFile("apktemp_", ".MF");

			if (info.rsaCertFileName == null
					|| info.rsaCertFileName.length() == 0)
				info.rsaCertFileName = GetTempFile("apktemp_", ".RSA");

			if (info.sfCertFileName == null
					|| info.sfCertFileName.length() == 0)
				info.sfCertFileName = GetTempFile("apktemp_", ".SF");

			String packedXMLFile = GetTempFile("apktemp_", ".xml");
			String unzippedXMLFile = GetTempFile("apktemp_", ".xml");

			ZipEntry entry;
			String rawXMl;
			String xml = "";

			while ((entry = zis.getNextEntry()) != null) {
				if (info.rsaCertFileBytes == null)
					info.rsaCertFileBytes = extractBytes(zis, entry,
							"META-INF/", ".RSA");
				if (info.rsaCertFileBytes == null)
					info.rsaCertFileBytes = extractBytes(zis, entry,
							"META-INF/", ".DSA");
				if (info.sfCertFileBytes == null)
					info.sfCertFileBytes = extractBytes(zis, entry,
							"META-INF/", ".SF");
				if (info.mfcCertFileBytes == null)
					info.mfcCertFileBytes = extractBytes(zis, entry,
							"META-INF/", ".MF");
				if (info.manifestFileBytes == null)
					info.manifestFileBytes = extractBytes(zis, entry,
							"resources", ".arsc");

				extractFile(zis, entry, "AndroidManifest.xml", packedXMLFile);
			}
			zis.close();
			fis.close();

			// extract html
			rawXMl = AXMLPrinter.getString(packedXMLFile);
			File destFile = new File(unzippedXMLFile);
			FileWriter fileToWrite = new FileWriter(destFile, true);

			/* Dealing with ugly content */
			for (String line : rawXMl.split("\n")) {
				/* Deal with invalid character & */
				line = line.replace("&", "&amp;");
				/* Deal with android:versionName="1.0.3.7-969a */
				line = line.replace((char) 0, ' ');
				/* Deal with versionName="0.1.8 "Archer"" */
				int charCount = line.replaceAll("[^\"]", "").length();

				if (charCount > 2 && !line.contains("xml version")
						&& line.endsWith("\"")) {
					Pattern p = Pattern.compile("(.+[\\w:=]+)\\\"(.+)\\\"");
					Matcher m = p.matcher(line);
					if (m.find()) {
						line = m.group(1) + '"' + m.group(2).replace('"', '\'')
								+ '"';
					}
				}
				xml += line + "\n";
			}

			fileToWrite.write(xml);
			fileToWrite.flush();
			fileToWrite.close();
			log.log(Level.INFO, "Success extract AndroidManifest.xml,"
					+ apkPath + "," + destFile);
			info.manifestFileName = unzippedXMLFile;

			if (info.manifestFileName != null)
				extractInfo(info.manifestFileName, info);

			// Extract icon file
			if (!info.hasIcon) {
				fis = new FileInputStream(apkPath);
				zis = new ZipInputStream(new BufferedInputStream(fis));

				while ((entry = zis.getNextEntry()) != null) {
					if (extractFile(zis, entry, info.iconFileNameToGet,
							info.iconFileName) > 0)
						info.hasIcon = true;
				}
				zis.close();
				fis.close();
			}
			errorCode = info.isValid();
		} catch (Exception e) {
			e.printStackTrace();
			errorCode = APKInfo.BAD_READ_INFO;
		}
		return errorCode;
	}

	private byte[] extractBytes(ZipInputStream zis, ZipEntry entry,
			String nameInPackagePrefix, String nameInPackagePostFix)
			throws FileNotFoundException, IOException {
		int count, totalLength = 0;
		byte data[] = new byte[BUFFER];
		byte res[] = new byte[BUFFER];

		if (entry.getName().length() <= nameInPackagePostFix.length()
				|| entry.getName().length() <= nameInPackagePrefix.length())
			return null;

		if (entry.getName().substring(0, nameInPackagePrefix.length())
				.equals(nameInPackagePrefix)
				&& entry.getName()
						.substring(
								entry.getName().length()
										- nameInPackagePostFix.length())
						.equals(nameInPackagePostFix)) {
			while ((count = zis.read(data, 0, BUFFER)) != -1) {
				totalLength += count;
				byte tmp[] = new byte[res.length];
				for (int i = 0; i < res.length; i++) {
					tmp[i] = res[i];
				}
				res = new byte[totalLength];
				for (int i = 0; i < totalLength; i++) {
					if (i < (totalLength - count)) {
						res[i] = tmp[i];
					} else {
						res[i] = data[i + count - totalLength];
					}
				}
			}
			return res;
		} else
			return null;
	}

	private int extractFile(ZipInputStream zis, ZipEntry entry,
			String nameInPackage, String destFile)
			throws FileNotFoundException, IOException {
		BufferedOutputStream dest;
		int count, totalLength = 0;
		byte data[] = new byte[BUFFER];

		if (entry.getName().equals(nameInPackage)) {
			FileOutputStream fos = new FileOutputStream(destFile);
			dest = new BufferedOutputStream(fos, BUFFER);
			while ((count = zis.read(data, 0, BUFFER)) != -1) {
				dest.write(data, 0, count);
				totalLength += count;
			}
			dest.flush();
			dest.close();
		}

		return totalLength;
	}

	private String GetTempFile(String prefix, String postfix)
			throws IOException, IllegalArgumentException, SecurityException {
		File iconFile = File.createTempFile(prefix, postfix);
		iconFile.delete();
		return iconFile.getPath();
	}

	public int verifyJar(String apkPath) {
		int ret = APKInfo.FINE;
		JarFile apkJar = null;
		try {
			int errCode = APKInfo.FINE;
			apkJar = new JarFile(apkPath, true);
			if ((errCode = verifySig(apkJar)) != APKInfo.FINE)
				ret = errCode;
			else if (apkJar.getJarEntry("AndroidManifest.xml") == null)
				ret = APKInfo.NULL_MANIFEST;
			else if (apkJar.getJarEntry("resources.arsc") == null)
				ret = APKInfo.NULL_RESOURCES;
			else if (apkJar.getJarEntry("classes.dex") == null)
				ret = APKInfo.NULL_DEX;
			else if (apkJar.getJarEntry("META-INF/MANIFEST.MF") == null)
				ret = APKInfo.NULL_METAINFO;
		} catch (Exception e) {
			ret = APKInfo.BAD_JAR;
			e.printStackTrace();
		} finally {
			if (apkJar != null) {
				try {
					apkJar.close();
				} catch (IOException e) {
					log.log(Level.WARNING, e.getCause().getMessage());
					e.printStackTrace();
				}
				apkJar = null;
			}
		}
		return ret;
	}

	private int verifySig(JarFile jar) throws IOException {
		int ret = APKInfo.FINE;

		int entryCount = 0;
		byte[] buf = new byte[2048];
		Enumeration<JarEntry> entries = jar.entries();
		while (entries.hasMoreElements()) {
			JarEntry entry = entries.nextElement();
			entryList.add(entry.getName());
			entryCount++;
			InputStream is = null;
			try {
				is = jar.getInputStream(entry);
				while ((is.read(buf)) != -1)
					;
			} catch (SecurityException se) {
				ret = APKInfo.BAD_JAR;
				break;
			} finally {
				if (is != null)
					is.close();
			}
		}
		log.log(Level.FINE, "Entry count:" + entryCount);
		return ret;
	}

	public int read(String apkPath, APKInfo info) {
		// Verify a valid jar file
		int errCode = verifyJar(apkPath);
		if (!(errCode == APKInfo.FINE))
			return errCode;

		// Extract all file needed
		if (info == null)
			info = new APKInfo();
		return extractFiles(apkPath, info);

		// destFile.delete();
		// File xmlSrc = new File(packedXMLFile);
		// xmlSrc.delete();

		// System.out.println("Read Success!");

	}
}
