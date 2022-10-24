package kr.ac.kopo.building.vo;


public class BuildingVO {
	
	private int buildingNo;
	private String buildingName;
	private String scale;
	private String locationCode;
	private String buildingAddress;
	private String buildingPurpose;
	private String totalFloorArea;
	private String coverageRatio;
	private String floorAreaRatio;
	private String landPurpose;
	private String landArea;
	private String buildDate;
	private String imageName1;
	private String imageName2;
	private String imageName3;
	private String map;

	public String getMap() {
		return map;
	}
	public void setMap(String map) {
		this.map = map;
	}
	public String getImageName1() {
		return imageName1;
	}
	public void setImageName1(String imageName1) {
		this.imageName1 = imageName1;
	}
	public String getImageName2() {
		return imageName2;
	}
	public void setImageName2(String imageName2) {
		this.imageName2 = imageName2;
	}
	public String getImageName3() {
		return imageName3;
	}
	public void setImageName3(String imageName3) {
		this.imageName3 = imageName3;
	}
	public int getBuildingNo() {
		return buildingNo;
	}
	public void setBuildingNo(int buildingNo) {
		this.buildingNo = buildingNo;
	}
	public String getBuildingName() {
		return buildingName;
	}
	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getLocationCode() {
		return locationCode;
	}
	public void setLocationCode(String locationCode) {
		this.locationCode = locationCode;
	}
	public String getBuildingAddress() {
		return buildingAddress;
	}
	public void setBuildingAddress(String buildingAddress) {
		this.buildingAddress = buildingAddress;
	}
	public String getBuildingPurpose() {
		return buildingPurpose;
	}
	public void setBuildingPurpose(String buildingPurpose) {
		this.buildingPurpose = buildingPurpose;
	}
	public String getTotalFloorArea() {
		return totalFloorArea;
	}
	public void setTotalFloorArea(String totalFloorArea) {
		this.totalFloorArea = totalFloorArea;
	}
	public String getCoverageRatio() {
		return coverageRatio;
	}
	public void setCoverageRatio(String coverageRatio) {
		this.coverageRatio = coverageRatio;
	}
	public String getFloorAreaRatio() {
		return floorAreaRatio;
	}
	public void setFloorAreaRatio(String floorAreaRatio) {
		this.floorAreaRatio = floorAreaRatio;
	}
	public String getLandPurpose() {
		return landPurpose;
	}
	public void setLandPurpose(String landPurpose) {
		this.landPurpose = landPurpose;
	}
	public String getLandArea() {
		return landArea;
	}
	public void setLandArea(String landArea) {
		this.landArea = landArea;
	}
	public String getBuildDate() {
		return buildDate;
	}
	public void setBuildDate(String buildDate) {
		this.buildDate = buildDate;
	}
	@Override
	public String toString() {
		return "BuildingVO [buildingNo=" + buildingNo + ", buildingName=" + buildingName + ", scale=" + scale
				+ ", locationCode=" + locationCode + ", buildingAddress=" + buildingAddress + ", buildingPurpose="
				+ buildingPurpose + ", totalFloorArea=" + totalFloorArea + ", coverageRatio=" + coverageRatio
				+ ", floorAreaRatio=" + floorAreaRatio + ", landPurpose=" + landPurpose + ", landArea=" + landArea
				+ ", buildDate=" + buildDate + ", imageName1=" + imageName1 + ", imageName2=" + imageName2
				+ ", imageName3=" + imageName3 + ", map=" + map + "]";
	}
	
	
	
	
	
}
