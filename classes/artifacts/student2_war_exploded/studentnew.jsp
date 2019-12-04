<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增时输入学生信息的页面</title>
<script language="javascript">
	 	function checkdata()
	 	{
	 		var ssno=document.studentform.ssno.value;
	 		if(ssno=="")
 			{
 				alert("学号不能为空，必须输入！");
 				document.studentform.ssno.focus();
 				return false;
 			}
	 		
	 		var ssname=document.studentform.ssname.value;
			if(ssname=="")
			{
				alert("姓名不能为空，必须输入！");
				document.studentform.ssname.focus();
				return false;
			}
	
			var ssage=document.studentform.ssage.value;
			if(ssage==""||isNaN(ssage))
			{
				alert("年龄必须输入，不能为空，并且只能为数字！");
				document.studentform.ssage.focus();
				return false;
			}
			var ssaddress=document.studentform.ssaddress.value;	
			if(ssaddress=="")
			{
				alert("家庭住址不能为空！");
				document.studentform.ssaddress.focus();
				return false;
			}

			return true;	
	 	}
	 	
	 	function isNumberic(str)
	 	{
	 		var len=str.length;
	 			for(var i=0;i<len;i++)
 				{
 					if(str.charAt(i)<'0'||str.charAt(i)>'9')
 					{
 						return false;
 					}		
 				}
	 		return true;
	 	}
	 
	 </script>                                                                                                                                                                                          
</head>
<body onload="document.studentform.ssno.focus()" background="https://gtms04.alicdn.com/tps/i4/TB1dK1Jp5LaK1RjSZFxSuumPFXa.jpg">
	<center>
		<h3>新增学生信息</h3>
		<form name="studentform" method="post" action="studentsaveservlet?action=new">
			<table>
				<tr>
					<td>学号:</td><td><input type="text" name="ssno" style="width:150px"></td>	
				</tr>
				<tr>
					<td>姓名：</td><td><input type="text" name="ssname" style="width:150px"></td>
				</tr>
				<tr>
					<td>性别：</td>
					<td><input type="radio" name="sssex" value="男" checked>男<input type="radio" name="sssex" value="女">女</td>
				</tr>
				<tr>
					<td>年龄：</td><td><input type="text" name="ssage" style="width:150px"></td>
				</tr>
				<tr>
					<td>所学专业:</td><td><input type="text" name="ssmajor" style="width:150px"></td>	
				</tr>
				<tr>
					<td>爱好:</td><td><input type="text" name="ssfav" style="width:150px"></td>	
				</tr>
				<tr>
					<td>家庭住址:</td><td><input type="text" name="ssaddress" style="width:150px"></td>	
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">
					<input type="submit" value="保存" onclick="return checkdata()">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="取消" onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>               