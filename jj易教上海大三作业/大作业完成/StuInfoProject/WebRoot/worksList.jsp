<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="zyd.bean.Works"%>
<%@page import="java.util.ArrayList"%>      
<%@page import="zyd.util.DBHelp"%>
<%@page import="zyd.service.StudentService" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>就业信息总览</title>
</head>
<body background="./image/background7.png">
<center>
<h1>查看所有就业信息</h1>
<div style="margin:0 auto;width:1000px;"> 
   	       <div style="float:left;width:1000px;">
   	           <div style="float:left;width:100px;text-align:center;font-size:30px;">
   	               	序号
   	           </div>
   	           <div style="float:left;width:100px;text-align:center;font-size:30px;">
   	               	公司
   	           </div>
   	           <div style="float:left;width:100px;text-align:center;font-size:30px;">
   	               	岗位
   	           </div>
   	           <div style="float:left;width:100px;text-align:center;font-size:30px;">
   	               	工资
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;font-size:30px;">
   	               	联系方式
   	           </div>
   	           <div style="float:left;width:400px;text-align:center;font-size:30px;">
   	               	描述
   	           </div>
   	           <div style="clear:both">
   	           </div>
   	       </div>
   	   <%
   	   	ArrayList<Works> worksList= (ArrayList<Works>)session.getAttribute("worksList");
   	      	       for(int i=0;i<worksList.size();i++) {
   	      	           int id = (int)worksList.get(i).getId();
   	      	           String company = (String)worksList.get(i).getCompany();
   	      	           String position = (String)worksList.get(i).getPosition();
   	      	           String salary = (String)worksList.get(i).getSalary();
   	      	           String phone = (String)worksList.get(i).getPhone();
   	      	           String description = (String)worksList.get(i).getDescription();
   	   %>
   	   
   	       <div style="float:left;width:1000px;border:1px solid black">
   	           <div style="float:left;width:100px;text-align:center;">
   	               	<%= id %>
   	           </div>
   	           <div style="float:left;width:100px;text-align:center;">
   	               	<%= company %>
   	           </div>
   	           <div style="float:left;width:100px;text-align:center;">
   	               	<%= position %>
   	           </div>
   	           <div style="float:left;width:100px;text-align:center;">
   	               	<%= salary %>
   	           </div>
   	           <div style="float:left;width:200px;text-align:center;">
   	               	<%= phone %>
   	           </div>
   	           <div style="float:left;width:400px;text-align:left;">
   	               	<%= description %>
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

