package com.school.model.add;

public class ShowAllTeacherPassInfo {

	private String tname;
	private String tid;
	
	private String pid;
	private String departname;
	private String date;
	private String score;
	private String category1;
	private String category2;
	private String category3;
	private String category;
	private String depart_state;
	private String school_state;
	private String depart_remark;
	private String school_remark;
	private String cid;
	private String eviPic;
	private String eviZip;
	
	
	
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getDepart_state() {
		return depart_state;
	}
	public void setDepart_state(String depart_state) {
		this.depart_state = depart_state;
	}
	public String getSchool_state() {
		return school_state;
	}
	public void setSchool_state(String school_state) {
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
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
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
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getDepartname() {
		return departname;
	}
	public void setDepartname(String departname) {
		this.departname = departname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getCategory1() {
		return category1;
	}
	public void setCategory1(String category1) {
		this.category1 = category1;
	}
	public String getCategory2() {
		return category2;
	}
	public void setCategory2(String category2) {
		this.category2 = category2;
	}
	public String getCategory3() {
		return category3;
	}
	public void setCategory3(String category3) {
		this.category3 = category3;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "ShowAllTeacherPassInfo [tname=" + tname + ", pid=" + pid
				+ ", departname=" + departname + ", date=" + date + ", score="
				+ score + ", category1=" + category1 + ", category2="
				+ category2 + ", category3=" + category3 + ", depart_state="
				+ depart_state + ", school_state=" + school_state
				+ ", depart_remark=" + depart_remark + ", school_remark="
				+ school_remark + ", cid=" + cid + ", eviPic=" + eviPic
				+ ", eviZip=" + eviZip + "]";
	}


	
	
}
