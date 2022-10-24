package kr.ac.kopo.bidaskbalance.vo;

public class BidAskBalanceVO {
	
	
	private String bidAskId;
	private int propertyNo;
	private String Balance;
	
	public String getBidAskId() {
		return bidAskId;
	}
	public void setBidAskId(String bidAskId) {
		this.bidAskId = bidAskId;
	}
	public int getPropertyNo() {
		return propertyNo;
	}
	public void setPropertyNo(int propertyNo) {
		this.propertyNo = propertyNo;
	}
	public String getBalance() {
		return Balance;
	}
	public void setBalance(String balance) {
		Balance = balance;
	}
	@Override
	public String toString() {
		return "BidAskBalanceVO [bidAskId=" + bidAskId + ", propertyNo=" + propertyNo + ", Balance=" + Balance + "]";
	}
	
	
}
