package com.school.controller;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.dao.TeacherDao;
import com.school.model.Teacher;

/**
 * 
 * 教师业务控制器
 * @author lenovo
 *
 */

@Controller
public class TeacherController {

	@Autowired
	private TeacherDao td;

	/**
	 * 教师登录方法
	 * @param request
	 * @param response
	 */
	@RequestMapping("teacherLogin.htm")
	public void teacherLogin(HttpServletRequest request, HttpServletResponse response) {
		String tid = request.getParameter("tid");
		String tpass = request.getParameter("tpass");
		
		Teacher teacher = td.teacherLogin(tid, tpass);
		try{
			if(teacher != null){
				request.getSession().setAttribute("teacher", teacher);
				request.getRequestDispatcher("teacher/index.jsp").forward(request, response);
			}else{
				Writer writer = response.getWriter();
				writer.write("<script type='text/javascript'>alert('用户名或密码错误！');history.go(-1);</script>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/**
	 * 教师安全退出方法
	 * @param request
	 * @param response
	 */
	@RequestMapping("teacherLogOut.htm")
	public void adminLogOut(HttpServletRequest request, HttpServletResponse response){
		request.getSession().removeAttribute("teacher");
		try {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
