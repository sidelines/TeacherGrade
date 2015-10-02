<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tab选项卡</title>
<link type="text/css" rel="stylesheet" href="<%=basePath %>admin/style.css"/>
<script type="text/javascript" src="<%=basePath %>admin/tab.js"></script>
</head>

<body>
<div id="notice" class="notice">
    <div id="notice-tit" class="notice-tit">
    <ul>
      <li class="select"><a href="#">教师</a></li>
      <li><a href="#">院系</a></li>
    
    </ul>
    </div>
         <div id="notice-con" class="notice-con">
             <div class="mod1">
             <table border='1' cellpadding='0' spacing='0' id="mytable">
                <tr>
                  <td>教师名</td>
                  <td>院系</td>
                  <td>总分</td>
                </tr>
                <c:forEach var="showAdminPageDate" items="${showAdminPageDates }">
                <tr>
                  <td>${showAdminPageDate.tname }</td>
                  <td>${showAdminPageDate.departname }</td>
                  <td>${showAdminPageDate.score }</td>
                </tr>
                </c:forEach>
            </table>

             </div>
             <div class="mod2" style="display:none">
                <table border='1' cellpadding='0' spacing='0' id="mytable">
                  <tr>
                    <td>系名</td>
                    <td>总分</td>
                  </tr>
                  <c:forEach var="showAdminPageDepart" items="${showAdminPageDeparts }">
                  <tr>
                    <td>${showAdminPageDepart.departname }</td>
                    <td>${showAdminPageDepart.score }</td>
                  </tr>
                   </c:forEach>
                </table>
      </div>
               
</div>
</body>
</html>
