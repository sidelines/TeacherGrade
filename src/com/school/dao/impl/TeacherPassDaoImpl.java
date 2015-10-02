package com.school.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.school.dao.TeacherPassDao;
import com.school.model.BianHao;
import com.school.model.Checker;
import com.school.model.TeachPass;
import com.school.model.Teacher;
import com.school.model.add.ShowAllTeacherPassInfo;

public class TeacherPassDaoImpl implements TeacherPassDao {

	@Autowired
	private TeacherPassDao teacherPassDao;
	
	@Override
	public void addpass(TeachPass teachpass) {
		this.teacherPassDao.addpass(teachpass);
	}

	@Override
	public String getTeacherInfoById(Teacher teacher) {
		return teacherPassDao.getTeacherInfoById(teacher);
	}

	@Override
	public String getPidByCategory(BianHao bianhao) {
		return teacherPassDao.getPidByCategory(bianhao);
	}

	@Override
	public String getCategoryByPid(String bianhao) {
		// TODO Auto-generated method stub
		return teacherPassDao.getCategoryByPid(bianhao);
	}

	@Override
	public List<com.school.model.add.ShowAllTeacherPassInfo> ShowAllTeacherPassInfo() {
		
		return teacherPassDao.ShowAllTeacherPassInfo();
	}

	
	//通过审核员的系别查询本系审核未通过的所有教师的业绩
	@Override
	public List<ShowAllTeacherPassInfo> ShowAllTeacherNotPassInfo() {
		
		return teacherPassDao.ShowAllTeacherNotPassInfo();
	}

	//管理员通过教师的名字和教学业绩编号对该项的教学业绩进行审核(通过)
	@Override
	public void checkT(com.school.model.add.ShowAllTeacherPassInfo showAll) {

		this.teacherPassDao.checkT(showAll);
		
	}
	
	//管理员通过教师的名字和教学业绩编号对该项的教学业绩进行审核(不通过)
	@Override
	public void checkT2(com.school.model.add.ShowAllTeacherPassInfo showAll) {
		// TODO Auto-generated method stub
		this.teacherPassDao.checkT2(showAll);
	}

	@Override
	public List<com.school.model.add.ShowAllTeacherPassInfo> manageT(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherPassDao.manageT(teacher);
	}

	@Override
	public List<com.school.model.add.ShowAllTeacherPassInfo> manageT2(
			Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherPassDao.manageT2(teacher);
	}

	@Override
	public List<com.school.model.add.ShowAllTeacherPassInfo> manageT3(
			Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherPassDao.manageT3(teacher);
	}

	@Override
	public void delT(com.school.model.add.ShowAllTeacherPassInfo showAll) {
		// TODO Auto-generated method stub
		this.teacherPassDao.delT(showAll);
	}

	@Override
	public int findlastdateID() {
		// TODO Auto-generated method stub
		return teacherPassDao.findlastdateID();
	}

	@Override
	public void updatepass(TeachPass teachpass) {
		// TODO Auto-generated method stub
		this.teacherPassDao.updatepass(teachpass);
	}


	

}
