<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生登录界面</title>
</head>
<style type="text/css">
           body{    
             background-image: url(./image/background6.jpg);    
              background-size:cover;  
       }     
       </style>
<center>
<h2>学生信息系统</h2>
<h3>(学生端)</h3>
<form style="text-align:center;margin-top:50px;">
         <input type="button" value="查看所有学生信息" onclick="window.location.href = 'stuinfoList.jsp'"">
      </form>
<form style="text-align:center;margin-top:50px;">
         <input type="button" value="按学号查看学生信息" onclick="window.location.href = 'stuselect.jsp'"">
      </form>
<form style="text-align:center;margin-top:50px;">
<input type="button" value="返回" onclick="window.location.href = 'login.jsp'">
</form>
</center>
</body>
</html>
