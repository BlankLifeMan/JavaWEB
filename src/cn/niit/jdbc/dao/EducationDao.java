package cn.niit.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import cn.niit.jdbc.domain.EducationExperience;
import cn.niit.jdbc.domain.UserLogin;
import cn.niit.jdbc.domain.WorkExperience;
import co.niit.jdbc.utils.JDBCUtils;

public class EducationDao {
	//添加用户的教育经历操作
		public boolean insert(EducationExperience eex,String name) {
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			try{
				//获得数据的链接
				conn = JDBCUtils.getConnection();
				//发送SQL语句
				String sql = "UPDATE User_Education_Experience_Table set School_name=?,Major_studied=?,Admission_time=?,Education=?,Related_skills=?,Achievements=? where name = "+name;
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, eex.getSchoolName());
				stmt.setString(2, eex.getMajorStudied());
				stmt.setString(3, eex.getAdmissionTime());
				stmt.setString(4, eex.getEducation());
				stmt.setString(5, eex.getRelatedSkils());
				stmt.setString(6, eex.getAchievements());
				int num = stmt.executeUpdate();
				if (num>0) {
					return true;
				}
				return false;
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				JDBCUtils.release(rs,stmt, conn);
			}
			return false;
		}
		
		//查询所有的教育经历对象
		public ArrayList<EducationExperience> findAll(){
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			ArrayList<EducationExperience> list = new ArrayList<EducationExperience>();
			try{
				//获得数据的连接
				conn = JDBCUtils.getConnection();
				//获得Statement对象
				stmt = conn.createStatement();
				//发送SQL语句
				String sql = "SELECT * FROM User_Education_Experience_Table";
				rs = stmt.executeQuery(sql);
				//处理结果集
				while(rs.next()){
					EducationExperience eex = new EducationExperience();
					eex.setSchoolName(rs.getString("schoolName"));
					eex.setRelatedSkils(rs.getString("majorStudied"));
					eex.setAdmissionTime(rs.getString("admissionTime"));
					eex.setEducation(rs.getString("Education"));
					eex.setRelatedSkils(rs.getString("relatedSkils"));
					eex.setAchievements(rs.getString("achievements"));
					list.add(eex);
				}
				return list;
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally{
				JDBCUtils.release(rs, stmt,conn);
			}
			return null;
		}
		
		//根据name查找指定的教育经历
		public EducationExperience find(String name){
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try{
				//获得数据的连接
				conn = JDBCUtils.getConnection();
				//获得Statement对象
				stmt = conn.createStatement();
				//发送SQL语句
				String sql = "SELECT * FROM User_Education_Experience_Table WHERE name='"+name+"'";
				rs = stmt.executeQuery(sql);
				//处理结果集
				while(rs.next()){
					EducationExperience eex = new EducationExperience();
					eex.setSchoolName(rs.getString("school_Name"));
					eex.setRelatedSkils(rs.getString("Major_studied"));
					eex.setAdmissionTime(rs.getString("Admission_time"));
					eex.setEducation(rs.getString("Education"));
					eex.setRelatedSkils(rs.getString("Related_skills"));
					eex.setAchievements(rs.getString("Achievements"));
					return eex;
	 			}
				return null;
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				JDBCUtils.release(rs,stmt,conn);
			}
			return null;
		}
		//删除用户教育经历
		public boolean delete(int id){
				Connection conn=null;
				Statement stmt=null;
				ResultSet rs = null;
				try{
					//获得数据连接
					conn = JDBCUtils.getConnection();
					//获得Statement对象
					stmt = conn.createStatement();
					//发送SQL语句
					String sql = "DELETE FROM User_Education_Experience_Table WHERE User_Education_id="+id;
					int num = stmt.executeUpdate(sql);
					if (num>0) {
						return true;
					}
					return false;
				}catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}finally{
					JDBCUtils.release(rs,stmt,conn);
				}
				return false;
		}
		public static void main(String[] args) {
			EducationDao dao = new EducationDao();
			EducationExperience experience = dao.find("翟文强");
			System.out.println(experience);
		}
}
