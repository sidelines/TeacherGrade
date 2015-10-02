package com.school.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.school.model.Admin;
import com.school.model.add.ShowAdminPageDate;

public interface AdminDao {
	
	public Admin adminLogin(@Param("adminName")String adminName,@Param("adminPass")String adminPass);
	
	public Admin updateAdmin(@Param("tid")String userName,@Param("tpass")String password);
	
	public List<ShowAdminPageDate> showAdminPageDate();
	
	public List<ShowAdminPageDate> showAdminPageDepart();
}
