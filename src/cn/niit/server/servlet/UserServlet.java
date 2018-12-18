package cn.niit.server.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.domain.EducationExperience;
import cn.niit.jdbc.domain.UserInformation;
import cn.niit.jdbc.domain.User;
import cn.niit.jdbc.domain.WorkExperience;
import cn.niit.jdbc.utils.Verification;
import jdk.nashorn.internal.ir.RuntimeNode.Request;
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UsersDao dao = new UsersDao();
		User user = new User();
		WorkExperience work = new WorkExperience();
		UserInformation user1 = new UserInformation();
		EducationExperience eex = new EducationExperience();

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String password1 = request.getParameter("password1");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		Verification verification = new Verification();
		 boolean pass = verification.IsPasswLength(password);
		 if (password.equals(password1)){
			 if (!pass){
			 request.setAttribute("pass", "密码格式错误！");
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/UserLoginZC.jsp");
			 dispatcher.forward(request, response);
				//response.setHeader("Refresh", "0;URL=/ServletJdbcDemo/UserLoginZC.jsp");
			 return;
		}
		}else{
			 request.setAttribute("compare", "两次密码不一样！");
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/UserLoginZC.jsp");
			 dispatcher.forward(request, response);
			 return;
		}
		
		if (request.getParameter("mailbox")==null) {
			 boolean ph = verification.checkMobile(phone);
			if (!ph) {
				 request.setAttribute("ph", "电话号码格式错误！");
				 RequestDispatcher dispatcher = request.getRequestDispatcher("/UserLoginZC.jsp");
				 dispatcher.forward(request, response);
				 return;
			}
			user.setUsername(username);
			user.setPassword(password);
			user.setMailbox(phone);
		}else {
			 boolean em = verification.checkEmail(email);
			if (!em) {
				 request.setAttribute("em", "邮箱格式错误！");
				 RequestDispatcher dispatcher = request.getRequestDispatcher("/UserLoginZC.jsp");
				 dispatcher.forward(request, response);
				 return;
			}
			user.setUsername(username);
			user.setPassword(password);
			user.setMailbox(email);
		}
		
		if (!dao.insert(user)) {
			 request.setAttribute("su", "账号名已存在！");
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/UserLoginZC.jsp");
			 dispatcher.forward(request, response);
			 return;
		}
		work.setName(username);
		user1.setName(username);
		eex.setName(username);
		dao.jian(work, user1, eex);
		dao.insert(user);
		
		request.setAttribute("UserLogin", user);
		response.setHeader("Refresh", "0;URL=/ServletJdbcDemo/UserLogin.jsp");

		doGet(request, response);
	}

}
