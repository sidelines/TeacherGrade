<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/checker/checkSession.jsp" %>
<%
	String path = request.getContextPath();
%>
<html>
	<head>
		<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
		<title>管理首页</title>
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/style_admin.css">
	</head>

	<script>
function mfk()
{
   if(shang.style.display=='none')
    {
     shang.style.display='';
    }
   else
   {
     shang.style.display='none';
   }
}
</script>
	<body scroll=no topmargin="0" leftmargin="0">
		<table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td colspan="3">
					<iframe frameBorder="0" scrolling="no" id="top" name="top" src="<%=path %>/checker/top.jsp"
						height="" width="100%" target="_top">
					</iframe>
				</td>
			</tr>
			<tr>
				<td id='shang' width="162" height="100%">
					<iframe frameBorder="0" id="left" name="left" src="<%=path %>/checker/left.jsp"
						height="100%" width="162" target="main">
					</iframe>
				</td>
				<td align="center" class="unnamed1" onClick="mfk();" height="100%">
					<table width="100%" height="100%" border="0" cellpadding="0"
						cellspacing="0">
						
					</table>
				</td>
				<td width="100%" height="100%">
					<iframe frameBorder="0" id="main" name="main" scrolling="no"
						src="<%=path %>/checker/right.jsp" height="100%" width="100%"></iframe>
				</td>
			</tr>
		</table>
	</body>
</html>


