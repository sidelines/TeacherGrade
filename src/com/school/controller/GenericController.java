package com.school.controller;

import java.io.Writer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * 通用控制器
 * @author lenovo
 *
 */

@Controller
public class GenericController {

	/**
	 * 登录方法，用于向教师、审核员、管理员发送登录请求
	 * @param request
	 * @param response
	 */
	@RequestMapping("login.htm")
	public void login(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		String type = request.getParameter("logType");
		try {
			if ("teacher".equals(type)) {
				String url = "teacherLogin.htm?tid=" + name + "&tpass=" + pass;
				request.getRequestDispatcher(url).forward(request, response);
			} else if ("checker".equals(type)) {
				String url = "checkerLogin.htm?cname=" + name + "&cpass=" + pass;
				request.getRequestDispatcher(url).forward(request, response);
			} else if ("admin".equals(type)) {
				String url = "adminLogin.htm?adminName=" + name + "&adminPass=" + pass;
				request.getRequestDispatcher(url).forward(request, response);
			} else {
				Writer writer = response.getWriter();
				writer.write("<script type='text/javascript'>alert('服务器错误！');history.go(-1);</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
