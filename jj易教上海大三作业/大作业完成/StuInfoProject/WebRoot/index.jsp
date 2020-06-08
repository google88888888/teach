<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息系统</title>
</head>
<body>
    <style type="text/css">
			 body{    
        background-image: url(./image/background9.jpg);    
        background-size:cover;  
     }    
			h3{
    		color:#1e1e1e;
    		font-size: 32px;   /*16px为默认设置*/
    		margin:0;   
    		}
		#indexFrame{
    		position: absolute;/*相对于若所有父元素都没有定位，以浏览器当前屏幕为准对齐(document文档)*/
    		top: 50%;
    		left:50%;
    		margin-top: -200px;
    		margin-left: -200px;
    		width: 400px;
    		height: 300px;
    		text-align: center;
    		color:white;

		}
		a{
		   width:400px}
	</style>
  	<div id="indexFrame" >
  		<h3>欢迎您进入学生信息系统!</h3>
  		<br><br>
  		<br><br>
  		<a href="login.jsp">管理员端进入</a><br><br><a href="student.jsp">学生端进入</a>
	</div>
  </body>
	</style>
</body>
</html>
