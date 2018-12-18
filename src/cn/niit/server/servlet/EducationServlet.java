package cn.niit.server.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.niit.jdbc.dao.EducationDao;
import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.domain.EducationExperience;
import cn.niit.jdbc.domain.UserLogin;

/**
 * Servlet implementation class EducationServlet
 */
@WebServlet("/EducationServlet")
public class EducationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EducationExperience eex = new EducationExperience();
		EducationDao dao = new EducationDao();
		UserLogin userLogin = new UserLogin();
		String name = userLogin.getUsername();
		
		String schoolName = request.getParameter("School_name");
		String majorStudied = request.getParameter("Major_studied");
		String admissionTime = request.getParameter("Admission_time");
		String Education = request.getParameter("Education");
		String relatedSkils = request.getParameter("Related_skills");
		String achievements = request.getParameter("Achievements");
		
		eex.setSchoolName(schoolName);
		eex.setMajorStudied(majorStudied);
		eex.setAdmissionTime(admissionTime);
		eex.setEducation(Education);
		eex.setRelatedSkils(relatedSkils);
		eex.setAchievements(achievements);
		
		
		
		dao.insert(eex,name);
		
		response.setHeader("Refresh", "0;URL=/ServletJdbcDemo/information.jsp");
		doGet(request, response);
	}

}
