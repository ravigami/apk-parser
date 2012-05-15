package controllers.storage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channel;
import java.nio.channels.FileChannel;
import java.security.AccessControlException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.persistence.Entity;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import play.db.jpa.Model;
import play.exceptions.UnexpectedException;
import play.libs.IO;
import play.vfs.VirtualFile;

@JsonIgnoreProperties(ignoreUnknown = true)
@Entity
public class LocalFile extends Model {

	StorageLib lib;
	String fileHash;

	File realFile;

	LocalFile(StorageLib lib, VirtualFile file) {
		this.lib = lib;
		this.realFile = file.getRealFile();
	}

	LocalFile(StorageLib lib, File file) {
		this.lib = lib;
		this.realFile = file;
	}

	public StorageLib getLib() {
		return lib;
	}

	public void setLib(StorageLib lib) {
		this.lib = lib;
	}

	public String getFileHash() {
		if (fileHash == null) {
			try {
				fileHash = lib.generateId(realFile);
			} catch (StorageException e) {
				e.printStackTrace();
				fileHash = null;
			}
		}
		return fileHash;
	}

	public void setFileHash(String fileHash) {
		this.fileHash = fileHash;
	}

	public void setRealFile(File realFile) {
		this.realFile = realFile;
	}

	public String getName() {
		return realFile.getName();
	}

	public boolean isDirectory() {
		return realFile.isDirectory();
	}

	public boolean reload() {
		// TODO add reload of local file from database
		return false;
	}

	public List<LocalFile> list() {
		List<LocalFile> res = new ArrayList<LocalFile>();
		if (exists()) {
			File[] children = realFile.listFiles();
			for (int i = 0; i < children.length; i++) {
				res.add(new LocalFile(lib, children[i]));
			}
		}
		return res;
	}

	public boolean exists() {
		try {
			if (realFile != null) {
				return realFile.exists();
			}
			return false;
		} catch (AccessControlException e) {
			return false;
		}
	}

	public InputStream inputstream() {
		try {
			return new FileInputStream(realFile);
		} catch (Exception e) {
			throw new UnexpectedException(e);
		}
	}

	public OutputStream outputstream() {
		try {
			return new FileOutputStream(realFile);
		} catch (Exception e) {
			throw new UnexpectedException(e);
		}
	}

	public Long lastModified() {
		if (realFile != null) {
			return realFile.lastModified();
		}
		return 0L;
	}

	@Override
	public boolean equals(Object other) {
		if (other instanceof LocalFile) {
			LocalFile lf = (LocalFile) other;
			if (realFile != null && lf.realFile != null) {
				return realFile.equals(lf.realFile);
			}
		}
		return super.equals(other);
	}

	@Override
	public int hashCode() {
		if (realFile != null) {
			return realFile.hashCode();
		}
		return super.hashCode();
	}

	public long length() {
		return realFile.length();
	}

	public LocalFile child(String name) {
		return new LocalFile(lib, new File(realFile, name));
	}

	public Channel channel() {
		try {
			FileInputStream fis = new FileInputStream(realFile);
			FileChannel ch = fis.getChannel();
			return ch;
		} catch (FileNotFoundException e) {
			return null;
		}

	}

	public static LocalFile open(String file) {
		return open(new File(file));
	}

	public static LocalFile open(File file) {
		return new LocalFile(StorageLib.COMMON, file);
	}

	public String contentAsString() {
		try {
			return IO.readContentAsString(inputstream());
		} catch (Exception e) {
			throw new UnexpectedException(e);
		}
	}

	public File getRealFile() {
		return realFile;
	}

	public void write(CharSequence string) {
		try {
			IO.writeContent(string, outputstream());
		} catch (Exception e) {
			throw new UnexpectedException(e);
		}
	}

	public byte[] content() {
		byte[] buffer = new byte[(int) length()];
		try {
			InputStream is = inputstream();
			is.read(buffer);
			is.close();
			return buffer;
		} catch (Exception e) {
			throw new UnexpectedException(e);
		}
	}

	@Override
	public String toString() {
		return getName();
	}

	public static VirtualFile search(Collection<VirtualFile> roots, String path) {
		for (VirtualFile file : roots) {
			if (file.child(path).exists()) {
				return file.child(path);
			}
		}
		return null;
	}

}
