package student;

import java.util.List;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class StudentListByNameServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String ssname=request.getParameter("ssname");
		
		DBUser dbuser=new DBUser(this.getServletContext());
		List sStudent=dbuser.getStudentByName(ssname);
		
		HttpSession session=request.getSession();
		session.setAttribute("StudentList", sStudent);
		
		response.sendRedirect("studentlistbyname.jsp");
	}
}
