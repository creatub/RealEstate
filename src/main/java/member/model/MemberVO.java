package member.model;
//VO (Value Object) : 값을 담는 객체, 도메인 객체
import java.sql.*;
public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String tel;
	private java.sql.Date indate;
	private String email;
	private String addr1;
	private String addr2;
	private String addr3;
	//기본 생성자
	public MemberVO() {
		
	}
	//인자 생성자
	public MemberVO(String id, String pw, String name, String tel, Date indate, String email, String addr1,
			String addr2, String addr3) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.indate = indate;
		this.email = email;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
	}
	
	//setter, getter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public java.sql.Date getIndate() {
		return indate;
	}
	public void setIndate(java.sql.Date indate) {
		this.indate = indate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}	
	
}
