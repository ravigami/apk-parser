package controllers.storage;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.List;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;

import play.Play;
import play.vfs.VirtualFile;
import controllers.common.HashUtils;

public enum StorageLib implements StorageService {
	COMMON, APK, SNAPSHOT, ICON, D_ENTRY, D_DEX, D_RES, D_CERT, D_LIB;

	String libBase;
	String name;
	VirtualFile libFile;

	StorageLib() throws StorageException {
		this.name = this.name();
		libBase = Play.configuration.getProperty("files.path", "data" + File.separator + "files");
		if (StringUtils.isEmpty(libBase) || Play.getVirtualFile(libBase) == null) {
			throw new StorageException("Storage initialization failed", "cannot find lib base");
		}
		libFile = createFolder(this.name);
	}

	private VirtualFile createFolder(String folder) {
		libFile = Play.getVirtualFile(libBase + File.separator + folder);
		if (libFile == null) {
			File folderFile = Play.getFile(libBase + File.separator + folder);
			if (!folderFile.exists()) {
				if (!folderFile.mkdirs()) {
					throw new StorageException("Stroage folder create failed", "cannot create folder " + folder);
				}
			}
			libFile = VirtualFile.open(folderFile);
		}
		return libFile;
	}

	public String generateId(File file) throws StorageException {
		if (!file.exists()) {
			throw new StorageException("Storage generate id failed", "file not exists", file);
		}
		String id = HashUtils.getFileSHA1(file);
		if (StringUtils.isEmpty(id)) {
			throw new StorageException("Storage generate id failed", "cannot generate id for file " + file);
		}
		return id;
	}

	private VirtualFile generateFile(String hash) {
		String relativePath = generateRelativePath(hash);
		if (relativePath == null) {
			return null;
		}
		VirtualFile file = libFile.child(relativePath);
		return file;
	}

	public String generateRelativePath(String hash) {
		if (hash == null || hash.length() < 4) {
			return null;
		}
		return hash.substring(0, 3) + File.separator + hash;
	}

	@Override
	public File getFileById(String hash) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String put(InputStream in) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String put(File file) {
		return put(file, true);
	}

	public String put(File file, boolean deleteAfterMove) {
		String id = null;
		try {
			id = generateId(file);
			VirtualFile dst = generateFile(id);
			if (!dst.exists()) {
				FileUtils.copyFile(file, dst.getRealFile());
			}
			if (deleteAfterMove) {
				FileUtils.deleteQuietly(file);
			}
		} catch (StorageException e) {
			throw e;
		} catch (Exception e) {
			throw new StorageException("Storage put failed", "cannot put file", file, e);
		}
		return id;
	}

	@Override
	public String put(URL url) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> getAllId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LocalFile getFile(String id) {
		String relativePath = generateRelativePath(id);
		if (relativePath != null) {
			VirtualFile file = generateFile(id);
			if (file != null) {
				if (file.exists()) {
					return new LocalFile(this, file);
				}
			}
		}
		return null;
	}

	@Override
	public OutputStream getStream(String id) {

		return null;
	}

}
