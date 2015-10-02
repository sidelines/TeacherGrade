<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>
body,div,table,select，h3,tr,td{margin:0; padding:0; list-style:none;}
.h3{font-size:16px; margin:10px 0;}
table thead tr{font-weight:bold;}
table tr td{text-align:center; font-size:12px;}
</style>
<title>审核教学业绩</title>
</head>

<body>
	<div>
        <h3 class="h3">审核教学业绩</h3>
         <select class="select" id="sel">
                <option value="1">所有教学业绩</option>
                <option value="2">审核已通过</option>
                <option value="3">审核未通过</option>
                <option value="4">未审核</option>
            </select>
        <table width="700px" border="1" cellspacing="0" cellpadding="0" id="Table">
        	<thead>
                <tr>
                    <td width="80px" height="30px" >
                        教师名字  
                    </td>
                    <td width="240px" height="30px">
                        教学业绩 
                    </td>
                    <td width="80px" height="30px">
                        业绩分
                    </td>
                    <td width="100px" height="30px">
                        相关图片
                    </td>
                    <td width="100px" height="30px" >
                        证明材料  
                    </td>
                    <td width="100px" height="30px" >
                        审核状态  
                    </td>
                 </tr>
            </thead>
            <tbody>
             
             <tr>
                <td width="80px" height="60px" >
                        苗爷爷  
                    </td>
                    <td width="240px" height="60px">
                        形式与政策 
                    </td>
                    <td width="80px" height="60px">
                        1900
                    </td>
                    <td width="100px" height="60px">
                        <a href="#">计算机技术学院.png</a>
                    </td>
                    <td width="100px" height="60px" >
                        <a href="#">计算机技术学院.zip</a>  
                    </td>
                    <td width="100px" height="60px" >
                        <button>通过</button><button>不通过</button>    
                    </td>
             </tr>
             
            </tbody>
        </table>
    </div>
</body>
</html>
