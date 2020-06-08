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
<h1>查看所有学生信息</h1>
<div style="margin:0 auto;width:1000px;"> 
   	       <div style="float:left;width:1000px;">
   	           <div style="float:left;width:200px;text-align:center;font-size:30px;">
   	               	姓名
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;font-size:30px;">
   	               	年龄
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;font-size:30px;">
   	               	性别
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;font-size:30px;">
   	               	年级
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;font-size:30px;">
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

<div style="cursor:pointer;border-radius:10px;background:#708090;height:40px;line-height:40px;font-size:20px;width:200px;text-align:center;margin-top:50px;" onclick="window.location.href = 'navigation.jsp'">
  	返回
</div>
</center>
</body>
</html>

