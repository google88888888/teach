package Stusystem.tools;

import java.sql.*;

public class DBHelp {
	
	public static Connection getConn(){
		
		String DBDirverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String DBUrl = "jdbc:sqlserver://localhost:1433;DatabaseName=casualshop";
		String DBUser = "sa";
		String DBPwd = "123";
		Connection connection = null;
		try {
			Class.forName(DBDirverName);
			connection = DriverManager.getConnection(DBUrl, DBUser, DBPwd);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("驱动库可能不对哦，找不到库里相应的类");
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("数据库连接出错");
			e.printStackTrace();
		}
		return connection;
	}
	
	public static void closeDBResource(ResultSet rs, Statement stm, Connection con) {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (stm != null) {
				stm.close();
				stm = null;
			}
			if (con != null) {
				con.close();
				con = null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("关闭数据库资源有问题，请根据你的环境具体分析查到问题！");
			e.printStackTrace();
		}

	}
    public  void printTableDataForTest(){
    	Connection conn=getConn();
    	String sql="select * from users";
    	PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
	    	ResultSet rs=ps.executeQuery();;
	    	while(rs.next()){
	    		int id=rs.getInt(1);
	    	    String username=rs.getString(2);
	    	    String pwd=rs.getString(3);
	    	    String email=rs.getString(4);
	    	    String tel=rs.getString("tel");
	    	    System.out.print(username+"\t");
	    	    System.out.print(pwd+"\t");
	    	    System.out.print(email+"\t");
	    	    System.out.println(tel+"\t");	    	
	    	}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}