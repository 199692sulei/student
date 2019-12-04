<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
	<style>


		h1{
			margin-left: 324px;
			margin-top: 70px;
			color: orange;
		}
		table tr td .left{
			width: 282px;
			height: 284px;
			margin-left: -480px;
		}
	</style>
</head>
<body background="https://gtms04.alicdn.com/tps/i4/TB1dK1Jp5LaK1RjSZFxSuumPFXa.jpg">
	<h1>欢迎使用学生信息维护系统</h1>
	<table width="100%" height="100%">
		<tr>
			<td align="center" valign="middle">
				<table class="left">
					<tr>
						<td align="center"><font face="华文新魏" color="#ff0000" size="6"><b>系统功能</b></font></td>
					</tr>	
					<tr height="60">
						<td align="center"><font face="隶书"  size="6"><b><a href="studentlistservlet?action=list">学&nbsp;生&nbsp;信&nbsp;息&nbsp;列&nbsp;表</a></b></font></td>
					</tr>	
					<tr height="60">
						<td align="center"><font face="隶书"  size="6"><b><a href="studentlistservlet?action=listbyname">学&nbsp;生&nbsp;信&nbsp;息&nbsp;查&nbsp;询</a></b></font></td>
					</tr>	
					<tr height="60">
						<td align="center"><font face="隶书"  size="6"><b><a href="studentlistservlet?action=edit">学&nbsp;生&nbsp;数&nbsp;据&nbsp;维&nbsp;护</a></b></font></td>
					</tr>	
					<tr height="60">
						<td align="center"><font face="隶书"  size="6"><b><a href="studentlistservlet?action=listbypage">数&nbsp;据&nbsp;分&nbsp;页&nbsp;显&nbsp;示</a></b></font></td>
					</tr>	
				
				</table>
			</td>	
		</tr>
	</table>
</body>
</html>