package controllers.apk;

public class ApkException extends Exception {
	ApkExceptionMsg msg;

	public ApkException(ApkExceptionMsg msg) {
		super(msg.msg);
		this.msg = msg;
	}

	public static enum ApkExceptionMsg {
		PARSE_FAILED_NO_CERTIFICATES("No certificate exists"),PARSE_FAILED_EXTRACT_FILES("Extract files failed"), PARSE_FAILED_INVALID_ZIPFILE("Can not open zip file"), PARSE_FAILED_INVALID_MANIFEST(
				"Invalid AndroidManifest.xml"), PARSE_FAILED_READING_TIMEOUT("Parser timeout"), PARSE_FAILED_REFINE(
				"Refine failed"),PARSE_FAILED_DECODE_INCOMPLETE("Decode operation incomplete");

		String msg;

		ApkExceptionMsg(String msg) {
			this.msg = msg;
		}
	}
}
