package cn.niit.server.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.niit.jdbc.dao.EducationDao;
import cn.niit.jdbc.dao.PersonalDao;
import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.dao.WorkDao;
import cn.niit.jdbc.domain.EducationExperience;
import cn.niit.jdbc.domain.User;
import cn.niit.jdbc.domain.UserInformation;
import cn.niit.jdbc.domain.WorkExperience;

@WebServlet("/infoServlet")
public class InfoServlet extends HttpServlet {
  
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 1. 获取登录用户的信息
		HttpSession session = req.getSession();
		String name = (String) session.getAttribute("testname");
		
		// 2. 如果没有登录信息，直接跳转到登录页面
		if(name == null) {
			resp.sendRedirect("/UserLogin.jsp");
		} else {
		// 3. 如果有登录信息，获取个人信息后，跳转到infomation.jsp显示
			EducationDao edao=new EducationDao();
		    PersonalDao pdao = new PersonalDao();
		    WorkDao wdao = new WorkDao();
		    UsersDao udao = new UsersDao();
		    EducationExperience edu = edao.find(name);
		    UserInformation info = pdao.find(name);
		    WorkExperience work = wdao.find(name);
		    User user = udao.find(name);
		    
		    req.setAttribute("edu", edu);
		    req.setAttribute("info", info);
		    req.setAttribute("work", work);
		    req.setAttribute("user", user);
		    req.setAttribute("img", user.getImg());
		    req.getRequestDispatcher("/information.jsp").forward(req, resp);
		}
	}
}
