package student;

import java.util.List;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

//import com.sun.org.apache.bcel.internal.Constants;


public class StudentListServlet  extends HttpServlet{
	
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
		/*request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		
		DBUser dbuser=new DBUser(this.getServletContext());
		List sStudent=dbuser.getStudent();
		*/
		
		request.setCharacterEncoding("utf-8");
		
		String action=request.getParameter("action");
		DBUser dbuser=new DBUser(this.getServletContext());
		List sStudent=dbuser.getStudent();
		HttpSession session=request.getSession();
		session.setAttribute("StudentList", sStudent);
		if(action.equals("list"))    //学生信息列表
		{
			response.sendRedirect("studentlist.jsp");
		}
		else if(action.equals("listbyname"))    //学生信息查询
		{
			response.sendRedirect("studentlistbyname.jsp");
		}		
		else if(action.equals("edit"))    //学生信息维护
		{
			response.sendRedirect("studentlistedit.jsp");
		}
		else if(action.equals("listbypage"))    //学生数据分页
		{
			response.sendRedirect("studentlistbypage.jsp");
		}	
	}
}
