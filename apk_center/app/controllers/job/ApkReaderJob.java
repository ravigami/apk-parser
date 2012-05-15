package controllers.job;

import java.io.File;

import models.app.ApkInfoFull;
import play.jobs.Job;
import controllers.apk.ApkReaderFull;
import controllers.common.FileUtils;
import controllers.common.TimeoutController;
import controllers.common.TimeoutController.TimeoutException;

public class ApkReaderJob extends Job<ApkInfoFull> {

	File apkFile = null;

	public ApkReaderJob(File apkFile) {
		this.apkFile = apkFile;
	}

	@Override
	public ApkInfoFull doJobWithResult() throws Exception {
		// TODO put file into a temporal folder
		File tmpFolder = new File(FileUtils.getTempFile("decodedtmp_", ""));
		File tmpFile = new File(tmpFolder, "apk");
		tmpFolder.mkdirs();
		FileUtils.copyFile(apkFile, tmpFile);

		ApkReaderFull reader = new ApkReaderFull(tmpFile);
		ApkInfoFull info = null;
		try {
			TimeoutController.execute(reader, 50000);
			info = reader.info;
		} catch (TimeoutException e) {
			info = null;
		}
		return info;
	}
}
