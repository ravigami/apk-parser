package models.app;

import java.io.Serializable;

public class ApkScreenSupport implements Serializable{

	private static final long serialVersionUID = -6677938079597473554L;
	
	public Boolean resizeable = null;
	public Boolean smallScreens = null;
	public Boolean normalScreens = null;
	public Boolean largeScreens = null;
	public Boolean xlargeScreens = null;
	public Boolean anyDensity = null;
	public int requiresSmallestWidthDp = -1;
	public int compatibleWidthLimitDp = -1;
	public int largestWidthLimitDp = -1;
	
}
