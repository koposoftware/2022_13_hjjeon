package kr.ac.kopo.account.vo;

public class AccountVO {
	
	private String accountNumber;
	private String userId;
	private String accountPassword;
	private int balance;
	
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAccountPassword() {
		return accountPassword;
	}
	public void setAccountPassword(String accountPassword) {
		this.accountPassword = accountPassword;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "AccountVO [accountNumber=" + accountNumber + ", userId=" + userId + ", accountPassword="
				+ accountPassword + ", balance=" + balance ;
	}

	
	
	
}
