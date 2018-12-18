package cn.niit.server.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.dao.WorkDao;
import cn.niit.jdbc.domain.User;
import cn.niit.jdbc.domain.WorkExperience;

/**
 * Servlet implementation class workServlet
 */
@WebServlet("/workServlet")
public class workServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WorkExperience work = new WorkExperience();
		WorkDao dao = new WorkDao();
		User userLogin = new User();
		String name = userLogin.getUsername();
		
		String corporateName = request.getParameter("Corporate_name");
		String positionTitle = request.getParameter("Position_title");
		String workCity = request.getParameter("Work_city");
		String workingHours = request.getParameter("Working_hours");
		String technology = request.getParameter("Related_technology");
		String positionDescribe = request.getParameter("Position_describe");
		
		work.setCorporateName(corporateName);
		work.setPositionTitle(positionTitle);
		work.setWorkCity(workCity);
		work.setWorkingHours(workingHours);
		work.setTechnology(technology);
		work.setPositionDescribe(positionDescribe);
		
		
	
		dao.insert(work,name);
		response.setHeader("Refresh", "0;URL=/ServletJdbcDemo/information.jsp");
		doGet(request, response);
	}

}
