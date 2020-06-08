package zyd.util;

import java.sql.*;

public class DBHelp {
	
	public static Connection getConn(){
		
/*		String DBDirverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String DBUrl = "jdbc:sqlserver://localhost:1433;DatabaseName=stu;characterEncoding=UTF-8";
		String DBUser = "sa";
		String DBPwd = "123456";*/
		
		String DBUrl = "jdbc:mysql://localhost:3306/stu?useUnicode=true&characterEncoding=UTF8&useSSL=false";
		String DBUser = "root";
		String DBPwd = "Aer0h1ve";
		String DBDirverName = "com.mysql.jdbc.Driver";
		
		Connection connection = null;
		try {
			   Class . forName (DBDirverName);
			   connection = DriverManager. getConnection(DBUrl, DBUser, DBPwd); 
			   } catch(ClassNotFoundException e) {
			   // TODO Auto-generated catch block
			   System.out.println ("SQLServerDriver没有找到，驱动包加载了吗");
			   e.printStackTrace();
			   } catch(SQLException e) {
			   // TODO Auto-generated catch block 
			   System.out.println("数据库连接出现了问题");
			   e.printStackTrace();
			   }
			   return connection;
			 }
			   
			public static void  closeDBResource(ResultSet rs, Statement stm, Connection con) {
			try{
				  if (rs != null) { 
			       rs. close (); 
			       rs = null;
			      }
			      if (stm != null) { 
			        stm. close (); 
			        stm = null;
			      }
			    }catch(SQLException e) {
				   // TODO Auto-generated catch block 
				   System.out.println("数据库连接出现了问题");
				   e.printStackTrace();
				   }
			    
			    }
			 }