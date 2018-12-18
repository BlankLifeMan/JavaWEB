package co.niit.server.lohin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.domain.User;


/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServletZC1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServletZC1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("name");
		String phonenumber = request.getParameter("phonenumber");
		String password = request.getParameter("password");
		UsersDao dao = new UsersDao();
		User user = new User();
		user.setPhonenumber(phonenumber);
		user.setUsername(name);
		user.setPassword(password);
		boolean b = dao.insert(user);
		System.out.println(b);
		response.setHeader("Refresh", "1;URL=/ServletJdbcDemo/test.jsp");
		doGet(request, response);
	}

}
