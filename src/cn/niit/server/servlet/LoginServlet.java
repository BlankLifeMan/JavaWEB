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
import cn.niit.jdbc.domain.UserLogin;
import cn.niit.jdbc.domain.WorkExperience;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		UsersDao dao = new UsersDao();
		String name = request.getParameter("username");
		String pass = request.getParameter("password");
		UserLogin user = dao.find(name,pass);
		if(user!=null){
			String name1 = user.getUsername();
			String pass1 = user.getPassword();
			
			if (name1.equals(name)) {
				if (pass1.equals(pass)) {
					request.setAttribute("testname", name);  
					RequestDispatcher de=request.getRequestDispatcher("/information.jsp");  
					de.forward(request, response);
//					response.setHeader("Refresh", "0;URL=/ServletJdbcDemo/information.jsp");
				}else{
					 request.setAttribute("password", "密码不正确！");
					 RequestDispatcher dispatcher = request.getRequestDispatcher("/UserLogin.jsp");
					 dispatcher.forward(request, response);
				}
			}else{
				 request.setAttribute("username", "账号不存在！");
				 RequestDispatcher dispatcher = request.getRequestDispatcher("/UserLogin.jsp");
				 dispatcher.forward(request, response);
			}
		}else{
			 request.setAttribute("username", "账号不存在！");
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/UserLogin.jsp");
			 dispatcher.forward(request, response);
		}
	}
}
