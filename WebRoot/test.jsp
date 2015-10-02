<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>教师数据</h1>
    <c:forEach var="showAdminPageDate" items="${showAdminPageDates }">
    	${showAdminPageDate.departname }
    	${showAdminPageDate.tname }
    	${showAdminPageDate.score }
    </c:forEach>
    <h1>系别数据</h1>
    <c:forEach var="showAdminPageDepart" items="${showAdminPageDeparts }">
    	${showAdminPageDepart.departname }
    	${showAdminPageDepart.score }
    </c:forEach>
  </body>
</html>
