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
        <form>
            <select class="select" id="sel">
                <option value="1">所有教学业绩</option>
                <option value="2">审核已通过</option>
                <option value="3">审核未通过</option>
                <option value="4">未审核</option>
            </select>
        </form>
        <table width="700px" border="1" cellspacing="0" cellpadding="0" id="Table">
        	<thead>
                <tr>
                    <td width="280px" height="30px">
                        教学业绩 
                    </td>
                    <td width="140px" height="30px">
                        业绩分
                    </td>
                    <td width="140px" height="30px">
                        审核状态
                    </td>
                    <td width="70px" height="30px" >
                        修改  
                    </td>
                    <td width="70px" height="30px" >
                        删除  
                    </td>
                 </tr>
            </thead>
            <tbody>
             
             <tr>
                <td width="280px" height="30px">
                	形式与政策
                </td>
                <td width="140px" height="30px">
                	1900
                </td>
                <td width="140px" height="30px">
                	已通过
                </td>
                <td width="70px" height="30px" >
                    <button>修改</button>  
                </td>
                <td width="70px" height="30px" >
                    <button>删除</button>  
                </td>
             </tr>
             
            </tbody>
        </table>
    </div>
</body>
</html>