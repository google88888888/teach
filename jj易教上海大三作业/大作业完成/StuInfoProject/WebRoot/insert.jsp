<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="zyd.service.*"%> 
<%@page import="zyd.util.DBHelp"%>  
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.sql.ResultSet"%>  
<html>
<style type="text/css">
       h3{
    		font-size: 32px;   /*16px为默认设置*/
    		margin:0;   
    				}
   table{
	    width: 30%;
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
<title>添加学生信息</title>
</head>
<body background="./image/background5.png">
	<center>
	<h3>写入学生信息</h3>
	<form method="post" action="">
   	<h4> 
	学号：<input name="id" type="text" id="id" >
	</h4>
   	<h4> 
	姓名：<input name="name" type="text" id="name" >
	</h4>
	<h4>
	性别：<input name="sex" type="text" id="sex"  >
	</h4>
	<h4>
   	年龄：<input name="age" type="text" id="age" >
	</h4>
	<h4>
	年级：<input name="grade" type="text" id="grade" >
	</h4>
	<h4> 
	专业：<input name="major" type="text" id="major" >
	</h4>
	<input name="Submit" type="submit" value="添加">
	<input type="button" value="返回" onclick="window.location.href = 'navigation.jsp'">   
	</form>
	<%
	response.setContentType("text/html;charset=GBK");
	 request.setCharacterEncoding("GBK");
	String stuid=request.getParameter("id");
	String stuname=request.getParameter("name");
 	String stusex=request.getParameter("sex");
 	String stuage=request.getParameter("age");
 	String stugrade=request.getParameter("grade");
 	String stumajor=request.getParameter("major");
 	StudentService a=new StudentService();
 	Connection conn = DBHelp.getConn();
	PreparedStatement ps=null;
    ResultSet rs=null;
	String sql="insert into stuinfo values(?,?,?,?,?,?) ";
	try
	{
		ps=conn.prepareStatement(sql);
		ps.setString(1, stuid);
		ps.setString(2, stuname);
		ps.setString(3, stuage);
		ps.setString(4, stusex);
		ps.setString(5, stugrade);
		ps.setString(6, stumajor);
		int num=ps.executeUpdate();
		if(num>0)
		{
			out.println("添加成功！");
		}
	} catch (Exception e)
	{
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
	finally
	{
			DBHelp.closeDBResource(rs, ps, conn);
	}
 	%>
	</center>
</body>
</html>


