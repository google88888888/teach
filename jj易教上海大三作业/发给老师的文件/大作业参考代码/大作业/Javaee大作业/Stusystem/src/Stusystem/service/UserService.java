package Stusystem.service;

import Stusystem.bean.UserBean;
import Stusystem.tools.DBHelp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService {

    public static int checkUserValid(String username, String userpass) {
        Connection con = DBHelp.getConn();
        String sql = "select * from users where usr=? and pwd=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, userpass);
            rs = ps.executeQuery();
            if (rs.next())
                return 1;
            else
                return 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        } finally {
            DBHelp.closeDBResource(rs, ps, con);
        }
    }

    public static UserBean searchUser(String username) {
        Connection con = DBHelp.getConn();
        String sql = "select * from users where usr=?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                int id = rs.getInt(1);//取当前行第一列的数据
                username = rs.getString(2);
                String pwd = rs.getString(3);
                String email = rs.getString(4);
                String tel = rs.getString(5);
                return new UserBean(id, username, pwd, email, tel);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBHelp.closeDBResource(rs, ps, con);
        }
        return null;
    }

    public static int changeUserPwd(String username, String userpass) {
        Connection con = DBHelp.getConn();
        String sql = "update users set pwd = ? where usr = ?";
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, userpass);
            ps.setString(2, username);
            ps.execute();
            if (ps.execute()) {
                return 0;
            } else
                return 1;
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        } finally {
            DBHelp.closeDBResource(null, ps, con);
        }
    }
}
