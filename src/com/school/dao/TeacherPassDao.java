package com.school.dao;

import java.util.List;

import com.school.model.BianHao;
import com.school.model.Checker;
import com.school.model.TeachPass;
import com.school.model.Teacher;

import com.school.model.add.ShowAllTeacherPassInfo;

public interface TeacherPassDao {
	
	public void addpass(TeachPass teachpass);
	
	//找到最后一条记录的id
	public int findlastdateID();
	
	//通过最后一条id更新该条信息
	public void updatepass(TeachPass teachpass);
	
	//通过教师id获取教师信息
	public String getTeacherInfoById(Teacher teacher);
	
	//通过中文值返回密码值
	public String getPidByCategory(BianHao bianhao);
	
	//通过密码值返回中文值
	public String getCategoryByPid(String bianhao);
	
	//查询所有老师通过的审核记录
	public List<ShowAllTeacherPassInfo> ShowAllTeacherPassInfo();
	
	//通过审核员的系别查询本系审核未通过的所有教师的业绩
	public List<ShowAllTeacherPassInfo> ShowAllTeacherNotPassInfo();
	
	//管理员通过教师的名字和教学业绩编号对该项的教学业绩进行审核(通过)
	public void checkT(ShowAllTeacherPassInfo showAll);
	
	//管理员通过教师的名字和教学业绩编号对该项的教学业绩进行审核(不通过)
	public void checkT2(ShowAllTeacherPassInfo showAll);
	
	
	//教师通过教师的ID和教学业绩编号对该项的教学业绩进行删除
	public void delT(ShowAllTeacherPassInfo showAll);
	
	//<!--教师管理自己的业绩  审核通过-->
	public List<ShowAllTeacherPassInfo> manageT(Teacher teacher);
	
	//<!--教师管理自己的业绩  未通过-->
	public List<ShowAllTeacherPassInfo> manageT2(Teacher teacher);

	//<!--教师管理自己的业绩  未审核-->
	public List<ShowAllTeacherPassInfo> manageT3(Teacher teacher);

	
}
