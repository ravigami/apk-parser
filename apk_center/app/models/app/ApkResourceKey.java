package models.app;

import java.io.Serializable;

public class ApkResourceKey implements Serializable {

	private static final long serialVersionUID = 1747128150623725176L;

	public String type;
	public String subtype;
	public String name;
	public String addr;

	public ApkResourceKey(String addr, String type, String subType, String name) {
		this.addr = addr;
		this.name = name;
		this.type = type;
		this.subtype = subType;
	}

	public ApkResourceKey(String type, String subType, String name) {
		super();
		this.type = type;
		this.subtype = subType;
		this.name = name;
	}

	@Override
	public int hashCode() {
		return addr.hashCode();
	}
}
