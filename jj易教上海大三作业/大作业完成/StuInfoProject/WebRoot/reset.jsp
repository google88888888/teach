<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="zyd.util.DBHelp" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>修改密码</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="text/javascript">
        function UserInfoIsEmpty() {
            var old_pwd = document.getElementById("old_pwd");
            var new_pwd = document.getElementById("new_pwd");
            var pwdconfirm = document.getElementById("pwdconfirm ");
            if (old_pwd.value.length == 0) {
                window.alert("请输入原密码");
                return false;
            } else if (new_pwd.value.length == 0) {
                window.alert("请输入新密码");
                return false;
            } else if (pwdconfirm .value.length == 0) {
                window.alert("请再次输入新密码");
                return false;
            } else if (new_pwd.value != pwdconfirm .value) {
                window.alert("两次输入的密码不一致");
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
		#loginFrame{
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
<div id="loginFrame" style="top: 467px; left: 868px;">
    <h3>修改密码</h3>
    <form action="PwdController" method="post">
        <input type="password" name="old_pwd" id="old_pwd" placeholder="请输入原密码">
        <input type="password" name="new_pwd" id="new_pwd" placeholder="请输入新密码">
        <input type="password" name="pwdconfirm " id="pwdconfirm " placeholder="请再次输入新密码">
        <input type="submit" value="修改密码" onclick="return UserInfoIsEmpty()">
    </form>
    <a href="register.jsp">注册管理员账号</a>
    <a href="login.jsp">返回登录界面</a>
</div>
</body>
</html>