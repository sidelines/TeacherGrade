<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="checkSession.jsp" %>
<html>

	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理员-添加</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
		
		<script type="text/javascript">
		function fun_check_form(){
			if(document.form1.name.value==""){
				alert("请输入新闻标题信息。");
				return false;
			}else if(document.form1.serialNumber.value==""){
				alert("请输入新闻内容。");
				return false;
			}else{
				return true;
			}
		}
		
		</script>
	</head>

	<body>
	
		<form name="form1" action="updateProduct.jsp" method="post" onSubmit="return fun_check_form()">
			<table cellspacing="1" cellpadding="4" width="100%"  align="left"
				class="tableborder" id="table3">

				<input type="hidden" name="action" value="update" />
				<input type="hidden" name="productID" value="${product.productID }" />
				<tr>
					<td colspan="12" class="header">
						添加商品信息
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品编号：
					</td>
					<td class="altbg2">
						<input type="text" name="serialNumber" size="34" value="${product.serialNumber }" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品名称：
					</td>
					<td class="altbg2">
						<input type="text" name="name" size="34" value="${product.name }" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品商标：
					</td>
					<td class="altbg2">
						<input type="text" name="brand" size="34" value="${product.brand }" />
					</td>
				</tr>	
				<tr>
					<td class="altbg1">
						商品型号：
					</td>
					<td class="altbg2">
						<input type="text" name="model" size="34" value="${product.model }" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品价格：
					</td>
					<td class="altbg2">
						<input type="text" name="price" size="34" value="${product.price }" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品图片：
					</td>
					<td class="altbg2">
						<input type="text" name="picture" size="34" value="${product.picture }" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品介绍：
					</td>
					<td class="altbg2">
						<textarea rows="5" cols="60" name="description" >${product.description }</textarea>
					</td>
				</tr>
				

				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2">
						<input type="submit" value="提交" name="B1" />
						&nbsp;
						<input type="reset" value="重置" name="B2" />
					</td>
				</tr>

			</table>
		</form>
	</body>

</html>
