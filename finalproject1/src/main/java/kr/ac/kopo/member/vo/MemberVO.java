package kr.ac.kopo.member.vo;

public class MemberVO {
	
	private String id;
	private String password;
	private String name;
	private String number;
	private String address;
	private String regDate;
	private String idNum1;
	private String idNum2;
	private String email;
	
	
	public String getIdNum1() {
		return idNum1;
	}
	public void setIdNum1(String idNum1) {
		this.idNum1 = idNum1;
	}
	public String getIdNum2() {
		return idNum2;
	}
	public void setIdNum2(String idNum2) {
		this.idNum2 = idNum2;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", number=" + number + ", address="
				+ address + ", regDate=" + regDate + ", idNum1=" + idNum1 + ", idNum2=" + idNum2 + ", email=" + email
				+ "]";
	}

	
	
}
