package models.app;

import java.io.Serializable;
import java.util.jar.JarEntry;

import javax.persistence.Entity;

import play.db.jpa.Model;

@Entity
public class JarEntryInfo extends Model {

	public String name;
	public long lastModifyTime;
	public String hash;

	public JarEntryInfo(JarEntry entry) {
		this.name = entry.getName();
		this.lastModifyTime = entry.getTime();
	}

}
