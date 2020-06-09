<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="zyd.bean.Information"%>
<%@page import="java.util.ArrayList"%>      
<%@page import="zyd.service.*"%>
<%@page import= "java.sql.PreparedStatement" %>  
<html>
<style type="text/css">
       h3{
    		font-size: 32px;   /*16px为默认设置*/
    		margin:0;   
    				}
   table{
	    width: 20%;
	    margin: 50 auto;
	    border-collapse: collapse;
	}
	td,th{
	    padding:0px;
	    text-align:center;
	}
	input[type="button"]{
			background-color: white;
			height: 25px;
			width:100px;
			border: 1px grey solid;
		}	
    input[type="submit"]{
			background-color: white;
			height: 25px;
			width:100px;
			border: 1px grey solid;
		}	

</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改学生信息</title>
</head>
<body background="./image/background4.png">
<center>
<h3>按学号修改学生专业信息</h3>
<form  action="" method="post" >
<table>
<tr>
<td><b>请输入学生的学号:</b></td>
<td><input type="text" name="id" ></td>
</tr>
<tr>
<td><b>请输入更新后学生的专业:</b></td>
<td><input type="text" name="major" ></td>
</tr>
</table>
<br><br>
<input type="submit" value="确定" />
<input type="button" value="返回" onclick="window.location.href = 'navigation.jsp'">
</form>
<%
        response.setContentType("text/html;charset=GBK");
	    request.setCharacterEncoding("GBK");
	    StudentService a=new StudentService(); 
		String id=request.getParameter("id");
		String major=request.getParameter("major");
		Information info=new Information();
		boolean isflag=a.updateInfo(id,major);
		if (isflag==true)
		{	
%>
			成功修改学生专业!
<%
		}
%>			
</center>
</body>
</html>
