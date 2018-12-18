package Test;

import cn.niit.jdbc.dao.UsersDao;

public class Test4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//删除操作
		UsersDao dao = new UsersDao();
		boolean b = dao.delete(2);
		System.out.println(b);
	}

}
