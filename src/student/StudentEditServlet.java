package student;

import java.util.List;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
//import javax.websocket.Session;

public class StudentEditServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String ssno=request.getParameter("ssno");
		HttpSession session=request.getSession();
		if(ssno==null||ssno.equals(""))
		{
			response.sendRedirect("studentnew.jsp");
		}
		else
		{
			DBUser dbuser=new DBUser(this.getServletContext());
			Student student=dbuser.getStudentBySsno(ssno);
			session.setAttribute("student", student);
			
			response.sendRedirect("studentmodify.jsp");
		}
		
	}

}
