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
	<script language="JavaScript" >
	<!--下拉框级联开始-->
	var cityList = new Array( ); //定义城市数组
	cityList['国家级'] = ['第一名','第一层次','第二层次','第三层次','各类单项奖、优秀指导教师奖等'];
	cityList['省级'] = ['第一名','第一层次','第二层次','第三层次','各类单项奖、优秀指导教师奖等'];
	function changeCity( )
	{
	var province=document.myform.province.value;
	document.myform.city.options.length=0;
	for (var i in cityList)
	{
	if (i == province)
	{
	for (var j in cityList[i]) //根把对应城市动态创建区域option
	{
	document.myform.city.options.add(new Option(cityList[i][j], cityList[i][j]));
	}
	}
	}
	document.myform.city.options.selctIndex=0;
	}
	
	function loadAll( ) //动态创建城市option
	{ for (var i in cityList)
	{ document.myform.province.options.add(new Option(i, i));
	}
	document.myform.province.selectedIndex = 0;
	}
	

</script>	
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
            <form action="../../addpasstwo.htm" method="post" name="myform">
            <div style="display: none">
					<input type="text" name="parameter" value="A类"/>
				</div>
                <tr>
                    <td height="30">
                        <select name="selectone" id="province" onChange="changeCity()">
                        <option>--请选择城市--</option></select>
                        <select name="selecttwo" id="city" >
                            <option>--请选择区域--</option>
                        </select>
                    </td>
                </tr>
               
                   <tr align="right"><td height="5"><input name="b1" type="submit" value=" 添加"></td></tr>
            </form>
         
        </table>
    </div>
</body>
</html>
