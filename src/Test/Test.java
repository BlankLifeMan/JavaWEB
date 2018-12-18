package Test;

import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.dao.WorkDao;
import cn.niit.jdbc.domain.UserLogin;
import cn.niit.jdbc.domain.WorkExperience;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WorkDao dao = new WorkDao();
		WorkExperience user = new WorkExperience();
		user.setCorporateName("asdsa");
		user.setWorkCity("adsa");
		user.setWorkCity("上海");
		boolean b = dao.insert(user,"");
		System.out.println(b);
	}

}
