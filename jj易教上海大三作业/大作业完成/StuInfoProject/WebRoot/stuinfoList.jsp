<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="zyd.bean.Information"%>
<%@page import="java.util.ArrayList"%>      
<%@page import="zyd.util.DBHelp"%>
<%@page import="zyd.service.StudentService" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生信息总览</title>
</head>
<body background="./image/background7.png">
<center>
<h3>查看所有学生信息</h3>
<div style="margin:0 auto;width:1000px;"> 
   	       <div style="float:left;width:1000px;">
   	           <div style="float:left;width:200px;text-align:center;">
   	               	姓名
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;">
   	               	年龄
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;">
   	               	性别
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;">
   	               	年级
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;">
   	               	专业
   	           </div>
   	           <div style="clear:both">
   	           </div>
   	       </div>
   	   <%
   	   	 ArrayList<Information> A=StudentService.SearchAll() ;
   	      	       for(int i=0;i<A.size();i++) {
   	      	           String id = A.get(i).getId();
   	      	           String name = A.get(i).getName();
   	      	           int age = A.get(i).getAge();
   	      	           String sex = A.get(i).getSex();
   	      	           String grade = A.get(i).getGrade();
   	      	           String major = A.get(i).getmajor();
   	   %>
   	   
   	       <div style="float:left;width:1000px;border:1px solid black">
   	           <div style="float:left;width:200px;text-align:center;">
   	               	<%= name %>
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;">
   	               	<%= age %>
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;">
   	               	<%= sex %>
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;">
   	               	<%= grade %>
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;">
   	               	<%= major %>
   	           </div>
   	           <div style="clear:both">
   	           </div>
   	       </div>
   	   <%} %>
   	       <div style="clear:both">
   	       </div>
   	   </div>
<form>
<input type="button" value="返回" onclick="window.location.href = 'student.jsp'">
</form>
</center>
</body>
</html>

