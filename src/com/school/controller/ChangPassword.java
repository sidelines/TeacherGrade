package com.school.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.dao.AdminDao;
import com.school.model.Admin;


@Controller
public class ChangPassword {

	@Autowired
	private AdminDao t;
	
	@RequestMapping("changPassword.htm")
	public void changPass(HttpServletRequest request,HttpServletResponse response){
		
		String tid = request.getParameter("userName");
		String tpass = request.getParameter("password");
		
		t.updateAdmin(tid, tpass);
		
		
		
	}
	
}
