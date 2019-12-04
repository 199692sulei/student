package student;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class StudentDeleteServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		String ssno=request.getParameter("ssno");
		
		HttpSession session=request.getSession();
		DBUser dbuser=new DBUser(this.getServletContext());
		boolean flag=dbuser.deleteStudent(ssno);
		if(flag){
			response.sendRedirect("studentlistservlet?action=edit");
		}
		else {
				response.sendRedirect("error.jsp");
		}
	}
	
}
