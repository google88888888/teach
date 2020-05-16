<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="Stusystem.bean.Information"%>
<%@page import="Stusystem.service.ManageService" %>
<%@page import="java.util.ArrayList"%>      
<%@page import="Stusystem.service.*"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索学生信息</title>
</head>
<body background="BG.jpg">
<center>
<h3>按学号查询学生信息</h3>
<form  action="" method="post" >
<table>
<tr>
<td><b>请输入学生的学号</b></td>
<td><input type="text" name="id" ></td>
</tr>
</table>
<br><br>
<input type="submit" value="确定" />
<input type="button" value="返回" onclick="window.location.href = 'student.jsp'">
</form>
<br><br>	
学号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
年龄&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
年级&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
专业
<br><br>	
<%

		ManageService a=new ManageService();
		String id=request.getParameter("id");
		Information info=new Information();
		info=a.SearchInfo(id);
				if(info.getId()!=null)
		{	
%>		
		<%=info.getId()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%=info.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%=info.getAge()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<%=info.getSex()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%=info.getGrade()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
		<%=info.getmajor()%>
<%
		}

%>		
</center>
</body>
</html>

