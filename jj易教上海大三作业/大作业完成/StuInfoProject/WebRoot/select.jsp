<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="zyd.bean.Information"%>
<%@page import="zyd.service.StudentService" %>
<%@page import="java.util.ArrayList"%>      
<%@page import="zyd.service.*"%> 
<html>
<style type="text/css">
       h3{
    		font-size: 32px;   /*16px为默认设置*/
    		margin:0;   
    				}
   table{
	    width: 60%;
	    margin: 50 auto;
	    border-collapse: collapse;
	}
	td,th{
	    border-bottom: 1px grey solid;
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
<title>查询学生信息</title>
</head>
<body background="./image/background2.png">
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
<input type="button" value="返回" onclick="window.location.href = 'navigation.jsp'">
</form>
<table>
<tr>
    <th>学号</th>
    <th>姓名</th>
    <th>年龄</th>
    <th>性别</th>
    <th>年级</th>
    <th>专业</th>
</tr>	
<%
		StudentService a=new StudentService();
		String id=request.getParameter("id");
		Information info=new Information();
		info=a.selectInfo(id);
				if(info.getId()!=null)
		{	
%>		
<tr>
		<td><%=info.getId()%></td>
		<td><%=info.getName()%></td>
		<td><%=info.getAge()%></td>
		<td><%=info.getSex()%></td>
		<td><%=info.getGrade()%></td>
		<td><%=info.getmajor()%></td>
</tr>
<%
		}

%>		
</table>
</center>
</body>
</html>

