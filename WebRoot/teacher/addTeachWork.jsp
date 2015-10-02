<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>管理员-添加</title>
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/style_admin.css">
	</head>

	 <body>
	 	
  			 <select  name="pageselect" onchange="self.location.href=options[selectedIndex].value"
  			 >
            	<option>--请选择。。。</option>
            	<option value="/School/teacher/page/1.jsp">本科教学工程</option>
            	<option value="/School/teacher/page/2.jsp">教学名师</option>
            	<option value="/School/teacher/page/3.jsp">教学项目立项</option>
            	<option value="/School/teacher/page/4.jsp">教学成果奖</a></option>
            	<option value="/School/teacher/page/5.jsp">多媒体课件大赛</a></option>
            	<option value="/School/teacher/page/6.jsp">教材</a></option>
            	<option value="/School/teacher/page/7.jsp">教学改革类论文</a></option>
            	<option value="/School/teacher/page/8.jsp">讲课比赛</a></option>
            	<option value="/School/teacher/page/9.jsp">大学生创新创业项目</a></option>
            	<option value="/School/teacher/page/10.jsp">校级开放实验</a></option>
            	<option value="/School/teacher/page/11.jsp">院级开放实验</a></option>
            	<option value="/School/teacher/page/12.jsp">本科实验</a></option>
            	<option value="/School/teacher/page/13.jsp">室建设项目</a></option>
            	<option value="/School/teacher/page/14.jsp">指导本科毕业设计（论文）</a></option>
            	<option value="/School/teacher/page/15.jsp">研究生创新基金项目</a></option>
            	<option value="/School/teacher/page/16.jsp">数学建模、电子设计竞赛、挑战杯</a></option>
            	<option value="/School/teacher/page/17.jsp">A类</a></option>
            </select>
          
  </body>
</html>
