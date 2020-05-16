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

  <title>学生信息管理系统登录</title>
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->
  <script type="text/javascript">
    function UserInfoIsEmpty (){
      var username = document.getElementById("username");
      var password = document.getElementById("pwd");
      if (username.value.length == 0){
        window.alert("用户名为空");
        return false;
      }else if (password.value.length == 0){
        window.alert("密码为空");
        return false;
      }

      return true;
    }

  </script>
  <style type="text/css">

    body{
      background-color:#d6ecf0;
    }
    input{
      display:block;
      color: black;
      width: 500px;
      height: 50px;
      background-color:white;
      border: darkgrey 2px solid;
    }
    input[type="submit"]{
      background-color: gray;
    }
    h3{
      font-size: 35px;
      color:#008792 ;
      text-shadow:0px 0px 10px;
    }
    #loginFrame{
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
<!--
  DBHelp db = new DBHelp();
  db.printTableDataForTest();
%-->
<div id="loginFrame" style="top: 454px; left: 842px;">
    <h3>学生信息管理系统管理员登录</h3>
    <form action="LoginController" method="post">
        <input type="text" name="username" id="username" placeholder="请输入用户名">
        <input type="password" name="pwd" id="pwd" placeholder="请输入密码">
        <input type="submit" value="登陆" onclick="return UserInfoIsEmpty()">
    </form>
    <a href="register.jsp">注册管理员账号</a>
    <a href="">学生端口进入（不需要账户）</a>
</div>
</body>
</html>
