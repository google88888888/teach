<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	    function checkUserIsEmpty(){
	        var username=document.getElementById("username");
	        var userpass=document.getElementById("userpass");
	        if(username.value.length==0){
	            window.alert("用户名为空");
	            return false;
	            }
	          if(userpass.value.length==0){
	            window.alert("密码为空");
	            return false;
	            }
	        return true;
	    }
	
	
	</script>
	<style type="text/css">
		body{
			background-color: #330033;
		}

		h3{
    		font-size: 32px;   /*16px为默认设置*/
    		margin:0;   
    		text-shadow:0px 0px 10px;   /* 水平阴影的位置  垂直阴影的位置  模糊的距离 阴影的颜色*/
    		/*letter-spacing: 2px;  */

		}
		#loginFrame{
    		position: absolute;/*相对于若所有父元素都没有定位，以浏览器当前屏幕为准对齐(document文档)*/
    		top: 50%;
    		left:50%;
    		margin-top: -150px;
    		margin-left: -150px;
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

   <div id="loginFrame">
    	<h3>Login</h3>
    	<form action=""  method="post" >
	    	<input type="text" id="username" name="username" placeholder="输入用户名">
	    	<input type="password" id="userpass"  name="userpass" placeholder="输入密码">		
    		<input type="submit"  value="登录" onclick="return checkUserIsEmpty()">	
    	</form>
    	<a href="#">如果您还未注册，请先移步</a>
    </div>
  </body>
</html>
