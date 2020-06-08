package zyd.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import zyd.util.DBHelp;

public class RegisterService {
	public static int checkUserValid(String username){
        //校验用户名是否重复
		Connection conn = DBHelp.getConn();
		String sql = "select * from users where usr=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			if (rs.next())
				return 1;
			else
				return 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		} finally {
			DBHelp.closeDBResource(rs, ps, conn);
		}
	}
	public static int addUser(String username,String userpass,String email,String tel){
        //新增用户
		Connection conn = DBHelp.getConn();
		String sql = "insert into users values(?,?,?,?)";
		PreparedStatement ps = null;
		int rs ;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, userpass);
			ps.setString(3, email);
			ps.setString(4, tel);
			rs = ps.executeUpdate();
			conn.close();
			if (rs == 1) {
				return 1;
			}else {
				return 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		} finally {
			DBHelp.closeDBResource(null, ps, conn);
		}
	}
}
