package apkReader.test;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;

import apkReader.APKInfo;
import apkReader.APKReader;

public class ApkReaderTest {

	public static String APK_FOLDER = "";
	public static String SUCCESS_FOLDER = "";
	public static String FAILED_FOLDER = "";
	public static String TODO_FOLDER = "";

	public static Hashtable<Integer, List<String>> errorApks = new Hashtable<Integer, List<String>>();

	public int testApk(String apkPath) {
		int ret = APKInfo.FINE;
		APKReader apkReader = new APKReader();
		APKInfo apkInfo = new APKInfo();
		String filePath = apkPath;
		try {
			apkReader.read(filePath, apkInfo);
			int errCode;
			if ((errCode = apkInfo.isValid()) != APKInfo.FINE) {
				ret = errCode;
			}
		} catch (Exception e) {
			e.printStackTrace();
			ret = APKInfo.BAD_READ_INFO;
		}
		System.out.println(apkInfo);
		return ret;
	}

	public static void main(String[] args) throws IOException {
		APK_FOLDER = args[0];
		SUCCESS_FOLDER = "T:\\apks\\fin\\";
		FAILED_FOLDER = "T:\\apks\\fail\\";
		TODO_FOLDER = "";
		for (int i = 0; i < 30; i++) {
			errorApks.put(i, new ArrayList<String>());
		}

		ApkReaderTest test = new ApkReaderTest();

		boolean isDebug = false;
		if (isDebug) {
			// for(String testApk:testApks){
			String tmpApk = "";
			System.out.println(tmpApk);
			int errC = APKReader.basicTest(tmpApk);
			if (errC != APKInfo.FINE) {
				System.err.println(errC);
				return;
			}
			errC = test.testApk(tmpApk);
			if (errC != APKInfo.FINE) {
				System.err.println(errC);
			}
			// }
			return;
		}

		File[] files = (new File(APK_FOLDER)).listFiles();
		int count = 0;
		int errCode;
		for (File file : files) {

			String fileName = file.getAbsolutePath();
			System.out.println((count++) + "." + fileName);

//			if ((errCode = APKReader.basicTest(fileName)) != APKInfo.FINE) {
//				System.out.println("Basic Invalid apk " + fileName
//						+ ". Error code:" + errCode);
//			}
//			 else if (
			errCode = test.testApk(fileName);
//			 System.out.println("Invalid apk " + fileName + ". Error code:"
//			 + errCode);
//			 }
			
			List<String> fs=errorApks.get(errCode);
			fs.add(file.getAbsolutePath());
			errorApks.put(errCode, fs);

//			if (APKInfo.NULL_MANIFEST == errCode || APKInfo.BAD_JAR == errCode
//					|| APKInfo.BAD_CERT == errCode) {
//				boolean success = (new File(file.getAbsolutePath()))
//						.renameTo(new File(FAILED_FOLDER + file.getName()));
//				if (!success) {
//					System.err.println(fileName);
//				}
//			} else 
			if (APKInfo.FINE == errCode) {
				boolean success = file.renameTo(new File(SUCCESS_FOLDER
						+ file.getName() + file.getName().hashCode()));
				if (!success) {
					System.err.println(fileName);
				}
			}
		}
		printResult();
	}

	public static void printResult() {
		Set<Integer> errs = errorApks.keySet();
		for (int err : errs) {
			List<String> apks = errorApks.get(err);
			System.out.println(err + "(" + apks.size() + "):");
			for (String apk : apks) {
				System.out.println(apk);
			}
			System.out.println();
		}
	}

}
