<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="Stusystem.tools.DBHelp" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>密码修改界面</title>
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
            var re_pwd = document.getElementById("re_pwd");
            if (old_pwd.value.length == 0) {
                window.alert("请输入原密码");
                return false;
            } else if (new_pwd.value.length == 0) {
                window.alert("请输入新密码");
                return false;
            } else if (re_pwd.value.length == 0) {
                window.alert("请再次输入新密码");
                return false;
            } else if (new_pwd.value != re_pwd.value) {
                window.alert("两次输入的密码不一致");
                return false;
            }

            return true;
        }

    </script>
    <style type="text/css">

        body {
            background-color: DarkGrey;
        }

        input {
            display: block;
            color: white;
            width: 500px;
            height: 50px;
            background-color: #D3D3D3;
            border: darkgrey 2px solid;
        }

        input[type="submit"] {
            background-color: blue;
        }

        h3 {
            font-size: 36px;
            color: white;
            text-shadow: 0px 0px 10px;
        }

        #loginFrame {
            border: grey 1px solid;
            position: absolute;
            width: 500px;
            height: 300px;
            top: 50%;
            left: 50%;
            margin-top: -150px;
            margin-left: -150px;
            text-align: center;

        }

        a {
            color: lightgrey;
        }
    </style>
</head>
<body>
<div id="loginFrame" style="top: 602px; left: 942px;">
    <h3>密码修改界面</h3>
    <form action="PwdController" method="post">
        <input type="password" name="old_pwd" id="old_pwd" placeholder="请输入原密码">
        <input type="password" name="new_pwd" id="new_pwd" placeholder="请输入新密码">
        <input type="password" name="re_pwd" id="re_pwd" placeholder="请再次输入新密码">
        <input type="submit" value="修改密码" onclick="return UserInfoIsEmpty()">
    </form>
    <a href="register.jsp">注册管理员账号</a>
    <a href="login.jsp">返回登录界面</a>
</div>
</body>
</html>