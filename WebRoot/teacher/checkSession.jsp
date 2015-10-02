<%@ page language="java" import="com.school.model.Teacher" pageEncoding="utf-8"%>

<%
	Teacher teacher = (Teacher)session.getAttribute("teacher");
    if(teacher == null){
    	out.print("<script type='text/javascript'>alert('你无权访问该页!');location.replace('../index.jsp');</script>");
    } 
%>