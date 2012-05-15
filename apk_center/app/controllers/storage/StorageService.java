package controllers.storage;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.List;
import java.util.Random;

import play.vfs.VirtualFile;

public interface StorageService {

	static Random random = new Random(944);

	public abstract File getFileById(String hash);

	public abstract String put(InputStream in);

	public abstract String put(File file);

	public abstract String put(URL url);

	public abstract List<String> getAllId();

	public abstract LocalFile getFile(String id);

	public abstract OutputStream getStream(String id);

}
