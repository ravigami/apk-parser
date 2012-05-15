package controllers;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import models.app.ApkInfoFull;
import models.app.JarEntryInfo;
import play.mvc.Controller;
import play.test.Fixtures;
import controllers.job.ApkReaderJob;

public class Application extends Controller {

	public static void index() {
		render();
	}

	public static void resetDb() {
		Fixtures.deleteDatabase();
	}

	public static void checkSimilarity(String hash1, String hash2) {
		List<ApkInfoFull> infos = ApkInfoFull.find("fileHash", hash1).fetch();
		if (infos.size() == 0) {
			return;
		}
		ApkInfoFull info1 = infos.get(0);
		infos = ApkInfoFull.find("fileHash", hash2).fetch();
		if (infos.size() == 0) {
			return;
		}
		ApkInfoFull info2 = infos.get(0);

		Map<String, String> simEntry = new HashMap<String, String>();
		Set<JarEntryInfo> entries1 = info1.getEntries();
		Set<String> entryHash1 = new HashSet<String>();
		for (JarEntryInfo e : entries1) {
			entryHash1.add(e.hash);
		}
		Set<JarEntryInfo> entries2 = info2.getEntries();
		Set<String> entryHash2 = new HashSet<String>();
		for (JarEntryInfo e : entries2) {
			entryHash2.add(e.hash);
		}

		for (String h : entryHash1) {
			if (entryHash2.contains(h)) {
				simEntry.put(h, "");
			}
		}
		String sim = simEntry.size() + "/" + entries1.size();
		System.out.println("Same entry=" + sim);
		for (JarEntryInfo e : entries1) {
			if (simEntry.containsKey(e.hash)) {
				System.out.println(e.name);
			}
		}
		render(sim);
	}

	public static void uploadApk(File apk) throws Exception {
		ApkInfoFull info = null;
		String status = "FAILED";
		String pn = "unknown";
		String vc = "unknown";
		String hash = "unknown";

		try {
			info = (new ApkReaderJob(apk)).doJobWithResult();
		} catch (Exception e) {
			info = null;
			status = e.getMessage();
		}

		if (info != null) {
			status = "OK";
			pn = info.getPackageName();
			vc = String.valueOf(info.getVersionCode());
			hash = info.fileHash;
			info.save();
		}

		render(status, pn, vc, hash);
	}
}