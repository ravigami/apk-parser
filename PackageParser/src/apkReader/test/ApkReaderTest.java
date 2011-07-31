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

	public static String[] testApks = {
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.apps_20.550984",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.apps_28.701737",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.apps_5.220036",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.apps_7.237385",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.arnold_6.451444",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.arnold_6.451483",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.chuckfacts_4.412834",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.chuck_4.802095",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.chuck_4.802136",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.dirty_1.414139",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.discuss_12.347601",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.jokes_17.296779",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.jokes_18.333386",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.jokes_21.413502",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.jokes_22.418202",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.livechat_19.423048",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.love_10.469962",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.love_4.307694",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.pickup_17.357649",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.pickup_19.394850",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.pickup_22.400500",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.xmas_3.564709",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.appspot.swisscodemonkeys.yomomma_3.412173",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.baidu.search_-2147483648.179310",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.binarybulge.android.apps.keyboard.dictionaries.dutch_1.551102",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.binarybulge.android.apps.keyboard.dictionaries.french_2.527017",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.binarybulge.android.apps.keyboard.dictionaries.german_2.518478",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.binarybulge.android.apps.keyboard.dictionaries.italian_2.457462",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.binarybulge.android.apps.keyboard.dictionaries.spanish_2.518481",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.camelgames.flightdirectorlite_37.1861161",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.gfxandroid.theme.Honeybread_1.6969711",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.google.code.p.slideunlocker2d_59.142573",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.kayenko.awof_5.525344",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.kayenko.awof_6.525384",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.larvalabs.retrodefence_6.2110350",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.salantico.bac2_2.175088",
			"d__apks_d__apks_d__apks_d__apks_G__apks_com.webkey_120.1347678",
			"d__apks_d__apks_d__apks_d__apks_G__apks_de.goddchen.android.apptracker_5.112219",
			"d__apks_d__apks_d__apks_d__apks_G__apks_de.mobinauten.smsspy_8.18232",
			"d__apks_d__apks_d__apks_d__apks_G__apks_flyer.game_5.152927",
			"d__apks_d__apks_d__apks_d__apks_G__apks_hlhnp.exercise.notepad_9.21910",
			"d__apks_d__apks_d__apks_d__apks_G__apks_org.andromeo_4.446232",
			"d__apks_d__apks_d__apks_d__apks_G__apks_yuku.mp3recorder.full_8.432617" };

	public static void main(String[] args) throws IOException {

		ApkReaderTest test = new ApkReaderTest();

		boolean isDebug = false;
		if (isDebug) {
			for (int i = 0; i < 30; i++) {
				errorApks.put(i, new ArrayList<String>());
			}
			// for(String testApk:testApks){
			String tmpApk = "";
			System.out.println(tmpApk);
			int errC = basicTest(tmpApk);
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

		File[] files = (new File(args[0])).listFiles();
		int count = 0;
		for (File file : files) {

			String fileName = file.getAbsolutePath();
			System.out.println((count++) + "." + fileName);

			int errCode;
			if ((errCode = basicTest(fileName)) != APKInfo.FINE) {
				System.err.println("Basic Invalid apk " + fileName
						+ ". Error code:" + errCode);
			} else if ((errCode = test.testApk(fileName)) != APKInfo.FINE) {
				System.err.println("Invalid apk " + fileName + ". Error code:"
						+ errCode);
			}

			if (APKInfo.BAD_JAR == errCode || APKInfo.BAD_CERT == errCode) {
				boolean success = (new File(file.getAbsolutePath())).renameTo(new File("d:\\fail\\"
						+ file.getName()));
				if (!success) {
					System.err.println(fileName);
				}
			} else if (APKInfo.FINE == errCode) {
				boolean success = file.renameTo(new File("d:\\fin\\"
						+ file.getName()));
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

	public static int basicTest(String apkPath) throws IOException {
		int ret = APKInfo.FINE;
		JarFile apkJar = null;
		try {
			int errCode = APKInfo.FINE;
			apkJar = new JarFile(apkPath, true);
			if ((errCode = verify(apkJar)) != APKInfo.FINE)
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
				apkJar.close();
				apkJar = null;
			}
			System.gc();
		}
		return ret;
	}

	private static int verify(JarFile jar) throws IOException {
		int ret = APKInfo.FINE;

		int count = 0;
		byte[] buf = new byte[2048];
		Enumeration<JarEntry> entries = jar.entries();
		while (entries.hasMoreElements()) {
			JarEntry entry = entries.nextElement();

			try {
				InputStream is = jar.getInputStream(entry);
				while ((count = is.read(buf)) != -1)
					;
			} catch (SecurityException se) {
				ret = APKInfo.BAD_JAR;
				break;
			}
		}
		return ret;
	}
}
