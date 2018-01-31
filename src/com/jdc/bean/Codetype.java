package com.jdc.bean;

public class Codetype {
	private int codetype_idx;
	private String name;
	public int getCodetype_idx() {
		return codetype_idx;
	}
	public void setCodetype_idx(int codetype_idx) {
		this.codetype_idx = codetype_idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	private String regdate;
	private String code;
}
