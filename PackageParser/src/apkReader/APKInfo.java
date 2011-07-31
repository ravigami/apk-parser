package apkReader;

import java.util.*;

public class APKInfo {

	public static int FINE = 0;
	public static int NULL_VERSION_CODE = 1;
	public static int NULL_VERSION_NAME = 2;
	public static int NULL_PERMISSION = 3;
	public static int NULL_ICON = 4;
	public static int NULL_CERT_FILE = 5;
	public static int BAD_CERT = 6;
	public static int NULL_SF_FILE = 7;
	public static int BAD_SF = 8;
	public static int NULL_MANIFEST = 9;
	public static int NULL_RESOURCES = 10;
	public static int NULL_DEX = 13;
	public static int NULL_METAINFO = 14;
	public static int BAD_JAR = 11;
	public static int BAD_READ_INFO = 12;
	public static int NULL_FILE = 15;
	public static int HAS_REF = 16;

	public String versionName;
	public String versionCode;
	public String minSdkVersion;
	public String targetSdkVersion;
	public String packageName;
	public List<String> Permissions;
	public String iconFileName;
	public String iconFileNameToGet;
	public String rsaCertFileName;
	public byte[] rsaCertFileBytes;
	public String sfCertFileName;
	public byte[] sfCertFileBytes;
	public String mfCertFileName;
	public byte[] mfcCertFileBytes;
	public byte[] manifestFileBytes;
	public boolean hasIcon;
	public boolean supportSmallScreens;
	public boolean supportNormalScreens;
	public boolean supportLargeScreens;
	public boolean supportAnyDensity;

	public static boolean supportSmallScreen(byte[] dpi) {
		if (dpi[0] == 1)
			return true;
		return false;
	}

	public static boolean supportNormalScreen(byte[] dpi) {
		if (dpi[1] == 1)
			return true;
		return false;
	}

	public static boolean supportLargeScreen(byte[] dpi) {
		if (dpi[2] == 1)
			return true;
		return false;
	}

	public byte[] getDPI() {
		byte[] dpi = new byte[3];
		if (this.supportAnyDensity) {
			dpi[0] = 1;
			dpi[1] = 1;
			dpi[2] = 1;
		} else {
			if (this.supportSmallScreens)
				dpi[0] = 1;
			if (this.supportNormalScreens)
				dpi[1] = 1;
			if (this.supportLargeScreens)
				dpi[2] = 1;
		}
		return dpi;
	}

	public APKInfo() {
		hasIcon = false;
		supportSmallScreens = false;
		supportNormalScreens = false;
		supportLargeScreens = false;
		supportAnyDensity = true;
		versionCode = null;
		versionName = null;
		iconFileName = null;
		iconFileNameToGet = null;
		rsaCertFileName = null;
		sfCertFileName = null;
		mfCertFileName = null;

		Permissions = new ArrayList<String>();
	}

	public String toString() {
		return "versionCode\t" + versionCode + "\r\n" + "versionName\t"
				+ versionName + "\r\n" + "Permissions\t" + Permissions + "\r\n"
				+ "iconFileName\t" + iconFileName + "\r\n"
				+ "iconFileNameToGet\t" + iconFileNameToGet + "\r\n"
				+ "rsaCertFileName\t" + rsaCertFileName + "\r\n"
				+ "sfCertFileName\t" + sfCertFileName + "\r\n"
				+ "mfCertFileName\t" + mfCertFileName + "\r\n"
				+ "supportSmallScreens\t" + supportSmallScreens + "\r\n"
				+ "supportNormalScreens\t" + supportNormalScreens + "\r\n"
				+ "supportLargeScreens\t" + supportLargeScreens + "\r\n"
				+ "supportAnyDensity\t" + supportAnyDensity + "\r\n"
				+ "hasIcon\t" + hasIcon + "\r\n";
	}

	private boolean isReference(String str) {
		try {
			if (str != null && str.startsWith("@")) {
				Integer.valueOf(str, 16);
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean hasReference() {
		if (isReference(versionCode) || isReference(versionName)
				|| isReference(iconFileNameToGet))
			return true;
		else
			return false;
	}

	public int isValid() {
		if (hasReference()) {
			return HAS_REF;
		} else if (versionCode == null) {
			return NULL_VERSION_CODE;
		} else if (versionName == null) {
			return NULL_VERSION_NAME;
		} else if (Permissions == null) {
			return NULL_PERMISSION;
		} else if (iconFileName == null) {
			return NULL_ICON;
		} else if (iconFileNameToGet == null) {
			return NULL_ICON;
		} else if (rsaCertFileName == null) {
			return NULL_CERT_FILE;
		} else if (rsaCertFileBytes == null) {
			return BAD_CERT;
		} else if (sfCertFileName == null) {
			return NULL_SF_FILE;
		} else if (sfCertFileBytes == null) {
			return BAD_SF;
		} else if (mfCertFileName == null) {
			return NULL_CERT_FILE;
		} else if (mfcCertFileBytes == null) {
			return BAD_CERT;
		} else if (manifestFileBytes == null) {
			return NULL_MANIFEST;
		} else if (hasIcon == false) {
			return NULL_ICON;
		}

		return FINE;
	}
}
