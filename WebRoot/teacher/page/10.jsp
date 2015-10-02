<%@ page language="java" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>管理员-添加</title>
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/style_admin.css">
		
	<style>
body,div,table，select,h3,tr,td{margin:0; padding:0; list-style:none;}
.h3{font-size:16px; margin:10px 0;}
.table{border:1px solid #000; margin-left:100px; border-radius:5px; padding:20px;}
table thead tr{font-weight:bold; margin-bottom:20px;}
table tr td{ font-size:12px;}
</style>	
	
	</head>

	<body onLoad="loadAll( )">
	<div>
    	<p>
        </p>
        <table width="500" class="table">
        <form target="waiguan_hidden_frame" action="<%= basePath%>upload/up.do" method="post" enctype="multipart/form-data">
    	 </tr>
                <tr>
                	<td height="5"><input type="file" name="f1"/></td>
                	<td><input type="submit" value="保存" onclick="return confirm('你确定要保存吗？')"/></td>
                </tr>
    	
    </form>
    <iframe name="waiguan_hidden_frame" id="waiguan_hidden_frame" style="display:none"></iframe> 
            <form action="../../addpassone.htm" method="post" name="myform">
            	<div style="display: none">
					<input type="text" name="parameter" value="校级开放实验"/>
				</div>
                <tr>
                    <td height="30">
                        <select name="selectone" id="province" onChange="changeCity()">
                        <option value="优秀">优秀</option>
                        <option value="立项">立项</option>
                        </select>
                       
                    </td>
                </tr>
               
                 <tr align="right"><td height="5"><input name="b1" type="submit" value=" 添加"></td></tr>
            </form>
           
        </table>
    </div>
</body>
</html>
