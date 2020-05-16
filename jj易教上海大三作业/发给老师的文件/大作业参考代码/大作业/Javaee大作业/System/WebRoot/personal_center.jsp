<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="Stusystem.tools.DBHelp" %>
<%@ page import="Stusystem.bean.UserBean" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>账号个人中心</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">

        body {
            background-color: DarkGrey;
        }

        input {
            display: block;
            color: white;
            width: 160px;
            height: 30px;
            background-color: #D3D3D3;
            border: darkgrey 2px solid;
        }

        input[type="submit"] {
            background-color: blue;
            text-align: center;
            width: 140px;
        }

        input[type="button"] {
            background-color: blue;
            text-align: center;
            width: 140px;
        }

        h3 {
            font-size: 32px;
            color: white;
            text-shadow: 0px 0px 10px;
        }

        #PersonalFrame {
            border: grey 1px solid;
            position: absolute;
            width: 300px;
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
<%
    UserBean user = (UserBean) session.getAttribute("user");
%>
<div id="PersonalFrame">
    <h3>个人中心</h3>
    <form action="pwd_reset.jsp" method="post">
        <table align="center">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username" value="<%=user.getUsr()%>" readonly></td>
            </tr>
            <tr>
                <td>密&nbsp&nbsp&nbsp码：</td>
                <td><input type="password" name="pwd" value="<%=user.getPwd()%>" readonly></td>
            </tr>
            <tr>
                <td>邮&nbsp&nbsp&nbsp箱：</td>
                <td><input type="text" name="email" value="<%=user.getEmail()%>" readonly></td>
            </tr>
            <tr>
                <td>电&nbsp&nbsp&nbsp话：</td>
                <td><input type="text" name="tel" value="<%=user.getTel()%>" readonly></td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td><input type="submit" value="修改密码"></td>
                <td><input type="button" value="返回菜单" onclick="window.location.href = 'admin.jsp'" /></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
