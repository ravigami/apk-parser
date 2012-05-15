package controllers.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

import models.app.ApkInfoFull;
import models.app.JarEntryInfo;

import org.apache.commons.lang.StringUtils;

public class ApkUtils {
	private static final Logger log = Logger.getLogger(ApkUtils.class.getName());

	public static int BUFFER = 2048;
	public static String HASH_ALGO = "SHA-512";
	public static String APKINFO_NAME = "apkinfo.dat";

	private static String MANIFEST = "AndroidManifest.xml";
	private static String RESOURCE = "resources.arsc";
	private static String DEX = "classes.dex";
	private static String CERTIFICATE = "META-INF/MANIFEST.MF";

	/*
	 * If this apk file is a zip which contains one or more REAL apks, it should
	 * extract some or all of them TODO enhance it for more complex condition
	 * (e.g. check the header of the file)
	 */
	public static List<File> extractApks(File apkFile) {
		return extractApks(apkFile.getAbsolutePath());
	}

	public static List<File> extractApks(String zipPath) {
		List<File> ret = new ArrayList<File>();
		try {
			ZipInputStream zipinputstream = null;
			ZipEntry zipentry;
			zipinputstream = new ZipInputStream(new FileInputStream(zipPath));

			zipentry = zipinputstream.getNextEntry();
			while (zipentry != null) {
				// for each entry to be extracted
				String entryName = zipentry.getName();
				if (entryName.endsWith(".apk")) {
					int n;
					byte[] buf = new byte[BUFFER];
					File tmpFile = File.createTempFile("apktmp_", ".apk");
					FileOutputStream fileoutputstream;
					File newFile = new File(entryName);
					String directory = newFile.getParent();

					if (directory == null) {
						if (newFile.isDirectory())
							break;
					}

					fileoutputstream = new FileOutputStream(tmpFile);

					while ((n = zipinputstream.read(buf, 0, BUFFER)) > -1)
						fileoutputstream.write(buf, 0, n);

					fileoutputstream.close();
					zipinputstream.closeEntry();

					ZipFile jar = new ZipFile(tmpFile);
					if (jar.getEntry("AndroidManifest.xml") != null) {
						ret.add(tmpFile);
					}
				}
				zipentry = zipinputstream.getNextEntry();
			}// while

			zipinputstream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	public static void storageApkInfo(ApkInfoFull apkInfo, File apkDir) throws IOException {
		if (apkInfo == null)
			return;
		FileOutputStream fos = new FileOutputStream(new File(apkDir, APKINFO_NAME));
		ObjectOutputStream oos = new ObjectOutputStream(fos);
		oos.writeObject(apkInfo);
		oos.close();
		fos.close();
	}

	public static synchronized boolean validateApk2(String apkPath) {
		boolean ret = false;
		InputStream inputStream = null;
		try {
			inputStream = new FileInputStream(apkPath);
			byte buf[] = new byte[2];
			int len = inputStream.read(buf);
			if (len != 2)
				ret = false;
			else if (!(buf[0] == 80 && buf[1] == 75))
				ret = false;
			else
				ret = true;
		} catch (Exception e) {
			e.printStackTrace();
			ret = false;
		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return ret;
	}

	public static boolean validateApk(File apkFile) {
		return validateApk(apkFile.getAbsolutePath());
	}

	public static boolean validateApk(String apkPath) {
		boolean ret = false;
		JarFile apkJar = null;
		try {
			apkJar = new JarFile(apkPath);
			if (apkJar.getJarEntry(MANIFEST) == null || (apkJar.getJarEntry(RESOURCE) == null)
					|| (apkJar.getJarEntry(DEX) == null) || (apkJar.getJarEntry(CERTIFICATE) == null))
				ret = false;
			else
				ret = true;
		} catch (Exception e) {
			ret = false;
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

	public static String ICON_PREFIX_DEFAULT = "res/drawable";

	public static List<String> getIconPaths(ApkInfoFull info, String iconPath) {
		List<String> ret = new ArrayList<String>();

		if (iconPath == null || iconPath.toLowerCase().equals("null") || iconPath.equals(""))
			return ret;

		int splitPos = iconPath.lastIndexOf("/");
		// String iconDir = iconPath.substring(0, splitPos);
		String iconName = iconPath.substring(splitPos + 1);

		for (JarEntryInfo entry : info.getEntries()) {
			if (entry.name.startsWith(ICON_PREFIX_DEFAULT) && entry.name.endsWith(iconName)) {
				ret.add(iconPath);
			}
		}

		return ret;
	}

	public static String getEntryHash(File zipFile, String entryName) {
		return getEntryHash(zipFile, entryName, "SHA1");
	}

	public static boolean extractEntryFile(File zipFile, String entryName, File outputFile) {
		boolean ret = false;
		ReadableByteChannel rbc = null;
		InputStream is = null;
		FileOutputStream fos = null;
		ZipFile zip = null;

		try {
			zip = new ZipFile(zipFile);
			ZipEntry entry = zip.getEntry(entryName);
			if (entry != null) {
				is = zip.getInputStream(entry);
				fos = new FileOutputStream(outputFile);

				rbc = Channels.newChannel(is);
				fos.getChannel().transferFrom(rbc, 0, 1 << 24);
				fos.flush();

				ret = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			ret = false;
		} finally {
			if (is != null) {
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (rbc != null) {
				try {
					rbc.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (zip != null) {
				try {
					zip.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return ret;
	}

	public static String getEntryHash(File zipFile, String entryName, String algo) {
		String ret = null;
		try {
			ZipFile zip = new ZipFile(zipFile);
			ZipEntry entry = zip.getEntry(entryName);
			if (entry == null)
				return null;
			InputStream is = zip.getInputStream(entry);
			MessageDigest digester = MessageDigest.getInstance(algo);

			int numRead = 0;
			byte[] buffer = new byte[BUFFER];
			while (numRead != -1) {
				numRead = is.read(buffer);
				if (numRead > 0) {
					digester.update(buffer, 0, numRead);
				}
			}
			is.close();
			ret = HashUtils.asHex(digester.digest());
		} catch (Exception e) {
			e.printStackTrace();
			ret = null;
		}
		return ret;
	}

	static Pattern VALID_PACKAGENAME_PATTERN = Pattern.compile("([a-z_]{1}[a-z0-9_]*(\\.[a-z_]{1}[a-z0-9_]*)*)");

	public static boolean isValidPackageName(String pn) {
		if (StringUtils.isEmpty(pn)) {
			return false;
		}
		Matcher m = VALID_PACKAGENAME_PATTERN.matcher(pn);
		if (m.matches()) {
			return true;
		}
		return false;
	}

}
