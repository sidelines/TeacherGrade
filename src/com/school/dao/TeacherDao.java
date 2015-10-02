package com.school.dao;

import org.apache.ibatis.annotations.Param;

import com.school.model.Teacher;

public interface TeacherDao {
	
	public Teacher teacherLogin(@Param("tid")String tid,@Param("tpass")String tpass);
	
}
