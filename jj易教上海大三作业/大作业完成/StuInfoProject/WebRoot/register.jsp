<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="zyd.util.DBHelp"%>
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
		  function checkInfo(){
			  var username = document.getElementById("username");
			  var password = document.getElementById("pwd");
			  var pwdconfirm = document.getElementById("pwdconfirm");
			  if (username.value.length === 0){
				  window.alert("用户名为空");
				  return false;
			  }else if (password.value.length === 0) {
				  window.alert("密码为空");
				  return false;
			  }else if (pwdconfirm.value.length === 0){
				  window.alert("请重新输入密码");
				  return false;
			  }else if (password.value !== pwdconfirm.value){
				  window.alert("两次密码输入不一致，请重新输入。");
				  return false;
			  }
			  return true;
		  }
	  </script>
	<style type="text/css">
		body{
			background-color: #1e1e1e;
		}

		h3{
    		font-size: 32px;   /*16px为默认设置*/
    		margin:0;   
    		text-shadow:0px 0px 10px;   /* 水平阴影的位置  垂直阴影的位置  模糊的距离 阴影的颜色*/
    		/*letter-spacing: 2px;  */

		}
		#RegisterFrame{
    		position: absolute;/*相对于若所有父元素都没有定位，以浏览器当前屏幕为准对齐(document文档)*/
    		top: 50%;
    		left:50%;
    		margin-top: -230px;
    		margin-left: -230px;
    		width: 300px;
    		height: 300px;
    		text-align: center;
    		color:white;

		}
		input{
			display: block;
			width: 294px;
			height: 28px;
			line-height: 28px;
			margin: 10px 0px;
			background-color: #2D2D3F;
   			border: 1px solid #56536A;   
    		border-radius: 5px; 
    		color:white;
		}
		input[type="submit"]{
			background-color: blue;
			height: 32px;
			width:300px;
			border: 1px grey solid;
		}	
	</style>
  </head>
  <body>
  	<div id="RegisterFrame" style="top: 405px; left: 857px;">
  		<h3>学生信息系统管理员注册<br></h3>
   		 <form action="RegisterController" method = "post">
			<input type="text" name="username" id="username" placeholder="请输入用户名">
			<input type="password" name="pwd" id="pwd" placeholder="请输入密码" >
			 <input type="password" name="pwdconfirm" id="pwdconfirm" placeholder="请重新输入密码" >
			<input type="email" name="email" id="email" placeholder="请输入邮箱" >
			<input type="text" name="tel" id="tel" placeholder="请输入电话号码" >
			<input type="submit" value="注册" onclick = " return checkInfo() ">
		</form> 
		<a href="login.jsp">已有账号，返回登录？</a>
	</div>
  </body>
</html>
