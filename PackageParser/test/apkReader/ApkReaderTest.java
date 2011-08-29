package apkReader;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Set;

import apkReader.ApkInfo;
import apkReader.ApkReader;

public class ApkReaderTest {

	public static String APK_FOLDER = "";
	public static String SUCCESS_FOLDER = "";
	public static String FAILED_FOLDER = "";
	public static String TODO_FOLDER = "";

	public static Hashtable<Integer, List<String>> errorApks = new Hashtable<Integer, List<String>>();

	public int testApk(String apkPath) {
		ApkReader apkReader = new ApkReader();
		ApkInfo apkInfo = new ApkInfo();

		int errCode = apkReader.read(apkPath, apkInfo);
		return errCode;
	}

	public static void main(String[] args) throws IOException {
		APK_FOLDER = "T:\\apks\\fin";

		for (int i = 0; i < 20; i++) {
			errorApks.put(i, new ArrayList<String>());
		}

		ApkReaderTest test = new ApkReaderTest();

		File[] files = (new File(APK_FOLDER)).listFiles();
		int count = 0;
		int errCode;
		for (File file : files) {
			String fileName = file.getAbsolutePath();
			System.out.println((count++) + "." + fileName);

			errCode = test.testApk(fileName);

			List<String> fs = errorApks.get(errCode);
			fs.add(file.getAbsolutePath());
			errorApks.put(errCode, fs);
			if (ApkInfo.FINE != errCode) {
//				boolean success = file.renameTo(new File(SUCCESS_FOLDER
//						+ file.getName() + file.getName().hashCode()));
//				if (!success) {
					System.err.println(fileName);
//				}
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
