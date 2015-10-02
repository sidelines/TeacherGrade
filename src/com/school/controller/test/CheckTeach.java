package com.school.controller.test;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.dao.TeacherPassDao;
import com.school.model.Checker;
import com.school.model.add.ShowAllTeacherPassInfo;
import com.school.util.SubStringUtil;


@Controller
public class CheckTeach {

	@Autowired TeacherPassDao tpd;
	
	@RequestMapping("checkteach.htm") 
	public void checkTeach(HttpServletRequest request,HttpServletResponse response){
		
		Checker ck = (Checker) request.getSession().getAttribute("checker");
		

		
		List<ShowAllTeacherPassInfo> showAllNot = tpd.ShowAllTeacherNotPassInfo();
		List<ShowAllTeacherPassInfo> showAllNot2 = new ArrayList<ShowAllTeacherPassInfo>();
		
		
		System.out.println(showAllNot.size());
		
		String sub[];
		
		for(ShowAllTeacherPassInfo l:showAllNot){
			ShowAllTeacherPassInfo satpi = new ShowAllTeacherPassInfo();
			String pid = l.getPid();
			
			sub = SubStringUtil.sub(pid);
			
			String category = "";
			for(int i = 0;i<sub.length;i++){
				sub[i] = tpd.getCategoryByPid(sub[i]);
				category+=sub[i];
			}
			
			String temp = category.substring(category.length()-4, category.length());
			System.out.println(temp);
			if(temp.equals("null")){
				category = category.substring(0, category.length()-4);
			}
			System.out.println(category);
			
			satpi.setTname(l.getTname());
			satpi.setTid(l.getTid());
			satpi.setPid(l.getPid());
			satpi.setCategory(category);
			satpi.setScore(l.getScore());
			satpi.setEviPic(l.getEviPic());
			satpi.setEviZip(l.getEviZip());
			satpi.setDepart_state(l.getDepart_state());
			
			showAllNot2.add(satpi);

		}
		

		request.setAttribute("list", showAllNot2);
		
//		Iterator it = showAllNot2.iterator();
//		
//		
//		
//		while(it.hasNext()){
//			ShowAllTeacherPassInfo san = (ShowAllTeacherPassInfo) it.next();
//			System.out.print(san.getTname()+" ");
//			System.out.print(san.getCategory()+" ");
//			System.out.print(san.getScore()+" ");
//			System.out.print(san.getEviPic()+" ");
//			System.out.print(san.getEviZip()+" ");
//			System.out.println(san.getDepart_state());
//		}
//		
		
//		for(ShowAllTeacherPassInfo san : showAllNot){
//			System.out.println("+++++++++++++++++++++++++");
//			System.out.print(san.getTname()+" ");
//			System.out.print(san.getPid()+" ");
//			System.out.print(san.getScore()+" ");
//			System.out.print(san.getEviPic()+" ");
//			System.out.print(san.getEviZip()+" ");
//			System.out.println(san.getDepart_state());
//		}
//		
		
		try {
			request.getRequestDispatcher("checker/checker1.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("checkpass.htm")
	public void checkPass(HttpServletRequest request,HttpServletResponse response){
		
		String s1 = request.getParameter("obj1");
		String s2 = request.getParameter("obj2");
		System.out.println(s1);
		System.out.println("-----------------------");
		System.out.println(s2);
		
		ShowAllTeacherPassInfo info = new ShowAllTeacherPassInfo();
		info.setTid(s1);
		info.setPid(s2);
		
		tpd.checkT(info);
		
		
		try {
			request.getRequestDispatcher("checkteach.htm").forward(request, response);
			System.out.println("here");
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("checknotpass.htm")
	public void checkNotPass(HttpServletRequest request,HttpServletResponse response){
		
		String s1 = request.getParameter("obj1");
		String s2 = request.getParameter("obj2");
		String reason = request.getParameter("reason");
		System.out.println(s1);
		System.out.println("-----------------------");
		System.out.println(s2);
		System.out.println("-----------------------");
		System.out.println(reason);
		
		ShowAllTeacherPassInfo info = new ShowAllTeacherPassInfo();
		info.setTid(s1);
		info.setPid(s2);
		info.setDepart_remark(reason);
		
		tpd.checkT2(info);
		
		
		try {
			request.getRequestDispatcher("checkteach.htm").forward(request, response);
			System.out.println("here");
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
