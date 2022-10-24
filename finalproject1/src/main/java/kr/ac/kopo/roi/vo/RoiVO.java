package kr.ac.kopo.roi.vo;

public class RoiVO {
	
	private String location;
	private String earningRate;
	private String researchDate;
	private String item;
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEarningRate() {
		return earningRate;
	}
	public void setEarningRate(String earningRate) {
		this.earningRate = earningRate;
	}
	public String getResearchDate() {
		return researchDate;
	}
	public void setResearchDate(String researchDate) {
		this.researchDate = researchDate;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	@Override
	public String toString() {
		return "RoiVO [location=" + location + ", earningRate=" + earningRate + ", researchDate=" + researchDate
				+ ", item=" + item + "]";
	}
	
	
}
