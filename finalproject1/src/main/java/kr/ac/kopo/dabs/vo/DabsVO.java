package kr.ac.kopo.dabs.vo;

public class DabsVO {
	private int dabsNo;
	private String owner;
	private int propertyNo;
	private int dabsPrice;
	public int getDabsNo() {
		return dabsNo;
	}
	public void setDabsNo(int dabsNo) {
		this.dabsNo = dabsNo;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public int getPropertyNo() {
		return propertyNo;
	}
	public void setPropertyNo(int propertyNo) {
		this.propertyNo = propertyNo;
	}
	public int getDabsPrice() {
		return dabsPrice;
	}
	public void setDabsPrice(int dabsPrice) {
		this.dabsPrice = dabsPrice;
	}
	@Override
	public String toString() {
		return "DabsVO [dabsNo=" + dabsNo + ", owner=" + owner + ", propertyNo=" + propertyNo + ", dabsPrice="
				+ dabsPrice + "]";
	}
	
	
}
