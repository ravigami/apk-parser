package models.app;

import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarEntry;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import play.db.jpa.Model;
import controllers.common.HashUtils;

@JsonIgnoreProperties(ignoreUnknown = true)
@Entity
public class ApkInfoFull extends Model {

	public static String HASH_ALGO = "SHA-1";

	public static String[] ANDROID_VERSION = { "1.5", "1.6", "1.7", "2.0", "2.1", "2.2", "2.3", "3.0", "3.1", "3.2",
			"4.0" };

	public String path;

	@ElementCollection
	public List<String> labels = new ArrayList<String>();
	public String versionName;
	public int versionCode;
	public String minSdkVersion;
	public String targetSdkVersion;
	public String packageName;

	// Add all directories for different dimensions

	// All densities
	@Lob
	@ElementCollection
	public List<String> density = new ArrayList<String>();

	// All locales
	@ElementCollection
	public List<String> locale = new ArrayList<String>();

	// All native code
	@ElementCollection
	public Set<String> nativeCode = new HashSet<String>();

	// All resources
	@Lob
	public String resources;

	// All permissions
	@ElementCollection
	public Set<String> permissions = new HashSet<String>();

	// All features
	@ElementCollection
	public Set<ApkFeature> features = new HashSet<ApkFeature>();

	// All certificates
	@ElementCollection
	public List<String> certHashs = new ArrayList<String>();

	// All icon paths
	@ElementCollection
	public List<ApkIcon> icon = new ArrayList<ApkIcon>();
	@Lob
	public ApkScreenSupport screenSupport = new ApkScreenSupport();

	// File hash
	public String fileHash;
	public long fileSize;

	// Strings
	@Lob
	@ElementCollection
	public List<String> resourceStrings = new ArrayList<String>();

	// All urls
	@Lob
	@ElementCollection
	public List<String> urls = new ArrayList<String>();

	// All patterns
	@ElementCollection
	public List<String> patterns = new ArrayList<String>();

	// Zip entires
	// @OneToMany(mappedBy="apkInfo", cascade=CascadeType.ALL)
	@ManyToMany(cascade = CascadeType.ALL)
	public Set<JarEntryInfo> entries = new HashSet<JarEntryInfo>();

	// Raw content of AndroidManifest.xml
	@Lob
	public String rawAndroidManifest;
	// Raw content of resources
	@Lob
	@ElementCollection
	transient public Map<ApkResourceKey, String> rawResources = new Hashtable<ApkResourceKey, String>();
	// Decompiled source like smali or just java source code
	@Lob
	@ElementCollection
	transient public Map<String, DecompiledClass> decompiledClasses = new Hashtable<String, DecompiledClass>();
	// Raw content of asset
	@Lob
	@ElementCollection
	transient public Map<String, byte[]> assets = new Hashtable<String, byte[]>();

	@ElementCollection
	transient public Map<String, String> extra = new HashMap<String, String>();

	public Map<String, String> getExtra() {
		return extra;
	}

	public void addExtra(String key, String value) {
		if (!extra.containsKey(key)) {
			this.extra.put(key, value);
		}
	}

	public ApkInfoFull() {
		super();
	}

	public ApkInfoFull(String fileHash) {
		super();
		this.fileHash = fileHash;
	}

	public List<String> getDensity() {
		return density;
	}

	public void addDensity(String density) {
		this.density.add(density);
	}

	public String getResources() {
		return resources;
	}

	public void setResources(String resources) {
		this.resources = resources;
	}

	public Set<String> getNativeCode() {
		return nativeCode;
	}

	public void addNativeCode(String nativeCode) {
		this.nativeCode.add(nativeCode);
	}

	public String getTargetSdkVersion() {
		return targetSdkVersion;
	}

	public void setTargetSdkVersion(String targetSdkVersion) {
		this.targetSdkVersion = targetSdkVersion;
	}

	public String getFileHash() {
		return fileHash;
	}

	public void setFileHash(String fileHash) {
		this.fileHash = fileHash;
	}

	public Map<ApkResourceKey, String> getRawResources() {
		return rawResources;
	}

	public List<String> getRawResources(String addr) {
		List<String> ret = new ArrayList<String>();
		if (addr == null)
			return ret;
		Set<ApkResourceKey> keys = rawResources.keySet();
		for (ApkResourceKey key : keys) {
			if (key.addr.equals(addr)) {
				ret.add(rawResources.get(key));
			}
		}
		return ret;
	}

	public void addRawResource(ApkResourceKey key, String rawResource) {
		rawResources.put(key, rawResource);
	}

	public List<String> getResourceStrings() {
		return resourceStrings;
	}

	public void addResourceStrings(String str) {
		if (str == null)
			return;
		str = str.replace("#", " ").replace("\"", "").trim();
		int strLen = str.length();
		if (strLen == 0 || strLen == 1)
			return;
		if (str.startsWith("/res/"))
			return;

		resourceStrings.add(str);
	}

	public List<String> getCertHashs() {
		return certHashs;
	}

	public void addCert(Certificate cert) {
		if (cert == null)
			return;
		String certHash = HashUtils.getHash(cert.getPublicKey().getEncoded(), HASH_ALGO);
		if (!certHashs.contains(certHash))
			certHashs.add(certHash);
	}

	public void setCertHashs(List<String> certHashs) {
		this.certHashs = certHashs;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public List<String> getLocale() {
		return locale;
	}

	public void addLocale(String locale) {
		this.locale.add(locale);
	}

	public List<String> getLabel() {
		return labels;
	}

	public void addLabel(String label) {
		if (label != null && !labels.contains(label))
			labels.add(label);
	}

	public String getVersionName() {
		return versionName;
	}

	public void setVersionName(String versionName) {
		this.versionName = versionName;
	}

	public int getVersionCode() {
		return versionCode;
	}

	public void setVersionCode(int versionCode) {
		this.versionCode = versionCode;
	}

	public String getMinSdkVersion() {
		return minSdkVersion;
	}

	public void setMinSdkVersion(String minSdkVersion) {
		this.minSdkVersion = minSdkVersion;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public Set<String> getPermissions() {
		return permissions;
	}

	public void addPermission(String permission) {
		this.permissions.add(permission);
	}

	public Set<ApkFeature> getFeatures() {
		return features;
	}

	public void addFeatures(ApkFeature feature) {
		features.add(feature);
	}

	public List<ApkIcon> getIcon() {
		return icon;
	}

	public void addIcon(String jarPath, String iconHash) {
		for (ApkIcon i : icon) {
			if (i.jarPath.equals(jarPath)) {
				return;
			}
		}
		icon.add(new ApkIcon(jarPath, iconHash, null));
	}

	public ApkScreenSupport getScreenSupport() {
		return screenSupport;
	}

	public void setScreenSupport(ApkScreenSupport screenSupport) {
		this.screenSupport = screenSupport;
	}

	public void addEntry(JarEntry entry) {
		JarEntryInfo e=new JarEntryInfo(entry); 
		this.entries.add(e);
	}

	public Set<JarEntryInfo> getEntries() {
		return entries;
	}

	public void setEntries(Set<JarEntryInfo> entries) {
		this.entries = entries;
	}

	public String getRawAndroidManifest() {
		return rawAndroidManifest;
	}

	public void setRawAndroidManifest(String rawAndroidManifest) {
		this.rawAndroidManifest = rawAndroidManifest;
	}

	public Map<String, DecompiledClass> getDecompiledClasses() {
		return decompiledClasses;
	}

	public void addDecompiledClasses(String decompiledName, DecompiledClass rawDecompiled) {
		decompiledClasses.put(decompiledName, rawDecompiled);
	}

	public Map<String, byte[]> getAssets() {
		return assets;
	}

	public void addAssets(String assetName, byte[] asset) {
		this.assets.put(assetName, asset);
	}

	public String toString() {
		return fileHash + "," + packageName + "," + versionCode;
	}

	public void addUrl(String url) {
		this.urls.add(url);
	}

	public List<String> getLabels() {
		return labels;
	}

	public void setLabels(List<String> labels) {
		this.labels = labels;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	public List<String> getUrls() {
		return urls;
	}

	public void setUrls(List<String> urls) {
		this.urls = urls;
	}

	public List<String> getPatterns() {
		return patterns;
	}

	public void setPatterns(List<String> patterns) {
		this.patterns = patterns;
	}

	public void addPattern(String pattern) {
		if (!patterns.contains(pattern)) {
			this.patterns.add(pattern);
		}
	}

	public void setDensity(List<String> density) {
		this.density = density;
	}

	public void setLocale(List<String> locale) {
		this.locale = locale;
	}

	public void setNativeCode(Set<String> nativeCode) {
		this.nativeCode = nativeCode;
	}

	public void setPermissions(Set<String> permissions) {
		this.permissions = permissions;
	}

	public void setFeatures(Set<ApkFeature> features) {
		this.features = features;
	}

	public void setIcon(List<ApkIcon> icon) {
		this.icon = icon;
	}

	public void setResourceStrings(List<String> resourceStrings) {
		this.resourceStrings = resourceStrings;
	}

	public void setRawResources(Map<ApkResourceKey, String> rawResources) {
		this.rawResources = rawResources;
	}

	public void setDecompiledClasses(Map<String, DecompiledClass> decompiledClasses) {
		this.decompiledClasses = decompiledClasses;
	}

	public void setAssets(Map<String, byte[]> assets) {
		this.assets = assets;
	}

	public void setExtra(Map<String, String> extra) {
		this.extra = extra;
	}

}
