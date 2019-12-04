<!--<%@page import="com.sun.xml.internal.txw2.Document"%>-->
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
<title>分页显示所有学生基本信息</title>
<script>
	function Goto(){
	window.location.href="studentlistbypage.jsp?currentPage="+document.getElementById("currentPage").value;
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
		</tr>
	<%
		int currentPage=1;//当前默认页为第一页
		
		String strCurrentPage=request.getParameter("currentPage");
		if(strCurrentPage==null){
			strCurrentPage="1";
		}
		currentPage=Integer.parseInt(strCurrentPage);
		
		int recordCount=0;
		int pageSize=4;
		int pageCount=0;
		if(sStudent!=null){
			recordCount=sStudent.size();
			//获取总页数
			if(recordCount%pageSize==0){
				pageCount=recordCount/pageSize;
			}else{
				pageCount=recordCount/pageSize+1; 
			}
			int start;
			//把记录指针移指当前页第一条记录之前
			if((currentPage-1)*(pageSize)==0){
				start=0;
			}else{
				start=(currentPage-1)*pageSize;
			}
			
			
			int n=0;
			for(int i=start;i<sStudent.size();i++){
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
				
				<%
				n++;
				if(n>=pageSize){			//当前页显示完后推出循环
					break;
				}
			}
		}
	%>
</table>
<hr width="800">
<center>
<font size='2'>
<a href='index.jsp'>返回主页</a>&nbsp;
共有<%= recordCount %> 条记录 &nbsp;第   <%= currentPage %> 页/共<%= pageCount %>页;
<input type='text' id='currentPage'style='width:15px;height:15px'/>&nbsp;&nbsp;
 <a href="javascript:Goto()">Go</a> 
<%
	
	if(pageCount==1){
		;
	}else{
		if(currentPage==1){
			out.print("<a href='studentlistbypage.jsp?currentPage="+(currentPage+1)+"'>下一页</a>&nbsp;");
			out.print("<a href='studentlistbypage.jsp?currentPage="+pageCount+"'>末页</a>");
		}else if(currentPage==pageCount){
			out.print("<a href='studentlistbypage.jsp?currentPage=1'>首页</a>&nbsp;");
			out.print("<a href='studentlistbypage.jsp?currentPage="+(currentPage-1)+"'>上一页</a>");
		}else{
			out.print("<a href='studentlistbypage.jsp?currentPage=1'>首页</a>&nbsp;");
			out.print("<a href='studentlistbypage.jsp?currentPage="+(currentPage-1)+"'>上一页</a>&nbsp;");
			out.print("<a href='studentlistbypage.jsp?currentPage="+(currentPage+1)+"'>下一页</a>&nbsp;");
			out.print("<a href='studentlistbypage.jsp?currentPage="+pageCount+"'>末页</a>");
		}
	}
%>


</font>
</center>
</body>
</html>