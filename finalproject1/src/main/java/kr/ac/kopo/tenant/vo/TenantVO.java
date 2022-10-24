package kr.ac.kopo.tenant.vo;

public class TenantVO {
	
	private String tenantName;
	private String business;
	private String contract;

	
	public String getTenantName() {
		return tenantName;
	}


	public void setTenantName(String tenantName) {
		this.tenantName = tenantName;
	}


	public String getBusiness() {
		return business;
	}


	public void setBusiness(String business) {
		this.business = business;
	}


	public String getContract() {
		return contract;
	}


	public void setContract(String contract) {
		this.contract = contract;
	}


	@Override
	public String toString() {
		return "TenantVO [tenantName=" + tenantName + ", business=" + business + ", contract=" + contract + "]";
	}
	
	
	
}
