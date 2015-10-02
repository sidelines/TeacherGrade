<%@ page language="java" import="java.util.*" pageEncoding="utf8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
#preview, .img, img{width:200px;  height:200px;}
</style>
<title>审核教学业绩</title>


<script type="text/javascript ">



    
function pass(obj){

        if(confirm("确定通过？")){
            var fa=obj.parentNode.parentNode.firstChild.nextSibling;
            var fb=fa.innerHTML;
            var fc=fa.parentNode.childNodes[15].innerHTML;
			var fd=fa.parentNode.childNodes[13].innerHTML;
            obj.parentNode.innerHTML="通过";
			fb=fd;
			location.href = "<%=path %>/checkpass.htm?obj1="+fb+"&obj2="+fc;
            
            return true;
        }

    }

function notpass(obj){

	var reason=prompt("请输入理由！");
	if(reason!=null){
            var fa=obj.parentNode.parentNode.firstChild.nextSibling;
				

            var fc=fa.parentNode.childNodes[15].innerHTML;
			var fd=fa.parentNode.childNodes[13].innerHTML;
            obj.parentNode.innerHTML="不通过";
			var fb=fd;

			location.href = "<%=path %>/checknotpass.htm?obj1="+fb+"&obj2="+fc+"&reason="+reason;
            
            return true;
        }
}




  /*  function notpass(obj){

        var active=obj.parentNode.innerHTML;
        var reason=prompt("请输入理由！");
		
 		if(confirm("确定")){
            var fa=obj.parentNode.parentNode.firstChild.nextSibling;

            var fc=fa.parentNode.childNodes[17].innerHTML;
			var fd=fa.parentNode.childNodes[15].innerHTML;
            obj.parentNode.innerHTML="不通过";
			var fb=fd;
alert(fc);
alert(fd);
			location.href = "<%=path %>/checknotpass.htm?obj1="+fb+"&obj2="+fc;
            
            return true;
        }

  
  }
*/
    function preview(file)
    {
        var prevDiv = document.getElementById('preview');
        if (file.files && file.files[0])
        {
            var reader = new FileReader();
            reader.onload = function(evt){
                prevDiv.innerHTML = '<img src="' + evt.target.result + '" />';
            }
            reader.readAsDataURL(file.files[0]);
        }
        else
        {
            prevDiv.innerHTML = '<div class="img" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\'' + file.value + '\'"></div>';
        }
    }

</script>
</head>

<body>
	<div>
        <h3 class="h3">审核教学业绩</h3>
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
                   <!--  <td width="100px" height="30px">
                        相关图片
                    </td> -->
                    <td width="100px" height="30px" >
                        证明材料  
                    </td>
                    <td width="100px" height="30px" >
                        审核状态
                    </td>
                 </tr>
            </thead>
            <tbody>
             
		<c:forEach var="user" items="${list }" >    
            <tr>    
            	 
                <td>${user.tname }</td>    
                <td>${user.category }</td>    
                <td>${user.score }</td>    
                <%-- <td>${user.eviPic }</td> --%>
                 <td><a href="<%=basePath %>file/${user.eviZip }.zip">下载</a></td>        
                        <form name="">
                    <td width="100px" height="60px" >
                        <button onclick="pass(this);">通过</button>
                        <button onclick="notpass(this);">不通过</button>
                    </td>
                 </form>
                 <td style="display:none;">${user.tid }</td>
				<td style="display:none;">${user.pid }</td>
            </tr>    
        </c:forEach> 
                    
                    
       
             

            </tbody>
        </table>
        <div id="preview"></div>
    </div>
</body>
</html>

