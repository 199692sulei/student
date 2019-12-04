<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="student.*,java.util.List" %>
<%
	List sStudent=(List)session.getAttribute("StudentList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息一览表并能按照姓名查找</title>
</head>
<body background="https://gtms04.alicdn.com/tps/i4/TB1dK1Jp5LaK1RjSZFxSuumPFXa.jpg">
	<table width="800" align="center">
		<caption><b><font size="6" face="隶书" color="red">学生信息一览表</font></b></caption>
		<tr height="25" style="font-size:12px" align="center">
			<td colspan="7">
			<form name="searchform" method="post" action="studentlistbynameservlet">
				请输入名字：
				<input type="text" name="ssname" value=""/>
				<input type="submit" name="btsearch" value="查询"/>
			</form>
			</td>
		</tr>
		<tr height="25" style="font-size:12px" bgcolor="#22cccc" align="center">
			<td>学号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>年龄</td>
			<td>所学专业</td>
			<td>爱好</td>
			<td>家庭住址</td>		
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
				</tr>
		<%}	
		}
		%>
	                                                                            
	</table>
	<hr width="800">
	<center><font size="2"><a href="index.jsp">返回主页</a></font></center> 
</body>
</html>