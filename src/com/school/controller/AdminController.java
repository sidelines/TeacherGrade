package com.school.controller;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.dao.AdminDao;
import com.school.model.Admin;
import com.school.model.add.ShowAdminPageDate;

/**
 * 
 * 管理员业务控制器
 * @author lenovo
 *
 */


@Controller
public class AdminController {

	@Autowired
	private AdminDao ad;			

	/**
	 * 管理员登录方法
	 * @param request
	 * @param response
	 */
	@RequestMapping("adminLogin.htm")
	public void adminLogin(HttpServletRequest request, HttpServletResponse response) {
		String adminName = request.getParameter("adminName");
		String adminPass = request.getParameter("adminPass");
		
		Admin admin = ad.adminLogin(adminName, adminPass);
		try{
			if(admin != null){
				request.getSession().setAttribute("admin", admin);
				request.getRequestDispatcher("admin/index.jsp").forward(request, response);
			}else{
				Writer writer = response.getWriter();
				writer.write("<script type='text/javascript'>alert('用户名或密码错误！');location.replace('index.jsp');</script>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/**
	 * 管理员安全退出方法
	 * @param request
	 * @param response
	 */
	@RequestMapping("adminLogOut.htm")
	public void adminLogOut(HttpServletRequest request, HttpServletResponse response){
		request.getSession().removeAttribute("admin");
		try {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("showAdminPageDate.htm")
	public void showAdminPageDate(HttpServletRequest request,HttpServletResponse response)
	{
		//取教师的数据
		List<ShowAdminPageDate> showAdminPageDate = ad.showAdminPageDate();
		System.out.println(showAdminPageDate);
		//取系别的数据
		List<ShowAdminPageDate> showAdminPageDepart = ad.showAdminPageDepart();
		System.out.println(showAdminPageDepart);
		request.setAttribute("showAdminPageDates", showAdminPageDate);
		request.setAttribute("showAdminPageDeparts", showAdminPageDepart);
		
		try {
			request.getRequestDispatcher("admin/showData.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
	
}
