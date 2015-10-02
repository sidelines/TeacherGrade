package com.school.model;

import java.util.Date;

public class TeachPass {
	private int tcp_id;
	private String tid;
	
	private String pId;
	
	private Date date;
	
	private int departId;
	
	private int depart_state;
	
	private int school_state;
	
	private String depart_remark;
	
	private String school_remark;
	
	private int cid;
	
	private String eviPic;
	
	private String eviZip;

	

	public int getTcp_id() {
		return tcp_id;
	}

	public void setTcp_id(int tcp_id) {
		this.tcp_id = tcp_id;
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getDepartId() {
		return departId;
	}

	public void setDepartId(int departId) {
		this.departId = departId;
	}

	public int getDepart_state() {
		return depart_state;
	}

	public void setDepart_state(int depart_state) {
		this.depart_state = depart_state;
	}

	public int getSchool_state() {
		return school_state;
	}

	public void setSchool_state(int school_state) {
		this.school_state = school_state;
	}

	public String getDepart_remark() {
		return depart_remark;
	}

	public void setDepart_remark(String depart_remark) {
		this.depart_remark = depart_remark;
	}

	public String getSchool_remark() {
		return school_remark;
	}

	public void setSchool_remark(String school_remark) {
		this.school_remark = school_remark;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getEviPic() {
		return eviPic;
	}

	public void setEviPic(String eviPic) {
		this.eviPic = eviPic;
	}

	public String getEviZip() {
		return eviZip;
	}

	public void setEviZip(String eviZip) {
		this.eviZip = eviZip;
	}

	@Override
	public String toString() {
		return "TeachPass [tcp_id=" + tcp_id + ", tid=" + tid + ", pId=" + pId
				+ ", date=" + date + ", departId=" + departId
				+ ", depart_state=" + depart_state + ", school_state="
				+ school_state + ", depart_remark=" + depart_remark
				+ ", school_remark=" + school_remark + ", cid=" + cid
				+ ", eviPic=" + eviPic + ", eviZip=" + eviZip + "]";
	}

	
	
}
