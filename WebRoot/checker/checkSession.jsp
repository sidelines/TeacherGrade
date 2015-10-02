<%@ page language="java" import="com.school.model.Checker" pageEncoding="utf-8"%>

<%
/* 	Teacher teacher = (Teacher)session.getAttribute("teacher"); */
	Checker checker = (Checker)session.getAttribute("checker");
    if(checker == null){
    	out.print("<script type='text/javascript'>alert('你无权访问该页!');location.replace('../index.jsp');</script>");
    } 
%>