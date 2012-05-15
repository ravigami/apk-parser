package models.app;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class DecompiledClass implements Serializable {

	private static final long serialVersionUID = -1142701464643145092L;

	String packageName = null;
	String className = null;

	List<DecodedSrc> decodedCode = new ArrayList<DecodedSrc>();

	public DecompiledClass(String packageName, String className) {
		this.packageName = packageName;
		this.className = className;
	}

	public DecompiledClass addDecoded(DecodedSrc src) {
		this.decodedCode.add(src);
		return this;
	}

	public String getPackageName() {
		return packageName;
	}

	public String getClassName() {
		return className;
	}

	public String getFullName() {
		return packageName + "/" + className;
	}

	public List<DecodedSrc> getDecodedCode() {
		return decodedCode;
	}

	public static class DecodedSrc implements Serializable {
		private static final long serialVersionUID = -3911404714519925025L;

		String type;
		byte[] src;

		public DecodedSrc(String type, byte[] src) {
			this.type = type;
			this.src = src;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		public byte[] getSrc() {
			return src;
		}

		public void setSrc(byte[] src) {
			this.src = src;
		}

	}
}
