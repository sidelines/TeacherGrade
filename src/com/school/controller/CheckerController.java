package com.school.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.dao.CheckerDao;
import com.school.model.Checker;

/**
 * 
 * 审核员业务控制器
 * @author lenovo
 *
 */

@Controller
public class CheckerController {

	@Autowired
	private CheckerDao cd;

	/**
	 * 审核员登录方法
	 * @param request
	 * @param response
	 */
	@RequestMapping("checkerLogin.htm")
	public void checkerLogin(HttpServletRequest request, HttpServletResponse response) {
		String cname = request.getParameter("cname");
		String cpass = request.getParameter("cpass");
		
		Checker checker = cd.checkerLogin(cname, cpass);
		try{
			if(checker != null){
				request.getSession().setAttribute("checker", checker);
				request.getRequestDispatcher("checker/index.jsp").forward(request, response);
			}else{
				PrintWriter writer = response.getWriter();
				writer.print("<script type='text/javascript'>alert('\u7528\u6237\u540D\u6216\u5BC6\u7801\u9519\u8BEF\uFF01');history.go(-1);</script>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/**
	 * 审核员安全退出方法
	 * @param request
	 * @param response
	 */
	@RequestMapping("checkerLogOut.htm")
	public void adminLogOut(HttpServletRequest request, HttpServletResponse response){
		request.getSession().removeAttribute("checker");
		try {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
