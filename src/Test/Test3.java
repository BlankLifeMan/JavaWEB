package Test;

import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.domain.User;


public class Test3 {
public static void main(String[] args){
	UsersDao dao = new UsersDao();
	User user = dao.find("2");
	System.out.println("id为1的User对象的name值为:"+user.getUsername());
	
} 
}
