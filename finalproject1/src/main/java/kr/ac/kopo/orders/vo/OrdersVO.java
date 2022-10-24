package kr.ac.kopo.orders.vo;

public class OrdersVO {
	
	private  int orderNo;
	private int buildingNo;
	private int propertyNo;
	private String customerId;
	private String orderType;
	private String dabsAmount;
	private String orderPrice;
	private String orderDate;
	private String orderState;
	private String bidAskId;
	
	public String getBidAskId() {
		return bidAskId;
	}
	public void setBidAskId(String bidAskId) {
		this.bidAskId = bidAskId;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getBuildingNo() {
		return buildingNo;
	}
	public void setBuildingNo(int buildingNo) {
		this.buildingNo = buildingNo;
	}
	public int getPropertyNo() {
		return propertyNo;
	}
	public void setPropertyNo(int propertyNo) {
		this.propertyNo = propertyNo;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public String getDabsAmount() {
		return dabsAmount;
	}
	public void setDabsAmount(String dabsAmount) {
		this.dabsAmount = dabsAmount;
	}
	public String getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(String orderPrice) {
		this.orderPrice = orderPrice;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	@Override
	public String toString() {
		return "OrdersVO [orderNo=" + orderNo + ", buildingNo=" + buildingNo + ", propertyNo=" + propertyNo
				+ ", customerId=" + customerId + ", orderType=" + orderType + ", dabsAmount=" + dabsAmount
				+ ", orderPrice=" + orderPrice + ", orderDate=" + orderDate + ", orderState=" + orderState
				+ ", bidAskId=" + bidAskId + "]";
	}

	
	
	
}
