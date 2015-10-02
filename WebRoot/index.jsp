<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testLogin.jsp' starting page</title>
    
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
  	<form action="login.htm" method="post">
  		用户名：<input type="text" name="name"><p>
  		密码：<input type="password" name="pass"><p>
  		<input type="radio" value="teacher" name="logType" checked="checked"><span class="text">教师</span> 
		<input type="radio" value="checker" name="logType"><span class="text">审核员</span> 
		<input type="radio" value="admin" name="logType"> <span class="text">管理员</span><p>
		<input type="submit" value="登陆">
		
  	</form>
  </body>
</html>
