package student;
//连接及操纵数据库的组件，一个工具类
import java.io.Serializable;
public class Student implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//私有学生属性
	private String ssno;
	private String ssname;
	private String sssex;
	private int ssage;
	private String ssmajor;
	private String ssfav;
	private String ssaddress;
	private  int id;	
	
	public String getSsno() {
		return ssno;
	}
	public void setSsno(String ssno) {
		this.ssno = ssno;
	}
	public String getSsname() {
		return ssname;
	}
	public void setSsname(String ssname) {
		this.ssname = ssname;
	}
	public String getSssex() {
		return sssex;
	}
	public void setSssex(String sssex) {
		this.sssex = sssex;
	}
	public int getSsage() {
		return ssage;
	}
	public void setSsage(int ssage) {
		this.ssage = ssage;
	}
	public String getSsmajor() {
		return ssmajor;
	}
	public void setSsmajor(String ssmajor) {
		this.ssmajor = ssmajor;
	}
	public String getSsfav() {
		return ssfav;
	}
	public void setSsfav(String ssfav) {
		this.ssfav = ssfav;
	}
	public String getSsaddress() {
		return ssaddress;
	}
	public void setSsaddress(String ssaddress) {
		this.ssaddress = ssaddress;
	}
	public void setId(int id){
		this.id=id;
	}
	public int getId(){
		return id;
	}
	public Student(){
		
	}
	public Student(String ssno,String ssname,String sssex,int ssage,String ssmajor,String ssfav,String ssaddress){
		this.ssno=ssno;
		this.ssname=ssname;
		this.sssex=sssex;
		this.ssage=ssage;
		this.ssmajor=ssmajor;
		this.ssfav=ssfav;
		this.ssaddress=ssaddress;
	}

}
