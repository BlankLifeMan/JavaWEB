package cn.niit.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import cn.niit.jdbc.domain.UserInformation;
import cn.niit.jdbc.domain.UserLogin;
import co.niit.jdbc.utils.JDBCUtils;

public class PersonalDao {
	//添加用户个人信息的操作
		public boolean insert(UserInformation user,String name) {
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			try{
				//获得数据的链接
				conn = JDBCUtils.getConnection();
				//发送SQL语句
				String sql = "Update User_Personal_Information_Table set Full_name=?,Gender=?,Qq=?,Personal_website=?,Document_type=?,Certificates_ID=?,Birth_date=?,Personal_profile=? where name = "+name;
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, user.getFullname());
				stmt.setString(2, user.getGender());
				stmt.setString(3, user.getQq());
				stmt.setString(4, user.getPersonalWebsite());
				stmt.setString(5, user.getDocumentType());
				stmt.setString(6, user.getIDcard());
				stmt.setString(7, user.getBirthday());
				stmt.setString(8, user.getPersonalProfile());
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
		
		//查询所有的User对象
		public ArrayList<UserInformation> findAll(){
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			ArrayList<UserInformation> list = new ArrayList<UserInformation>();
			try{
				//获得数据的连接
				conn = JDBCUtils.getConnection();
				//获得Statement对象
				stmt = conn.createStatement();
				//发送SQL语句
				String sql = "SELECT * FROM User_Personal_Information_Table";
				rs = stmt.executeQuery(sql);
				//处理结果集
				while(rs.next()){
					UserInformation user = new UserInformation();
					user.setFullname(rs.getString("Full_name"));
					user.setGender(rs.getString("Gender"));
					user.setQq(rs.getString("Qq"));
					user.setPersonalWebsite(rs.getString("Personal_website"));
					user.setDocumentType(rs.getString("Document_type"));
					user.setIDcard(rs.getString("Certificates_ID"));
					user.setBirthday(rs.getString("Birth_date"));
					user.setPersonalProfile(rs.getString("Personal_profile"));
					list.add(user);
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
		
		//根据name查找指定的user
		public UserInformation find(String name){
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try{
				//获得数据的连接
				conn = JDBCUtils.getConnection();
				//获得Statement对象
				stmt = conn.createStatement();
				//发送SQL语句
				String sql = "SELECT * FROM User_Personal_Information_Table WHERE name='"+name + "'";
				rs = stmt.executeQuery(sql);
				//处理结果集
				while(rs.next()){
					UserInformation user = new UserInformation();
					user.setFullname(rs.getString("fullname"));
					user.setGender(rs.getString("gender"));
					user.setQq(rs.getString("qq"));
					user.setPersonalWebsite(rs.getString("personalWebsite"));
					user.setDocumentType(rs.getString("DocumentType"));
					user.setIDcard(rs.getString("IDcard"));
					user.setBirthday(rs.getString("birthdate"));
					user.setPersonalProfile(rs.getString("personalProfile"));
					return user;
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
		
		//删除用户个人信息
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
					String sql = "DELETE FROM User_Personal_Information_Table WHERE User_Personal_id="+id;
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
		
		//修改用户个人信息
		public boolean update(UserInformation user){
			Connection conn=null;
			PreparedStatement stmt=null;
			ResultSet rs = null;
			try{
				//获得数据连接
				conn = JDBCUtils.getConnection();
				//发送SQL语句
				String sql = "UPDATE User_login_registry set Full_name=?,Gender=?,Qq=?,Personal_website=?,Document_type=?,Certificates_ID=?,Birth_date=?,Personal_profile=?";
				//获得Statement对象
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, user.getFullname());
				stmt.setString(2, user.getGender());
				stmt.setString(3, user.getQq());
				stmt.setString(4, user.getPersonalWebsite());
				stmt.setString(5, user.getDocumentType());
				stmt.setString(6, user.getIDcard());
				stmt.setString(7, user.getBirthday());
				stmt.setString(8, user.getPersonalProfile());
				int num = stmt.executeUpdate();
				if (num>0) {
					return true;
				}
				return false;
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally{
				JDBCUtils.release(rs,stmt, conn);
			}
			return false;
		}
}
