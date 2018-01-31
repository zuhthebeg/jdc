package com.jdc.bean;

public class Authentication {
	private String phone;
	private String auth_code;
	private String status;
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAuth_code() {
		return auth_code;
	}
	public void setAuth_code(String authCode) {
		auth_code = authCode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
