package Test;


import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.domain.User;


public class Test1 {
	 
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UsersDao dao = new UsersDao();
		User user = new User();
		user.setUsername("123");
		user.setPassword("456");
		user.setPhonenumber("124646556");
		user.setMailbox("554645645");
		boolean b = dao.update(user);
		System.out.println(b);
	}

}
