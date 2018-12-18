package cn.niit.jdbc.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import cn.niit.jdbc.domain.EducationExperience;
import cn.niit.jdbc.domain.User;
import cn.niit.jdbc.domain.UserInformation;
import cn.niit.jdbc.domain.WorkExperience;
import cn.niit.jdbc.utils.JDBCUtils;



public class UsersDao {
	//根据name,pass查找指定的id
		public User getId(String name,String pass){
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try{
				//获得数据的连接
				conn = JDBCUtils.getConnection();
				//获得Statement对象
				stmt = conn.createStatement();
				//发送SQL语句
				String sql = "SELECT * FROM User_login_registry WHERE User_name="+"'"+name+"'"+" and "+"Password="+"'"+pass+"'";
				rs = stmt.executeQuery(sql);
				//处理结果集
				while(rs.next()){
					User user = new User();
					user.setUserloginID(rs.getInt("User_login_id"));
					return user;
	 			}
				return null;
			}catch (Exception e){
				// TODO: handle exception
				e.printStackTrace();
			}finally{
				JDBCUtils.release(rs,stmt,conn);
			}
			return null;
		}
	//添加键
	public boolean jian(WorkExperience work,UserInformation user,EducationExperience eex){
		Connection conn = null;
		PreparedStatement stmt = null;
		PreparedStatement stmt1 = null;
		PreparedStatement stmt2 = null;
		ResultSet rs = null;
		try{
			//获得数据的连接
			conn = JDBCUtils.getConnection();
			//发送SQL语句
			String sqlwprk = "INSERT INTO User_Work_Experience_Table(name) VALUES (?)";
			String sqluser = "INSERT INTO User_Personal_Information_Table(name) VALUES (?)";
			String sqleex = "INSERT INTO User_Education_Experience_Table(name) VALUES (?)";
			stmt = conn.prepareStatement(sqlwprk);
			stmt.setString(1, work.getName());
			stmt1 = conn.prepareStatement(sqluser);
			stmt1.setString(1, user.getName());
			stmt2 = conn.prepareStatement(sqleex);
			stmt2.setString(1, eex.getName());
			int num = stmt.executeUpdate();
			int num1 = stmt1.executeUpdate();
			int num2 = stmt2.executeUpdate();
			if (num>0) {
				return true;
			}
			if (num1>0) {
				return true;
			}
			if (num2>0) {
				return true;
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			JDBCUtils.release(rs,stmt, conn);
		}
		return false;
	}
	//添加用户的操作
	public boolean insert(User user) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try{
			//获得数据的链接
			conn = JDBCUtils.getConnection();
			//发送SQL语句
			String sql = "INSERT INTO User_login_registry(Cell_phone_number,User_name,Password,mailbox) VALUES (?,?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getPhonenumber());
			stmt.setString(2, user.getUsername());
			stmt.setString(3, user.getPassword());
			stmt.setString(4, user.getMailbox());
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
	public ArrayList<User> findAll(){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<User> list = new ArrayList<User>();
		try{
			//获得数据的连接
			conn = JDBCUtils.getConnection();
			//获得Statement对象
			stmt = conn.createStatement();
			//发送SQL语句
			String sql = "SELECT * FROM User_login_registry";
			rs = stmt.executeQuery(sql);
			//处理结果集
			while(rs.next()){
				User user = new User();
				user.setUsername(rs.getString("User_name"));
				user.setPhonenumber(rs.getString("Cell_phone_number"));
				user.setPassword(rs.getString("Password"));
				user.setMailbox(rs.getString("mailbox"));
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
	public User find(String name){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try{
			//获得数据的连接
			conn = JDBCUtils.getConnection();
			//获得Statement对象
			stmt = conn.createStatement();
			//发送SQL语句
			String sql = "SELECT * FROM User_login_registry WHERE User_name="+"'"+name+"'";
			
			rs = stmt.executeQuery(sql);
			//处理结果集
			while(rs.next()){
				User user = new User();
				user.setUsername(rs.getString("User_name"));
				user.setPhonenumber(rs.getString("Cell_phone_number"));
				user.setPassword(rs.getString("Password"));
				user.setMailbox(rs.getString("mailbox"));
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
	//删除用户
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
				String sql = "DELETE FROM User_login_registry WHERE User_login_id="+id;
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
	//修改用户
	public boolean update(User user){
		Connection conn=null;
		PreparedStatement stmt=null;
		ResultSet rs = null;
		try{
			//获得数据连接
			conn = JDBCUtils.getConnection();
			//获得Statement对象
			
			//发送SQL语句
			String sql = "UPDATE User_login_registry set Cell_phone_number=?,User_name=?,Password=?,mailbox=?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getPhonenumber());
			stmt.setString(2, user.getUsername());
			stmt.setString(3, user.getPassword());
			stmt.setString(4, user.getMailbox());
			int num = stmt.executeUpdate();
			return num > 0;
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			JDBCUtils.release(rs,stmt, conn);
		}
		return false;
	}
	
	//修改用户头像
		public boolean updatePicture(User user,String name){
			Connection conn=null;
			PreparedStatement stmt=null;
			ResultSet rs = null;
			try{
				//获得数据连接
				conn = JDBCUtils.getConnection();
				//获得Statement对象
				
				//发送SQL语句
				String sql = "UPDATE User_login_registry set img=? where name = '"+name+"'";
				stmt = conn.prepareStatement(sql);
				stmt.setString(1, user.getImg());
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
