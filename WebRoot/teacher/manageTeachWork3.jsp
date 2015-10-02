<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="checkSession.jsp"%>
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
.select{ text-align:center; margin:10px 0;}
table thead tr{font-weight:bold;}
table tr td{text-align:center; font-size:12px;}
</style>
    <script type="text/javascript ">
       function del(obj){
             if(confirm("确认删除？")){
           // var index = obj.selectedIndex;
			//var a=obj.children[9].value;
			//alert(a);
			var temp = obj.getAttribute('data-index').split("-"),
				temp_index = temp[0],
				temp_sec = temp[1];
			console.log(temp_index+"    "+temp_sec);
			obj.parentNode.remove();
   			location.href = "<%=path %>/delteach.htm?obj1="+temp_index+"&obj2="+temp_sec+"&manage="+2;
            }
        }

		function choose(obj){
 			var index = obj.selectedIndex;
			var a=obj.children[index].value;
   			location.href = "<%=path %>/teachshowall.htm?manage="+a;
		}
    </script>
<title>所有教学业绩</title>
</head>

<body>
	<div>
            <select class="select" id="sel" onchange="choose(this)">
<!--                 <option value="4">所有教学业绩</option> -->
                <option value="1">审核已通过</option>
                <option value="0">审核未通过</option>
                <option value="2" selected>未审核</option>
            </select>
        
        <table width="700px" border="1" cellspacing="0" cellpadding="0" id="Table">
        	<thead>
                <tr>
                    <td width="300px" height="30px">
                        教学业绩 
                    </td>
                    <td width="160px" height="30px">
                        业绩分
                    </td>
                    <td width="160px" height="30px">
                        审核状态
                    </td>
                    <td width="80px" height="30px" >
                        删除  
                    </td>
                 </tr>
            </thead>
            <tbody>
             
             <c:forEach var="pass" items="${list}">
             
             
             <tr>
                <td width="300px" height="30px">
                	${pass.category }
                </td>
                <td width="160px" height="30px">
                	${pass.score }
                </td>
                <td width="160px" height="30px">
                	未审核
                </td>
                 <td width="80px" height="30px" data-index="${pass.tid }-${pass.pid }" >                  
                    <button onclick="del(this.parentNode)">删除</button>
                </td>
              <%--   <td style="display:none;">${pass.tid }</td>
				<td style="display:none;">${pass.pid }</td> --%>

             </tr>
             </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
