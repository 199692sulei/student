package student;
//代表学生的实体类
import javax.servlet.ServletContext;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class DBUser {
	private ServletContext application;
	//定义构造方法，加载驱动程序，接收全局应用对象
	public DBUser(ServletContext application){
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (Exception e) {
				e.printStackTrace();
		}
		this.application=application;
	}
	
	//添加getStudent()方法取出所有学生数据，每个学生的数据放在Student类型的一个对象中，所有学生存放一个list类型的对象中
	public List<Student> getStudent(){
		List<Student> sStudent=new ArrayList();
		Connection con=null;
		
		
		try{

			String url="jdbc:mysql://localhost:3306/studenttb";
	 		con=DriverManager.getConnection(url, "root","root");
	
			Statement stmt=con.createStatement();
			ResultSet result=stmt.executeQuery("select * from studenttb order by (ssno+0) ASC");
			while(result.next())
			{
				Student student=new Student();
				student.setSsno(result.getString("ssno"));
				student.setSsname(result.getString("ssname"));
				student.setSssex(result.getString("sssex"));
				student.setSsage(result.getInt("ssage"));
				student.setSsmajor(result.getString("ssmajor"));
				student.setSsfav(result.getString("ssfav"));
				student.setSsaddress(result.getString("ssaddress"));
				sStudent.add(student);
				
			}
		}catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				if(con!=null){
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}	
				}	
			}
				
				return sStudent;
		}
 //根据名字查询信息
	public List getStudentByName(String ssname){
		List sStudent=new ArrayList();
		Connection con=null;
		Student student=null;
		
		try{

			String url="jdbc:mysql://localhost:3306/studenttb";
	 		con=DriverManager.getConnection(url, "root","root");
	
			Statement stmt=con.createStatement();
			String sql;
			if(ssname==null||ssname.equals(""))
			{
				sql="select * from studenttb order by (ssno+0) ASC";
			}
			else
			{
				sql="select * from studenttb where ssname like'%"+ssname+"%' order by (ssno+0) ASC";
			}
			ResultSet result=stmt.executeQuery(sql);
			while(result.next())
			{
				student=new Student(sql, sql, sql, 0, sql, sql, sql);
				student.setSsno(result.getString("ssno"));
				student.setSsname(result.getString("ssname"));
				student.setSssex(result.getString("sssex"));
				student.setSsage(result.getInt("ssage"));
				student.setSsmajor(result.getString("ssmajor"));
				student.setSsfav(result.getString("ssfav"));
				student.setSsaddress(result.getString("ssaddress"));
				sStudent.add(student);
				
			}
		}catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				if(con!=null){
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}	
				}	
			}
				
				return sStudent;
		}
	
	//添加学生信息
	public boolean addStudent(Student student){
		Connection con=null;
		boolean flag=false;
		try{
			String url="jdbc:mysql://localhost:3306/studenttb";
			con=DriverManager.getConnection(url, "root", "root");
			PreparedStatement stmt=con.prepareStatement("insert into studenttb values(?,?,?,?,?,?,?)");
			
			
			stmt.setString(1,student.getSsno());
			stmt.setString(2,student.getSsname());
			stmt.setString(3,student.getSssex());
			stmt.setInt(4,student.getSsage());
			stmt.setString(5,student.getSsmajor());
			stmt.setString(6,student.getSsfav());
			stmt.setString(7,student.getSsaddress());
			if(stmt.executeUpdate()!=0){
				 flag=true;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}catch (Exception e){
			e.printStackTrace();
		}finally{
			if(con!=null){
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}	
		return flag;

	}
//根据学号查询学生信息
	public Student getStudentBySsno(String ssno){
		Connection con=null;
		Student student=null;
		
		try{

			String url="jdbc:mysql://localhost:3306/studenttb";
	 		con=DriverManager.getConnection(url, "root","root");
	
			Statement stmt=con.createStatement();
			String sql="select * from studenttb where ssno='"+ssno+"' order by (ssno+0) ASC";
			ResultSet result=stmt.executeQuery(sql);
			while(result.next())
			{
				student=new Student(sql, sql, sql, 0, sql, sql, sql);
				student.setSsno(result.getString("ssno"));
				student.setSsname(result.getString("ssname"));
				student.setSssex(result.getString("sssex"));
				student.setSsage(result.getInt("ssage"));
				student.setSsmajor(result.getString("ssmajor"));
				student.setSsfav(result.getString("ssfav"));
				student.setSsaddress(result.getString("ssaddress"));				
			}
		}catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}catch(Exception e){
				e.printStackTrace();
			}finally {
				if(con!=null){
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}	
				}	
			}
				
				return student;
		}
	//修改学生信息
	public boolean  modifyStudent(Student student){
		Connection con=null;
		boolean flag=false;
		
		try{

			String url="jdbc:mysql://localhost:3306/studenttb";
	 		con=DriverManager.getConnection(url, "root","root");
	
			Statement stmt=con.createStatement();
			String sql="update studenttb set ssname='"+student.getSsname()
					+"',sssex='"+student.getSssex()
					+"',ssage='"+student.getSsage()
					+"',ssmajor='"+student.getSsmajor()
					+"',ssfav='"+student.getSsfav()
					+"',ssaddress='"+student.getSsaddress()
					+"'where ssno='"+student.getSsno()+"'";
			int row=stmt.executeUpdate(sql);
			if(row==1)
			{
				flag=true;
			}
			
		
	}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if(con!=null){
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
			}	
		}
			
			return flag;
	}

	//删除学生信息
	public boolean deleteStudent(String ssno){
		Connection con=null;
		boolean flag=false;
		
		try{

			String url="jdbc:mysql://localhost:3306/studenttb";
	 		con=DriverManager.getConnection(url, "root","root");
	
			Statement stmt=con.createStatement();
			
			String sql="delete from studenttb where ssno='"+ssno+"'";
			int row=stmt.executeUpdate(sql);
			if(row==1)
			{
				flag=true;
			}
			
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if(con!=null){
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
			}	
		}
			return flag;
	}
}
