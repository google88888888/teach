<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="zyd.bean.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <title>管理员界面</title>
    
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
  	<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
  	<script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
  	<style>
  		/* Make the image fully responsive */
  		.carousel-inner img {
     		 width: 100%;
      		height: 100%;
  		}
  	</style>
    
    <script type="text/javascript">
    function formSubmit(){
		document.WorksController.submit();
	}
    </script>
	<style type="text/css">
        body{    
             background-image: url(./image/background6.jpg);    
              background-size:cover;  
       }     
	</style>

  </head>
  <h2 style="text-align:center;margin-top:50px;">管理员操作页面</h2>
  <body>
    <div style="width:700px;margin:0 auto;">
      <div style="float:left;width:700px;height:400px;background:red;">
		<div id="demo" class="carousel slide" data-ride="carousel">
  		  <!-- 指示符 -->
  		  <ul class="carousel-indicators">
    	    <li data-target="#demo" data-slide-to="0" class="active"></li>
    		<li data-target="#demo" data-slide-to="1"></li>
    		<li data-target="#demo" data-slide-to="2"></li>
  		  </ul>
 
  		  <!-- 轮播图片 -->
          <div class="carousel-inner">
            <div class="carousel-item active">
              <a href="./virus.jsp">
              <img src="./image/virus.jpg">
              </a>
            </div>
            <div class="carousel-item">
              <a href="./collegeLife.jsp">
              <img src="./image/learn.jpg">
              </a>
            </div>
            <div class="carousel-item">
              <form action="WorksController" method="post" name="WorksController">
              	<img src="./image/work.jpg" onclick="formSubmit();">
              </form>
            </div>
          </div>
 
          <!-- 左右切换按钮 -->
          <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </a>
          <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>
 
        </div>
      
      </div>
      <div style="float:left;cursor:pointer;border-radius:10px;background:white;height:40px;line-height:40px;font-size:20px;width:200px;text-align:center;margin-top:50px;" onclick="window.location.href = 'stuinfo.jsp'">
		查看所有学生信息
      </div>
      <div style="float:left;margin-left:50px;cursor:pointer;border-radius:10px;background:white;height:40px;line-height:40px;font-size:20px;width:200px;text-align:center;margin-top:50px;" onclick="window.location.href = 'select.jsp'">
		按学号查看学生信息
      </div>
      <div style="float:left;margin-left:50px;cursor:pointer;border-radius:10px;background:white;height:40px;line-height:40px;font-size:20px;width:200px;text-align:center;margin-top:50px;" onclick="window.location.href = 'delete.jsp'">
		按学号删除学生信息
      </div>

      <div style="float:left;cursor:pointer;border-radius:10px;background:white;height:40px;line-height:40px;font-size:20px;width:200px;text-align:center;margin-top:50px;" onclick="window.location.href = 'update.jsp'">
		按学号更新学生信息
      </div>
      
      <div style="float:left;margin-left:50px;cursor:pointer;border-radius:10px;background:white;height:40px;line-height:40px;font-size:20px;width:200px;text-align:center;margin-top:50px;" onclick="window.location.href = 'insert.jsp'">
		添加学生信息
      </div>
      <div style="float:left;margin-left:50px;cursor:pointer;border-radius:10px;background:white;height:40px;line-height:40px;font-size:20px;width:200px;text-align:center;margin-top:50px;" onclick="window.location.href = 'reset.jsp'">
		修改密码
      </div>
      <div style="float:left;margin-left:250px;cursor:pointer;border-radius:10px;background:white;height:40px;line-height:40px;font-size:20px;width:200px;text-align:center;margin-top:50px;" onclick="window.location.href = 'login.jsp'">
		退出登录
      </div>
      <div style="clear:both;">
    
      </div>
    </div>

  </body>
</html>
