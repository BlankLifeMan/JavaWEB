package cn.niit.server.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.niit.jdbc.dao.PersonalDao;
import cn.niit.jdbc.dao.UsersDao;
import cn.niit.jdbc.domain.UserInformation;
import cn.niit.jdbc.domain.UserLogin;

@WebServlet("/PersonalServlet")
public class PersonalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserInformation userInformation = new UserInformation();
		PersonalDao pDao = new PersonalDao();
		UserLogin userLogin = new UserLogin();
		String name = userLogin.getUsername();
		
		request.getParameter("per");
		String fullname = request.getParameter("name");
		String gender = request.getParameter("sex");
		String qq = request.getParameter("QQ");
		String student = request.getParameter("Student_ID");
		String personalWebsite = request.getParameter("personalWebsite");
		String DocumentType = request.getParameter("Document_type");
		String IDcard = request.getParameter("ID_number");
		String birthdate = request.getParameter("Date_of_birth");
		String personalProfile = request.getParameter("Personal_profile");
		
		userInformation.setFullname(fullname);
		userInformation.setGender(gender);
		userInformation.setQq(qq);
		userInformation.setPersonalWebsite(student);
		userInformation.setPersonalWebsite(personalWebsite);
		userInformation.setDocumentType(DocumentType);
		userInformation.setIDcard(IDcard);
		userInformation.setBirthdate(birthdate);
		userInformation.setPersonalProfile(personalProfile);
		
	
		pDao.insert(userInformation,name);
		response.setHeader("Refresh", "0;URL=/ServletJdbcDemo/information.jsp");
		doGet(request, response);
	}

}
