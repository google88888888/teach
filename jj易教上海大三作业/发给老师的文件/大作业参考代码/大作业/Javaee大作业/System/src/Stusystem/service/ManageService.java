package Stusystem.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Stusystem.bean.Information;
import Stusystem.tools.DBHelp;

public class ManageService{
		public static ArrayList<Information> SearchAll()
		{
			// �鿴����ѧ����
			Connection con = DBHelp.getConn();
			ArrayList<Information> A =new ArrayList<Information>();
			String sql="select * from student";
			PreparedStatement ps = null;
			ResultSet rs=null;
			try
			{
				ps = con.prepareStatement(sql);
				rs=ps.executeQuery();
				System.out.println("ѧ��"+"\n"+"����"+"\n"+"����"+"\n"+"�Ա�"+"\n"+"�꼶"+"\n"+"רҵ"+"\n" );
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
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			finally
			{
				DBHelp.closeDBResource(rs, ps, con);
			}
			return A;
		}
		public Information SearchInfo(String id)
		{
			//����ѧ�Ų���ѧ��
			Information info=new Information();
			Connection con = DBHelp.getConn();
			PreparedStatement ps = null;
			ResultSet rs=null;
			String sql="select * from student where id=? ";
			try
			{
				ps=con.prepareStatement(sql);
				ps.setString(1, id);
				rs=ps.executeQuery();
				System.out.println("ѧ��"+"\n"+"����"+"\n"+"����"+"\n"+"�Ա�"+"\n"+"�꼶"+"\n"+"רҵ"+"\n" );
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
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			finally
			{
				DBHelp.closeDBResource(rs, ps, con);
			}
			return info;
		}
		
		
		public boolean delInfo(String id)//����idɾ��ѧ����Ϣ
		{
			Connection con = DBHelp.getConn();
			PreparedStatement ps = null;
			ResultSet rs=null;
			String sql="delete  from student where id=? ";
			try
			{
				ps=con.prepareStatement(sql);
				ps.setString(1, id);
				int num=ps.executeUpdate();
				if(num>0)
				{
					System.out.println("ɾ���ɹ���");
					return true;
				}
			} catch (SQLException e)
			{
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			finally
			 {
				DBHelp.closeDBResource(rs, ps, con);
			 }
			return false;
		}
		
		public boolean addInfo(String id,String name,String age,String sex,String grade,String major)//���ѧ����Ϣ
		{
			Connection con = DBHelp.getConn();
			
			PreparedStatement ps = null;
			ResultSet rs=null;
			String sql="insert into  student values(?,?,?,?,?,?) ";
			try
			{
				ps=con.prepareStatement(sql);
				ps.setString(1, id);
				ps.setString(2, name);
				ps.setString(3, age);
				ps.setString(4, sex);
				ps.setString(5, grade);
				ps.setString(6, major);
				int num=ps.executeUpdate();
				if(num>0)
				{
					System.out.println("��ӳɹ���");
					return true;
				}
			} catch (SQLException e)
			{
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			finally
			{
				DBHelp.closeDBResource(rs, ps, con);
			}
			return false;
		}
		public boolean updateInfo(String id,String major)//����ѧ���޸�רҵ
		{
			Connection con = DBHelp.getConn();
			PreparedStatement ps = null;
			ResultSet rs=null;
			String sql="update student set major=? where id=? ";
			try
			{
				ps=con.prepareStatement(sql);
				ps.setString(1, major);
				ps.setString(2, id);
				int num=ps.executeUpdate();
				if(num>0)
				{
					System.out.println("�޸ĳɹ���");
					return true;
				}
			} catch (SQLException e)
			{
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			finally
			{
				DBHelp.closeDBResource(rs, ps, con);
			}
			return false;
		}
		
}