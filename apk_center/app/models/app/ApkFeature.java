package models.app;

import java.io.Serializable;

/*
 * <uses-feature android:name="string" android:required=["true" | "false"]
 * android:glEsVersion="integer" />
 */
public class ApkFeature implements Serializable {

	private static final long serialVersionUID = -6256297051816125342L;
	
	public String name;
	public Boolean required;
	public Integer glEsVersion;

	public ApkFeature(String name, Boolean required, Integer glEsVersion) {
		super();
		this.name = name;
		this.required = required;
		this.glEsVersion = glEsVersion;
	}

	@Override
	public String toString() {
		return name + "|" + required;
	}
}
