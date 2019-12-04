package student;

import java.util.List;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class StudentSaveServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		
		String ssno=request.getParameter("ssno");
		String ssname=request.getParameter("ssname");
		String sssex=request.getParameter("sssex");
		String ssage=request.getParameter("ssage");
		String ssmajor=request.getParameter("ssmajor");
		String ssfav=request.getParameter("ssfav");
		String ssaddress=request.getParameter("ssaddress");
		
		Student student=new Student(ssno, ssname, sssex, Integer.parseInt(ssage), ssmajor, ssfav, ssaddress);
		HttpSession session=request.getSession();
		DBUser dbuser=new DBUser(this.getServletContext());
		if(action.equals("new"))//ÐÂÔö
		{
			boolean flag=dbuser.addStudent(student);
			if(flag){
				response.sendRedirect("studentlistservlet?action=edit");
			}
			else {
					response.sendRedirect("error.jsp");
			}
		}
		else if(action.equals("modify")){//ÐÞ¸Ä
			boolean flag=dbuser.modifyStudent(student);
			if(flag){
				response.sendRedirect("studentlistservlet?action=edit");
			}
			else {
					response.sendRedirect("error.jsp");
			}
		}
	}
	
}
