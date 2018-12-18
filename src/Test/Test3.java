package Test;

import org.apache.tomcat.jni.User;

import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.domain.UserLogin;


public class Test3 {
public static void main(String[] args){
	UsersDao dao = new UsersDao();
	UserLogin user = dao.find("2","2");
	System.out.println("id为1的User对象的name值为:"+user.getUsername());
	
} 
}
