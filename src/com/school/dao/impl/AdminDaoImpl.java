package com.school.dao.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import com.school.dao.AdminDao;
import com.school.model.Admin;
import com.school.model.add.ShowAdminPageDate;

public class AdminDaoImpl implements AdminDao {

	@Autowired
	private AdminDao ad;

	@Override
	public Admin adminLogin(@Param("adminName") String adminName, @Param("adminPass") String adminPass) {
		return ad.adminLogin(adminName, adminPass);
	}
	
	public Admin updateAdmin(@Param("userName")String userName,@Param("password")String password){
		return ad.updateAdmin(userName, password);
		
	}

	@Override
	public List<ShowAdminPageDate> showAdminPageDate() {
		// TODO Auto-generated method stub
		return ad.showAdminPageDate();
	}

	@Override
	public List<ShowAdminPageDate> showAdminPageDepart() {
		// TODO Auto-generated method stub
		return ad.showAdminPageDepart();
	}

}
