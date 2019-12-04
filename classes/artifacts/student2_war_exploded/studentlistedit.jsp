
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="student.*,java.util.List" %>
<%
	List <Student> sStudent=(List)session.getAttribute("StudentList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>对信息进行增删改</title>
<script type="text/javascript">
	function Delete(ssno)
	{
		if(confirm("你是否确定要删除当前记录数据？")==true)
			{
				window.location.href="studentdeleteservlet?ssno="+ssno; 
			}
	}

</script>
</head>
<body background="https://gtms04.alicdn.com/tps/i4/TB1dK1Jp5LaK1RjSZFxSuumPFXa.jpg">
<table width="800" align="center">
		<caption>学生信息一览表</caption>
		<tr height="25" style="font-size:12px" bgcolor="#22cccc" align="center">
			<td>学号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>年龄</td>
			<td>所学专业</td>
			<td>爱好</td>
			<td>家庭住址</td>
			<td>修改</td>
			<td>删除</td>		
		</tr>
		<%
		if(sStudent!=null)
		{
			
			for(int i=0;i<sStudent.size();i++)
			{
				Student student=(Student)sStudent.get(i);
					%>
				<tr height="20" style="font-size:12px" align="left">
					<td><%=student.getSsno() %></td>
					<td><%=student.getSsname() %></td>
					<td><%=student.getSssex() %></td>
					<td><%=student.getSsage() %></td>                                                                                                                                                                                                                                                                                                                                                                                                                                            
					<td><%=student.getSsmajor() %></td>
					<td><%=student.getSsfav() %></td>
					<td><%=student.getSsaddress() %></td>
					<td align="center"><a href="studenteditservlet?ssno=<%= student.getSsno() %>">修改</a></td>	
				 	<td align="center"><a href="javascript:Delete(<%= student.getSsno() %>)">删除</a></td>		
				</tr>
		
		
	<%
			}	
		}
		%>
	                                                                            
	</table>
	
	<table align="center">
	<tr height="25" style="font-size:12px"align="center">
	<!--  <hr width="800">-->
	<td><a href="studenteditservlet">增加学生信息</a></td>
	<td><center><a href="index.jsp">返回主页</a></center></td>
	</tr>
	</table>
	
</body>
</html>