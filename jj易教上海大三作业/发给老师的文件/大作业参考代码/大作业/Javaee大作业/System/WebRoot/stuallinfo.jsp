<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="Stusystem.bean.Information"%>
<%@page import="java.util.ArrayList"%>      
<%@page import="Stusystem.tools.DBHelp"%>
<%@page import="Stusystem.service.ManageService" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生信息总览</title>
</head>
<body background="BG.jpg">
<center>
<h3>查看所有学生信息</h3>
<%
//查看整个学生表
			ArrayList<Information> A=ManageService.SearchAll() ;			
%>			
学号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
年龄&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
年级&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
专业
<br>
<% 			
			for(int i=0;i<A.size();i++)
			{
%>				
				&nbsp;&nbsp;<%=A.get(i).getId()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=A.get(i).getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=A.get(i).getAge()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=A.get(i).getSex()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=A.get(i).getGrade()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;<%=A.get(i).getmajor()%>			
			<br>
						
<% 
			}
			
%>
<br><br>
<form>
<input type="button" value="返回" onclick="window.location.href = 'student.jsp'">
</form>
</center>
</body>
</html>