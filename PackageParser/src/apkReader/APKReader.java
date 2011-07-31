package apkReader;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
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

;

public class APKReader {
	private static final Logger log = Logger.getLogger("APKReader");

	static final int BUFFER = 2048;

	private static final int VER_ID = 0;
	private static final int ICN_ID = 1;
	String[] VER_ICN = new String[2];

	String[] TAGS = { "manifest", "application", "activity" };
	String[] ATTRS = { "android:", "a:", "activity:", "_:" };

	public String fuzzFindInDocument(Document doc, String tag, String attr) {
		String ret = null;

		for (String t : TAGS) {
			for (String a : ATTRS) {
				ret = FindInDocument(doc, t, a + attr);
				if (ret != null)
					return ret;
			}
		}
		log.log(Level.WARNING, attr + " null");
		return null;
	}

	public String fuzzFindInDocument2(Document doc, String tag, String attr) {
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

	private void extractSupportScreen(APKInfo info, Document doc) {
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

	public APKInfo ReadInfo(String fileName, APKInfo info) throws Exception {
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
			extractSupportScreen(info, doc);

			if (info.versionCode == null)
				info.versionCode = fuzzFindInDocument2(doc, "manifest",
						"versionCode");

			if (info.versionName == null)
				info.versionName = fuzzFindInDocument2(doc, "manifest",
						"versionName");
			else if (info.versionName.startsWith("@"))
				VER_ICN[VER_ID] = info.versionName;

			String id = FindInDocument(doc, "application", "android:icon");
			if (null == id) {
				id = fuzzFindInDocument2(doc, "manifest", "icon");
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
							if (iconFileName != null) {
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
					// else
					// return null;
				}
			}
		}
		return null;
	}

	public APKInfo read(String file, APKInfo info) throws Exception {

		// APKInfo info = new APKInfo();
		// BufferedOutputStream dest = null;
		FileInputStream fis = new FileInputStream(file);
		ZipInputStream zis = new ZipInputStream(new BufferedInputStream(fis));

		// generate temp files
		if (info.iconFileName == null || info.iconFileName.length() == 0)
			info.iconFileName = GetTempFile("apktemp_", ".png");

		if (info.mfCertFileName == null || info.mfCertFileName.length() == 0)
			info.mfCertFileName = GetTempFile("apktemp_", ".MF");

		if (info.rsaCertFileName == null || info.rsaCertFileName.length() == 0)
			info.rsaCertFileName = GetTempFile("apktemp_", ".RSA");

		if (info.sfCertFileName == null || info.sfCertFileName.length() == 0)
			info.sfCertFileName = GetTempFile("apktemp_", ".SF");

		String packedXMLFile = GetTempFile("apktemp_", ".xml");
		String unzippedXMLFile = GetTempFile("apktemp_", ".xml");

		ZipEntry entry;
		String XMLfile;

		while ((entry = zis.getNextEntry()) != null) {
			if (info.rsaCertFileBytes == null)
				info.rsaCertFileBytes = extractBytes(zis, entry, "META-INF/",
						".RSA");
			if (info.rsaCertFileBytes == null)
				info.rsaCertFileBytes = extractBytes(zis, entry, "META-INF/",
						".DSA");
			if (info.sfCertFileBytes == null)
				info.sfCertFileBytes = extractBytes(zis, entry, "META-INF/",
						".SF");
			if (info.mfcCertFileBytes == null)
				info.mfcCertFileBytes = extractBytes(zis, entry, "META-INF/",
						".MF");
			if (info.manifestFileBytes == null)
				info.manifestFileBytes = extractBytes(zis, entry, "resources",
						".arsc");

			extractFile(zis, entry, "AndroidManifest.xml", packedXMLFile);
		}
		zis.close();
		fis.close();

		// extract html

		XMLfile = AXMLPrinter.getString(packedXMLFile);

		File destFile = new File(unzippedXMLFile);

		FileWriter fileToWrite = new FileWriter(destFile, true);

		fileToWrite.write(XMLfile.replace("&", "&amp;"));

		fileToWrite.flush();
		fileToWrite.close();

		ReadInfo(unzippedXMLFile, info);
		if (!info.hasIcon) {
			fis = new FileInputStream(file);
			zis = new ZipInputStream(new BufferedInputStream(fis));

			while ((entry = zis.getNextEntry()) != null) {
				if (extractFile(zis, entry, info.iconFileNameToGet,
						info.iconFileName) > 0)
					info.hasIcon = true;
			}
			zis.close();
			fis.close();
		}

//		destFile.delete();
//		File xmlSrc = new File(packedXMLFile);
//		xmlSrc.delete();

		// System.out.println("Read Success!");
		return info;

	}

	private byte[] extractBytes(ZipInputStream zis, ZipEntry entry,
			String nameInPackagePrefix, String nameInPackagePostFix)
			throws FileNotFoundException, IOException {
		int count, totalLength = 0;
		byte data[] = new byte[BUFFER];
		byte res[] = new byte[BUFFER];

		// System.out.println(entry.getName().substring(0,
		// nameInPackagePrefix.length()));
		// System.out.println(entry.getName().substring(entry.getName().length()
		// - nameInPackagePostFix.length()));

		if (entry.getName().length() <= nameInPackagePostFix.length()
				|| entry.getName().length() <= nameInPackagePrefix.length())
			return null;

		// System.out.println(String.format("%s %d %d", entry.getName(),
		// entry.getName().length(), nameInPackagePostFix.length()));
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
			// System.out.println(entry.getName());
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

}
