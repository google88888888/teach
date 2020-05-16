<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Stusystem.tools.DBHelp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>学生信息系统注册界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <script type="text/javascript">
		  function InfoEmpty_PatchPwd (){
			  var re_pwd = document.getElementById("re_pwd");
			  var username = document.getElementById("username");
			  var password = document.getElementById("pwd");

			  if (username.value.length === 0){
				  window.alert("用户名为空");
				  return false;
			  }else if (password.value.length === 0) {
				  window.alert("密码为空");
				  return false;
			  }else if (re_pwd.value.length === 0){
				  window.alert("请重新输入密码");
				  return false;
			  }else if (password.value !== re_pwd.value){
				  window.alert("两次密码输入不一致，请重新输入。");
				  return false;
			  }
			  return true;
		  }
	  </script>
	<style type="text/css">
	
	body{
		background-color: afdfe4;
	}
	input{
		display:block;
		color: white;
		width: 500px;
		height: 50px;
		background-color: 	#D3D3D3;
		border: darkgrey 2px solid;
	}
	input[type="submit"]{
		background-color: blue;
	}
	h3{
		font-size: 35px;
		color: white;
		text-shadow:0px 0px 10px;
	}
	#RegisterFrame{
		border: grey 1px solid;
		position: absolute;
		width:500px;
		height:300px;
		top: 50%;
		left:50%;
		margin-top:-150px;
		margin-left:-150px;
		text-align: center;
	}
	a{
		color:blue;
	}
	</style>
  </head>
  <body>
  	<div id="RegisterFrame" style="top: 405px; left: 857px;">
  		<h3>学生信息管理系统管理员注册<br></h3>
   		 <form action="RegisterController" method = "post">
			<input type="text" name="username" id="username" placeholder="请输入用户名">
			<input type="password" name="pwd" id="pwd" placeholder="请输入密码" >
			 <input type="password" name="re_pwd" id="re_pwd" placeholder="请重新输入密码" >
			<input type="email" name="email" id="email" placeholder="请输入邮箱" >
			<input type="text" name="telenum" id="telenum" placeholder="请输入电话号码" >
			<input type="check" name="check" id="check" placeholder="请输入该系统管理员密码" >
			<input type="submit" value="注册" onclick = " return InfoEmpty_PatchPwd() ">
		</form> 
		<a href="login.jsp">已有账号，返回登录？</a>
	</div>
  </body>
</html>
