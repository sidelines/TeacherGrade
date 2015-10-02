package com.school.dao.impl;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import com.school.dao.CheckerDao;
import com.school.model.Checker;

public class CheckerDaoImpl implements CheckerDao {

	@Autowired
	private CheckerDao cd;

	@Override
	public Checker checkerLogin(@Param("cname") String cname, @Param("cpass") String cpass) {
		return cd.checkerLogin(cname, cpass);
	}

}
