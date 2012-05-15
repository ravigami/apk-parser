package models.app;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class ApkIcon implements Serializable {
	private static final long serialVersionUID = -7295212486821182520L;

	public String hash;
	public String jarPath;
	public String filePath;

	public ApkIcon(String jarPath, String hash, String filePath) {
		super();
		this.hash = hash;
		this.jarPath = jarPath;
		this.filePath = filePath;
	}

	public String toString() {
//		return jarPath + "(" + hash + ":" + filePath+")";
		return jarPath;
	}
	// public Map<String, String> jarPaths = new HashMap<String, String>();
}
