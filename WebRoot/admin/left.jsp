<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>控制面板</title>

<script language="javascript" type="text/javascript">
	if (document.getElementById) {
		document.write('<style type="text/css">\n')
		document.write('.submenu{display: none;}\n')
		document.write('</style>\n')
	}

	function SwitchMenu(obj) {
		if (document.getElementById) {
			var el = document.getElementById(obj);
			var ar = document.getElementById("masterdiv").getElementsByTagName("span");
			if (el.style.display != "block") {
				for ( var i = 0; i < ar.length; i++) {
					if (ar[i].className == "submenu")
						ar[i].style.display = "none";
				}
				el.style.display = "block";
			} else {
				el.style.display = "none";
			}
		}
	}

	function killErrors() {
		return true;
	}

	window.onerror = killErrors;
</script>

<link rel="stylesheet" type="text/css" href="<%=path %>/css/style_admin.css">
<base target="main">
</head>

<body >
	<div id="masterdiv">
		<table border="0" width="158" id="table1" cellpadding="4" style="border-collapse: collapse">
			<tr>
				<td><font ><b>系统后台管理面板</b> </font></td>
			</tr>
			<tr>
				<td>
					<p align="center">
						<font color="#FFFFFF">[<a target="_parent" href="<%=path%>/teacherLogOut.htm"><font color=>安全退出</font> </a>]<p> [<a target="_parent" href="#"><font >返回首页</font> </a>]
						</font>
				</td>
			</tr>
		</table>
		
		<div class="menutitle" onClick="SwitchMenu('sub1')">
			.教师信息模块
			<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
				<TR>
					<TD height="3"></TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff" height="1"></TD>
				</TR>
			</TABLE>
		</div>
		<span class="submenu" id="sub1">
			<TABLE cellSpacing="0" cellPadding="0" width="158" background="<%=path %>/images/menu_2.gif" border="0">
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/addTeachWork.jsp">修改登录密码</a></TD>
				</TR>
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/manageTeachWork.jsp">查看个人信息</a></TD>
				</TR>
			</table>
		</span>
		
		<div class="menutitle" onClick="SwitchMenu('sub2')">
			.统计教学业绩模块
			<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
				<TR>
					<TD height="3"></TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff" height="1"></TD>
				</TR>
			</TABLE>
		</div>
		<span class="submenu" id="sub2">
			<TABLE cellSpacing="0" cellPadding="0" width="158" background="<%=path %>/images/menu_2.gif" border="0">
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/showAdminPageDate.htm">统计教学业绩</a></TD>
				</TR>
				<%-- <TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/manageTeachWork.jsp">管理教学业绩</a></TD>
				</TR>
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/showTeachWork.jsp">查看所有业绩</a></TD>
				</TR> --%>
			</table>
		</span>
		
		<div class="menutitle" onClick="SwitchMenu('sub3')">
			.科研信息模块
			<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
				<TR>
					<TD height="3"></TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff" height="1"></TD>
				</TR>
			</TABLE>
		</div>
		<span class="submenu" id="sub3">
			<TABLE cellSpacing="0" cellPadding="0" width="158" background="<%=path %>/images/menu_2.gif" border="0">
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/addTeachWork.jsp">添加科研信息</a></TD>
				</TR>
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/manageTeachWork.jsp">管理科研信息</a></TD>
				</TR>
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/showTeachWork.jsp">查看所有科研</a></TD>
				</TR>
			</table>
		</span>

		<div class="menutitle" onClick="SwitchMenu('sub4')">
			.教学工作量模块
			<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
				<TR>
					<TD height="3"></TD>
				</TR>
				<TR>
					<TD bgColor="#ffffff" height="1"></TD>
				</TR>
			</TABLE>
		</div>
		<span class="submenu" id="sub4">
			<TABLE cellSpacing="0" cellPadding="0" width="158" background="<%=path %>/images/menu_2.gif" border="0">
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/addTeachWork.jsp">添加教学工作量</a></TD>
				</TR>
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/manageTeachWork.jsp">管理教学工作量</a></TD>
				</TR>
				<TR>
					<TD height=25 width="100%" align="center" bgcolor="#D6E0EF"><img border="0" src="<%=path %>/image/icon_arrow_r.gif" width="13" height="13"> <a class="menu" target="main" href="<%=path%>/teacher/showTeachWork.jsp">查看教学工作量</a></TD>
				</TR>
			</table>
		</span>

	</div>



</body>

</html>
