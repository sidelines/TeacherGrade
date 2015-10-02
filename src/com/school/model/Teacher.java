package com.school.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * 教师表
 * @author lenovo
 *
 */

@Entity
@Table(name = "t_teacher")
public class Teacher {

	@Id
	@Column(name = "tid", length = 32)
	private String tid;				//教师Id编号，登录用

	@Column(name = "departId", length = 32)
	private String departId;		//院系Id，外键
	
	@Column(name = "tname", length = 32)
	private String tname;			//教师姓名

	@Column(name = "tpass", length = 32)
	private String tpass;			//教师登录密码

	@Column(name = "gender", length = 2)
	private String gender;			//性别

	@Column(name = "phoneNum", length = 15)
	private String phoneNum;		//电话号码

	@Column(name = "remark", length = 255)
	private String remark;			//教师备注

	@Column(name = "regDate", length = 32)
	private String regDate;			//教师账号添加日期

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getDepartId() {
		return departId;
	}

	public void setDepartId(String departId) {
		this.departId = departId;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTpass() {
		return tpass;
	}

	public void setTpass(String tpass) {
		this.tpass = tpass;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
}
