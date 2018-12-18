package cn.niit.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import cn.niit.jdbc.domain.UserLogin;
import cn.niit.jdbc.domain.WorkExperience;
import co.niit.jdbc.utils.JDBCUtils;

public class WorkDao {
	//添加工作经历
	public boolean insert(WorkExperience work,String name) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try{
			//获得数据的链接
			conn = JDBCUtils.getConnection();
			//发送SQL语句
			String sql = "UPDATE User_Work_Experience_Table set Corporate_name=?,Position_title=?,Work_city=?,Working_hours=?,Related_technology=?,Position_describe=? where name = "+name;
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, work.getCorporateName());
			stmt.setString(2, work.getPositionTitle());
			stmt.setString(3, work.getWorkCity());
			stmt.setString(4, work.getWorkingHours());
			stmt.setString(5, work.getTechnology());
			stmt.setString(6, work.getPositionDescribe());
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
	//查询所有的Work对象
		public ArrayList<WorkExperience> findAll(){
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			ArrayList<WorkExperience> list = new ArrayList<WorkExperience>();
			try{
				//获得数据的连接
				conn = JDBCUtils.getConnection();
				//获得Statement对象
				stmt = conn.createStatement();
				//发送SQL语句
				String sql = "SELECT * FROM User_Work_Experience_Table";
				rs = stmt.executeQuery(sql);
				//处理结果集
				while(rs.next()){
					WorkExperience work = new WorkExperience();
					work.setCorporateName(rs.getString("Corporate_name"));
					work.setPositionTitle(rs.getString("Position_title"));
					work.setWorkCity(rs.getString("Work_city"));
					work.setWorkingHours(rs.getString("Working_hours"));
					work.setTechnology(rs.getString("Related_technology"));
					work.setPositionDescribe(rs.getString("Position_describe"));
					list.add(work);
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
		
		//根据name查找指定的work
		public WorkExperience find(String name){
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try{
				//获得数据的连接
				conn = JDBCUtils.getConnection();
				//获得Statement对象
				stmt = conn.createStatement();
				//发送SQL语句
				String sql = "SELECT * FROM User_Work_Experience_Table WHERE User_Work_id="+name;
				rs = stmt.executeQuery(sql);
				//处理结果集
				while(rs.next()){
					WorkExperience work = new WorkExperience();
					work.setCorporateName(rs.getString("Corporate_name"));
					work.setPositionTitle(rs.getString("Position_title"));
					work.setWorkCity(rs.getString("Work_city"));
					work.setWorkingHours(rs.getString("Working_hours"));
					work.setTechnology(rs.getString("Related_technology"));
					work.setPositionDescribe(rs.getString("Related_technology"));
					return work;
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
		
		//删除工作经历
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
					String sql = "DELETE FROM User_Work_Experience_Table WHERE User_Work_id="+id;
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
}
