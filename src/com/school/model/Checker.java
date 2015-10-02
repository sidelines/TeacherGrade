package com.school.model;


/**
 * 审核员表
 * @author lenovo
 *
 */


public class Checker {


	private int cid;								//审核员Id，自动增长


	private int departId;							//审核员所属院系，外键，亦即系审或是院审（可在数据库里添加院编号，作为院审区分）
	

	private String cname;							//审核员姓名，账号，作为登录之用


	private String cpass;							//审核员密码


	private String regDate;							//审核员分配日期

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}


	public int getDepartId() {
		return departId;
	}

	public void setDepartId(int departId) {
		this.departId = departId;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCpass() {
		return cpass;
	}

	public void setCpass(String cpass) {
		this.cpass = cpass;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	
}
