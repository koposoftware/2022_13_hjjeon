package kr.ac.kopo.property.vo;

public class PropertyVO {
	
	private int propertyNo;
	private String propertyName;
	private int buildingNo;
	private double propertyArea;
	private double propertyLandArea;
	private int totalDABS;
	private String pointHead1;
	private String pointHead2;
	private String pointHead3;
	private String pointDetail1;
	private String pointDetail2;
	private String pointDetail3;
	private String yield;
	private String fid;
	private long avls;
	private int acmlTRPBMN;
	private int acmlVOL;
	private String competitionDate;
	private int totalDabs;
	
	
	public int getTotalDabs() {
		return totalDabs;
	}
	public void setTotalDabs(int totalDabs) {
		this.totalDabs = totalDabs;
	}
	
	
	
	public String getCompetitionDate() {
		return competitionDate;
	}
	public void setCompetitionDate(String competitionDate) {
		this.competitionDate = competitionDate;
	}
	public long getAvls() {
		return avls;
	}
	public void setAvls(long avls) {
		this.avls = avls;
	}
	public int getAcmlTRPBMN() {
		return acmlTRPBMN;
	}
	public void setAcmlTRPBMN(int acmlTRPBMN) {
		this.acmlTRPBMN = acmlTRPBMN;
	}
	public int getAcmlVOL() {
		return acmlVOL;
	}
	public void setAcmlVOL(int acmlVOL) {
		this.acmlVOL = acmlVOL;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getYield() {
		return yield;
	}
	public void setYield(String yield) {
		this.yield = yield;
	}
	public String getPointHead1() {
		return pointHead1;
	}
	public void setPointHead1(String pointHead1) {
		this.pointHead1 = pointHead1;
	}
	public String getPointHead2() {
		return pointHead2;
	}
	public void setPointHead2(String pointHead2) {
		this.pointHead2 = pointHead2;
	}
	public String getPointHead3() {
		return pointHead3;
	}
	public void setPointHead3(String pointHead3) {
		this.pointHead3 = pointHead3;
	}
	public String getPointDetail1() {
		return pointDetail1;
	}
	public void setPointDetail1(String pointDetail1) {
		this.pointDetail1 = pointDetail1;
	}
	public String getPointDetail2() {
		return pointDetail2;
	}
	public void setPointDetail2(String pointDetail2) {
		this.pointDetail2 = pointDetail2;
	}
	public String getPointDetail3() {
		return pointDetail3;
	}
	public void setPointDetail3(String pointDetail3) {
		this.pointDetail3 = pointDetail3;
	}
	public int getPropertyNo() {
		return propertyNo;
	}
	public void setPropertyNo(int propertyNo) {
		this.propertyNo = propertyNo;
	}
	public String getPropertyName() {
		return propertyName;
	}
	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}
	public int getBuildingNo() {
		return buildingNo;
	}
	public void setBuildingNo(int buildingNo) {
		this.buildingNo = buildingNo;
	}
	public double  getPropertyArea() {
		return propertyArea;
	}
	public void setPropertyArea(double propertyArea) {
		this.propertyArea = propertyArea;
	}
	public double getPropertyLandArea() {
		return propertyLandArea;
	}
	public void setPropertyLandArea(double propertyLandArea) {
		this.propertyLandArea = propertyLandArea;
	}
	public int getTotalDABS() {
		return totalDABS;
	}
	public void setTotalDABS(int totalDABS) {
		this.totalDABS = totalDABS;
	}
	@Override
	public String toString() {
		return "PropertyVO [propertyNo=" + propertyNo + ", propertyName=" + propertyName + ", buildingNo=" + buildingNo
				+ ", propertyArea=" + propertyArea + ", propertyLandArea=" + propertyLandArea + ", totalDABS="
				+ totalDABS + ", pointHead1=" + pointHead1 + ", pointHead2=" + pointHead2 + ", pointHead3=" + pointHead3
				+ ", pointDetail1=" + pointDetail1 + ", pointDetail2=" + pointDetail2 + ", pointDetail3=" + pointDetail3
				+ ", yield=" + yield + ", fid=" + fid + ", avls=" + avls + ", acmlTRPBMN=" + acmlTRPBMN + ", acmlVOL="
				+ acmlVOL + "]";
	}

	
	
	
}
