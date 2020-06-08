package zyd.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import zyd.bean.Works;
import zyd.util.DBHelp;

public class WorksService{
		public static ArrayList<Works> SearchAll()
		{
			// 查看整个学生表
			Connection conn = DBHelp.getConn();
			ArrayList<Works> A =new ArrayList<Works>();
			String sql="select * from works";
			PreparedStatement ps = null;
			ResultSet rs=null;
			try
			{
				ps = conn.prepareStatement(sql);
				rs=ps.executeQuery();
				System.out.println("学号"+"\n"+"姓名"+"\n"+"年龄"+"\n"+"性别"+"\n"+"年级"+"\n"+"专业"+"\n" );
	 			while(rs.next())
				{
	 				Works info=new Works();
					info.setId(rs.getInt(1));
					info.setCompany(rs.getString(2));   
					info.setPosition(rs.getString(3));
					info.setSalary(rs.getString(4));
					info.setDescription(rs.getString(5));
					A.add(info);	
				}
	 			return A;
			}
			catch (SQLException e)
			{
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally
			{
				DBHelp.closeDBResource(rs, ps, conn);
			}
			return A;
		}
		
		
}