package controllers.storage;

import java.io.File;

import play.exceptions.PlayException;

public class StorageException extends PlayException {

	String title;
	String description;
	File file;
	Exception extraException;

	public StorageException(String title, String description, Exception extraException) {
		super();
		this.title = title;
		this.description = description;
		this.extraException = extraException;
	}

	public StorageException(String title, String description) {
		super();
		this.title = title;
		this.description = description;
	}

	public StorageException(String title, String description, File file) {
		super();
		this.title = title;
		this.description = description;
		this.file = file;
	}

	public StorageException(String title, String description, File file, Exception extraException) {
		this.title = title;
		this.description = description;
		this.file = file;
		this.extraException = extraException;
	}

	@Override
	public String getErrorTitle() {
		return String.format("StorageException," + title);
	}

	@Override
	public String getErrorDescription() {
		return description;
	}

}
