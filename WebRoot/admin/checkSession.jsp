<%@ page language="java" import="com.school.model.Admin" pageEncoding="utf-8"%>

<%
/* 	Teacher teacher = (Teacher)session.getAttribute("teacher"); */
	/* Checker checker = (Checker)session.getAttribute("checker"); */
	Admin admin = (Admin)session.getAttribute("admin");
    if(admin == null){
    	out.print("<script type='text/javascript'>alert('你无权访问该页!');location.replace('../index.jsp');</script>");
    } 
%>