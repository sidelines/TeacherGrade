package com.school.controller.test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.resource.spi.AuthenticationMechanism;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.dao.TeacherPassDao;
import com.school.model.Checker;
import com.school.model.Teacher;
import com.school.model.add.ShowAllTeacherPassInfo;
import com.school.util.SubStringUtil;

@Controller
public class TeachShow {
	
	@Autowired TeacherPassDao t1;
	String sub[];

	@RequestMapping("teachshowall.htm")
	public void teachShowAll(HttpServletRequest request,HttpServletResponse response){
		
		Teacher teacher = (Teacher) request.getSession().getAttribute("teacher");
		
		String id =  request.getParameter("manage");
		System.out.println(id);
//		request.setAttribute("manage", id);
		
		
		if(id.equals("0")){
			System.out.println("未通过！");
			List<ShowAllTeacherPassInfo> l1 = t1.manageT2(teacher);
			List<ShowAllTeacherPassInfo> l2 = new ArrayList<ShowAllTeacherPassInfo>();
			//将list中的每一个pid取出来，对其进行汉化，在写入list中
			for(ShowAllTeacherPassInfo l:l1){
				
				ShowAllTeacherPassInfo satpi = new ShowAllTeacherPassInfo();
				String pid = l.getPid();
				
				//将9位密码拆成3位密码
				sub=SubStringUtil.sub(pid);
				for(String s:sub)
				{
					System.out.println(s);
				}

				//调用方法获取中文名
				String category ="";
				for(int i=0;i<sub.length;i++)
				{
					sub[i]=t1.getCategoryByPid(sub[i]);
					category+=sub[i];
					
				}
				String temp = category.substring(category.length()-4, category.length());
				System.out.println(temp);
				if(temp.equals("null"))
				{
					category=category.substring(0,category.length()-4);
				}
				System.out.println(category);
				
				satpi.setTname(l.getTname());
				satpi.setScore(l.getScore());
				satpi.setCategory(category);
				satpi.setTid(l.getTid());
				satpi.setPid(l.getPid());
				
				l2.add(satpi);
				
			}
			
			request.setAttribute("list", l2);
			
			try {
				request.getRequestDispatcher("teacher/manageTeachWork2.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		}else if(id.equals("2")){
			System.out.println("未审核！");
			List<ShowAllTeacherPassInfo> l1 = t1.manageT3(teacher);
			List<ShowAllTeacherPassInfo> l2 = new ArrayList<ShowAllTeacherPassInfo>();
			//将list中的每一个pid取出来，对其进行汉化，在写入list中
			for(ShowAllTeacherPassInfo l:l1){
				
				ShowAllTeacherPassInfo satpi = new ShowAllTeacherPassInfo();
				String pid = l.getPid();
				
				//将9位密码拆成3位密码
				sub=SubStringUtil.sub(pid);
				for(String s:sub)
				{
					System.out.println(s);
				}

				//调用方法获取中文名
				String category ="";
				for(int i=0;i<sub.length;i++)
				{
					sub[i]=t1.getCategoryByPid(sub[i]);
					category+=sub[i];
					
				}
				String temp = category.substring(category.length()-4, category.length());
				System.out.println(temp);
				if(temp.equals("null"))
				{
					category=category.substring(0,category.length()-4);
				}
				System.out.println(category);
				
				satpi.setTname(l.getTname());
				satpi.setScore(l.getScore());
				satpi.setCategory(category);
				satpi.setTid(l.getTid());
				satpi.setPid(l.getPid());
				
				l2.add(satpi);
			}
			request.setAttribute("list", l2);
			
			try {
				request.getRequestDispatcher("teacher/manageTeachWork3.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		
		}else if(id.equals("1")){
			System.out.println("审核通过！");
			List<ShowAllTeacherPassInfo> l1 = t1.manageT(teacher);
			List<ShowAllTeacherPassInfo> l2 = new ArrayList<ShowAllTeacherPassInfo>();
			//将list中的每一个pid取出来，对其进行汉化，在写入list中
			for(ShowAllTeacherPassInfo l:l1){
				
				ShowAllTeacherPassInfo satpi = new ShowAllTeacherPassInfo();
				String pid = l.getPid();
				
				//将9位密码拆成3位密码
				sub=SubStringUtil.sub(pid);
				for(String s:sub)
				{
					System.out.println(s);
				}

				//调用方法获取中文名
				String category ="";
				for(int i=0;i<sub.length;i++)
				{
					sub[i]=t1.getCategoryByPid(sub[i]);
					category+=sub[i];
					
				}
				String temp = category.substring(category.length()-4, category.length());
				System.out.println(temp);
				if(temp.equals("null"))
				{
					category=category.substring(0,category.length()-4);
				}
				System.out.println(category);
				
				satpi.setTname(l.getTname());
				satpi.setScore(l.getScore());
				satpi.setCategory(category);
				
				l2.add(satpi);
			}
			request.setAttribute("list", l2);
			
			try {
				request.getRequestDispatcher("teacher/manageTeachWork.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
	}
	
	@RequestMapping("delteach.htm")
	public void teachShow(HttpServletRequest request,HttpServletResponse response){
		
		String obj1 = request.getParameter("obj1");
		String obj2 = request.getParameter("obj2");
		System.out.println("教师ID ："+obj1);
		System.out.println("教学业绩ID :"+obj2);
		System.out.println("-----------------");
		String id = request.getParameter("manage");
		System.out.println(id);
		System.out.println("-----------------");
		
		ShowAllTeacherPassInfo s1 = new ShowAllTeacherPassInfo();
		s1.setTid(obj1);
		s1.setPid(obj2);
		t1.delT(s1);
		
		try {
			request.getRequestDispatcher("teachshowall.htm").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
