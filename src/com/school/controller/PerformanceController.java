package com.school.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.dao.TeacherPassDao;
import com.school.model.BianHao;
import com.school.model.TeachPass;
import com.school.model.Teacher;
import com.school.model.add.Category;
import com.school.model.add.ShowAllTeacherPassInfo;
import com.school.util.SubStringUtil;


@Controller
public class PerformanceController {
	
	@Autowired
	private TeacherPassDao teacherPassDao;
	
	//实现只有一个select的菜单的选项
	@RequestMapping("addpassone.htm")
	public String addpassone(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession hs= request.getSession(true);
		Teacher t = (Teacher)hs.getAttribute("teacher");
		//从teacher里返回depardid通过tid
		
		String tid=t.getTid();
		System.out.println(tid);
		
		String departid = teacherPassDao.getTeacherInfoById(t);
		//int departid = Integer.getInteger(departid1);
		
		System.out.println("教师专业id:"+departid);
		int departid1 = Integer.parseInt(departid);
		
		System.out.println(departid1);
		//从密码表里返回对应的密码
		String parameter = request.getParameter("parameter");
		System.out.println(parameter);
		
		BianHao bh1 = new BianHao();
		bh1.setCategory(parameter);
		String bid1 = teacherPassDao.getPidByCategory(bh1);
		System.out.println(bid1);
		
		String selectone = request.getParameter("selectone");
		System.out.println(selectone);
		
		BianHao bh2 = new BianHao();
		bh2.setCategory(selectone);
		String bid2 =teacherPassDao.getPidByCategory(bh2);
		System.out.println(bid2);
		
		String pid1 = parameter+ " " +selectone;
		System.out.println(pid1);
		
		String pid = bid1+bid2;
		System.out.println("密码:"+pid);
		
		TeachPass tpass = new TeachPass();
		tpass.setTid(tid);
		tpass.setpId(pid);
		tpass.setDepartId(departid1);
		tpass.setTcp_id(teacherPassDao.findlastdateID());
		teacherPassDao.updatepass(tpass);
		
		return "teacher/addTeachWork";
	}
	
	@RequestMapping("addpasstwo.htm")
	public String addpasstow(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession hs= request.getSession(true);
		Teacher t = (Teacher)hs.getAttribute("teacher");
		//从teacher里返回depardid通过tid
		
		String tid=t.getTid();
		System.out.println(tid);
		
		String departid = teacherPassDao.getTeacherInfoById(t);
		int departid1 = Integer.parseInt(departid);
		System.out.println("教师专业id:"+departid);
		//从密码表里返回对应的密码
		String parameter = request.getParameter("parameter");
		System.out.println(parameter);
		
		BianHao bh1 = new BianHao();
		bh1.setCategory(parameter);
		String bid1 = teacherPassDao.getPidByCategory(bh1);
		System.out.println(bid1);
		
		String selectone = request.getParameter("selectone");
		System.out.println(selectone);
		
		BianHao bh2 = new BianHao();
		bh2.setCategory(selectone);
		String bid2 =teacherPassDao.getPidByCategory(bh2);
		System.out.println(bid2);
		
		String selecttwo = request.getParameter("selecttwo");
		System.out.println(selecttwo);
		
		BianHao bh3 = new BianHao();
		bh3.setCategory(selecttwo);
		String bid3 =teacherPassDao.getPidByCategory(bh3);
		System.out.println(bid3);
		
		String pid1 = parameter+ " " +selectone + " " +selecttwo;
		System.out.println(pid1);
		
		String pid = bid1+bid2+bid3;
		System.out.println("密码"+pid);
		
		TeachPass tpass = new TeachPass();
		tpass.setTid(tid);
		tpass.setpId(pid);
		tpass.setDepartId(departid1);
		tpass.setTcp_id(teacherPassDao.findlastdateID());
		teacherPassDao.updatepass(tpass);
		return "teacher/addTeachWork";
	}
	
	//查询所有老师的记录
	@RequestMapping("showTeachWork.htm")
	public String ShowAllTeacherPassInfo(HttpServletRequest request,HttpServletResponse response)
	{
		List<ShowAllTeacherPassInfo> ShowAllTeacherPassInfo = teacherPassDao.ShowAllTeacherPassInfo();
		String sub[] ;
		
		List<ShowAllTeacherPassInfo> ShowAllTeacherPassInfoAll= new ArrayList<ShowAllTeacherPassInfo>();
		
		//将list里的pid取出放入数组中
		for(ShowAllTeacherPassInfo ss:ShowAllTeacherPassInfo)
		{
			ShowAllTeacherPassInfo satpi = new ShowAllTeacherPassInfo();
		
			String pid= ss.getPid();
			
//			System.out.println("length");
//			System.out.println(pid.length());
//			System.out.println("length");
			
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
				sub[i]=teacherPassDao.getCategoryByPid(sub[i]);
				category+=sub[i];
				
			}
			String temp = category.substring(category.length()-4, category.length());
			System.out.println(temp);
			if(temp.equals("null"))
			{
				category=category.substring(0,category.length()-4);
			}
			System.out.println(category);
			
			satpi.setTname(ss.getTname());
			satpi.setDepartname(ss.getDepartname());
			satpi.setDate(ss.getDate());
			satpi.setScore(ss.getScore());
			satpi.setCategory(category);
			
			ShowAllTeacherPassInfoAll.add(satpi);

		}
		
		
		
		
//		System.out.println(ShowAllTeacherPassInfo);
		request.setAttribute("ShowAllTeacherPassInfoAll", ShowAllTeacherPassInfoAll);

		return "teacher/showTeachWork";
	}
}
