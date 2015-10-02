<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="checkSession.jsp"%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>管理人员-管理</title>
<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
</head>
<body>
    <div>
        <h3 class="h3">所有教师教学业绩</h3>
        <table width="700px" border="1" cellspacing="0" cellpadding="0" id="Table">
        	<thead>
                <tr>
                    <td width="140px" height="30px" >
                        教师名字  
                    </td>
                    <td width="280px" height="30px">
                        教学业绩 
                    </td>
                    <td width="140px" height="30px">
                        业绩分
                    </td>
                    <td width="140px" height="30px">
                        审核状态
                    </td>
                 </tr>
            </thead>
            <tbody>
             
            <c:forEach var="teacher" items="ShowAllTeacherPassInfoAll">
             <tr>
                <td width="140px" height="30px">
                	teacher.tname
                </td>
                <td width="280px" height="30px">
                	teacher.category
                <td width="140px" height="30px">
                	teacher.score
                </td>
                <td width="140px" height="30px">
                	已通过
                </td>
             </tr>
             </c:forEach> 
             
            </tbody>
        </table>
    </div>
</body>
</html>