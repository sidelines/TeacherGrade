package com.school.dao;

import org.apache.ibatis.annotations.Param;

import com.school.model.Checker;

public interface CheckerDao {

	public Checker checkerLogin(@Param("cname")String cname,@Param("cpass")String cpass);
	

}
