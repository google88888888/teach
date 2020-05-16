<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="Stusystem.bean.Information"%>
<%@page import="java.util.ArrayList"%>      
<%@page import="Stusystem.service.*"%>
<%@page import= "java.sql.PreparedStatement" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改学生信息</title>
</head>
<body background="BG.jpg">
<center>
<h3>按学号来修改学生年龄</h3>
<form  action="" method="post" >
<table>
<tr>
<td><b>请输入学生的学号</b></td>
<td><input type="text" name="id" ></td>
</tr>
<tr>
<td><b>请输入学生的专业</b></td>
<td><input type="text" name="major" ></td>
</tr>
</table>
<br><br>
<input type="submit" value="确定" />
<input type="button" value="返回" onclick="window.location.href = 'admin.jsp'">
</form>
<%
        response.setContentType("text/html;charset=GBK");
	    request.setCharacterEncoding("GBK");
	    ManageService a=new ManageService(); 
		String id=request.getParameter("id");
		String major=request.getParameter("major");
		Information info=new Information();
		boolean isflag=a.updateInfo(id,major);
		if (isflag==true)
		{	
%>
			修改成功!;
<%
		}
%>			
</center>
</body>
</html>
