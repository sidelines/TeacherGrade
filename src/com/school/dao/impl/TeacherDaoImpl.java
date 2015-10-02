package com.school.dao.impl;

import org.apache.ibatis.annotations.Param;

import com.school.dao.TeacherDao;
import com.school.model.Teacher;

public class TeacherDaoImpl implements TeacherDao {

	private TeacherDao td;
	
	@Override
	public Teacher teacherLogin(@Param("tid") String tid, @Param("tpass") String tpass) {
		return td.teacherLogin(tid, tpass) ;
	}

}
