package com.school.model.add;

public class ShowAdminPageDate {
private String departname;
private String tname;
private int score;
public String getDepartname() {
	return departname;
}
public void setDepartname(String departname) {
	this.departname = departname;
}
public String getTname() {
	return tname;
}
public void setTname(String tname) {
	this.tname = tname;
}
public int getScore() {
	return score;
}
public void setScore(int score) {
	this.score = score;
}
@Override
public String toString() {
	return "ShowAdminPageDate [departname=" + departname + ", tname=" + tname
			+ ", score=" + score + "]";
}

}
