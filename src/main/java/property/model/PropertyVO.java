package property.model;
//VO (Value Object) : 값을 담는 객체, 도메인 객체
import java.sql.*;
public class PropertyVO {
	private String property_id;
	private String seller_id;
	private String addr;
	private String price;
	private String descript;
	private String property_type;
	private String total_size;
	private java.sql.Date reg_date;
	//기본 생성자
	public PropertyVO() {
		
	}
	//인자 생성자
	public PropertyVO(String property_id, String seller_id, String addr, String price, String descript,
			String property_type, String total_size, Date reg_date) {
		super();
		this.property_id = property_id;
		this.seller_id = seller_id;
		this.addr = addr;
		this.price = price;
		this.descript = descript;
		this.property_type = property_type;
		this.total_size = total_size;
		this.reg_date = reg_date;
	}
	public String getProperty_id() {
		return property_id;
	}
	public void setProperty_id(String property_id) {
		this.property_id = property_id;
	}
	public String getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	public String getProperty_type() {
		return property_type;
	}
	public void setProperty_type(String property_type) {
		this.property_type = property_type;
	}
	public String getTotal_size() {
		return total_size;
	}
	public void setTotal_size(String total_size) {
		this.total_size = total_size;
	}
	public java.sql.Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(java.sql.Date reg_date) {
		this.reg_date = reg_date;
	}
	
}
