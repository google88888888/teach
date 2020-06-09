package zyd.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import zyd.bean.Information;
import zyd.util.DBHelp;

public class StudentService{
		public static ArrayList<Information> SearchAll()
		{
			// 查看整个学生表
			Connection conn = DBHelp.getConn();
			ArrayList<Information> A =new ArrayList<Information>();
			String sql="select * from stuinfo";
			PreparedStatement ps = null;
			ResultSet rs=null;
			try
			{
				ps = conn.prepareStatement(sql);
				rs=ps.executeQuery();
				System.out.println("学号"+"\n"+"姓名"+"\n"+"年龄"+"\n"+"性别"+"\n"+"年级"+"\n"+"专业"+"\n" );
	 			while(rs.next())
				{
					Information info=new Information();
					info.setId(rs.getString(1));
					info.setName(rs.getString(2));   
					info.setAge(rs.getInt(3));
					info.setSex(rs.getString(4));
					info.setGrade(rs.getString(5));
					info.setmajor(rs.getString(6));
					A.add(info);	
				}
	 			for(int i=0;i<A.size();i++)
	 			{
	 				System.out.println(A.get(i).getId()+"\n"+A.get(i).getName()+"\n"+A.get(i).getAge()+"\n"+A.get(i).getSex()+"\n"+A.get(i).getGrade()+"\n"+A.get(i).getmajor() ); 
	 			}
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
		public Information selectInfo(String id)
		{
			//根据学号查找学生
			Information info=new Information();
			Connection conn = DBHelp.getConn();
			PreparedStatement ps = null;
			ResultSet rs=null;
			String sql="select * from stuinfo where id=? ";
			try
			{
				ps=conn.prepareStatement(sql);
				ps.setString(1, id);
				rs=ps.executeQuery();
				System.out.println("学号"+"\n"+"姓名"+"\n"+"年龄"+"\n"+"性别"+"\n"+"年级"+"\n"+"专业"+"\n" );
				while(rs.next())
				{
					info.setId(id);
					info.setName(rs.getString(2));
					info.setAge(rs.getInt(3));
					info.setSex(rs.getString(4));
					info.setGrade(rs.getString(5));
					info.setmajor(rs.getString(6));
				}
					System.out.println(info.getId()+"\n"+info.getName()+"\n"+info.getAge()+"\n"+info.getSex()+"\n"+info.getGrade()+"\n"+info.getmajor()); 
				
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
			return info;
		}
		
		
		public boolean deleteInfo(String id)//根据id删除学生信息
		{
			Connection conn = DBHelp.getConn();
			PreparedStatement ps = null;
			ResultSet rs=null;
			String sql="delete from stuinfo where id=? ";
			try
			{
				ps=conn.prepareStatement(sql);
				ps.setString(1, id);
				int num=ps.executeUpdate();
				if(num>0)
				{
					System.out.println("删除成功！");
					return true;
				}
			} catch (SQLException e)
			{
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally
			 {
				DBHelp.closeDBResource(rs, ps, conn);
			 }
			return false;
		}
		
		public boolean insertInfo(String id,String name,String age,String sex,String grade,String major)//添加学生信息
		{
			Connection conn = DBHelp.getConn();
			PreparedStatement ps = null;
			ResultSet rs=null;
			String sql="insert into stuinfo values(?,?,?,?,?,?) ";
			try
			{
				ps=conn.prepareStatement(sql);
				ps.setString(1, id);
				ps.setString(2, name);
				ps.setString(3, age);
				ps.setString(4, sex);
				ps.setString(5, grade);
				ps.setString(6, major);
				int num=ps.executeUpdate();
				if(num>0)
				{
					System.out.println("添加成功！");
					return true;
				}
			} catch (SQLException e)
			{
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally
			{
				DBHelp.closeDBResource(rs, ps, conn);
			}
			return false;
		}
		public boolean updateInfo(String id,String major)//根据学号修改专业
		{
			Connection conn = DBHelp.getConn();
			PreparedStatement ps = null;
			ResultSet rs=null;
			String sql="update stuinfo set major=? where id=? ";
			try
			{
				ps=conn.prepareStatement(sql);
				ps.setString(1, major);
				ps.setString(2, id);
				int num=ps.executeUpdate();
				if(num>0)
				{
					System.out.println("修改成功！");
					return true;
				}
			} catch (SQLException e)
			{
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			finally
			{
				DBHelp.closeDBResource(rs, ps, conn);
			}
			return false;
		}
		
}