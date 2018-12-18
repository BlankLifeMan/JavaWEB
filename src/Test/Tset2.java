package Test;

import java.util.ArrayList;

import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.domain.User;


public class Tset2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UsersDao dao = new UsersDao();
		ArrayList<User> list = dao.findAll();
		for(int i=0;i<list.size();i++){
			System.out.println("第"+(i+1)+"条数据的username值为："+list.get(i).getUsername());
		}
	}

}
