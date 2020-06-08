<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="zyd.util.DBHelp" %>
<%@ page import="zyd.bean.Users" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>个人中心</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
   <style type="text/css">
		body{
			background-color: #fcfcfc;
		}

		h3{
		    color:#1e1e1e;
    		font-size: 32px;   /*16px为默认设置*/
    		margin:0;   
    		text-shadow:0px 0px 10px;   /* 水平阴影的位置  垂直阴影的位置  模糊的距离 阴影的颜色*/
    		/*letter-spacing: 2px;  */

		}
		#PersonalFrame{
    		position: absolute;/*相对于若所有父元素都没有定位，以浏览器当前屏幕为准对齐(document文档)*/
    		top: 50%;
    		left:50%;
    		margin-top: -200px;
    		margin-left: -160px;
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
			width:170px;
			border: 1px grey solid;
		}	
		input[type="button"]{
			background-color: blue;
			height: 32px;
			width:170px;
			border: 1px grey solid;
		}	
	</style>
</head>

<body>
<%
    Users user = (Users) session.getAttribute("user");
%>
<div id="PersonalFrame">
    <h3>个人中心</h3>
    <form action="reset.jsp" method="post">
        <table align="center">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username" value="<%=user.getUsr()%>" readonly></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="pwd" value="<%=user.getPwd()%>" readonly></td>
            </tr>
            <tr>
                <td>邮箱：</td>
                <td><input type="text" name="email" value="<%=user.getEmail()%>" readonly></td>
            </tr>
            <tr>
                <td>电话：</td>
                <td><input type="text" name="tel" value="<%=user.getTel()%>" readonly></td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td><input type="submit" value="修改密码"></td>
                <td><input type="button" value="返回菜单" onclick="window.location.href = 'navigation.jsp'" /></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
