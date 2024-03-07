package property.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

//DAO (Data Access Object) : Database에 접근하여 CRUD로직을 수행하는 객체
//==> Data Layer (Persistence Layer) ==> Model에 해당
public class PropertyDAO {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	private DataSource ds;
	
	public PropertyDAO() {
		try {
			Context ctx = new InitialContext();
			ds=(DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	
	public int getTotalCount() throws SQLException {
		try {
			con=ds.getConnection();
			String sql="select count(property_id) cnt from properties";
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			//단일행 반환
			if(rs.next()) {
				int count = rs.getInt("cnt");
				return count;
			}
			return 0;
		}finally {
			close();
		}
	}
	
	/**게시글 목록*/
	public List<PropertyVO> listProperties(int start, int end) throws Exception{
		try {
			con=ds.getConnection();
//			String sql = "select * from mvc_board order by num desc"; // paging 처리 안할 때
			StringBuffer buf = new StringBuffer("select * from (")
					.append(" select rownum rn, a.* from ")
					.append(" (select * from properties order by PROPERTY_ID desc) a)")
					.append(" where rn between ? and ?");
			String sql = buf.toString();
			ps=con.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			rs=ps.executeQuery();
			return makeList(rs);
		}finally {
			close();
		}
	}
	
	
	private ArrayList<PropertyVO> makeList(ResultSet rs) throws SQLException {
		ArrayList<PropertyVO> arr = new ArrayList<>();
		System.out.println(rs);
		while(rs.next()) {
			String property_id = rs.getString("property_id");
			String seller_id = rs.getString("seller_id");
			String addr = rs.getString("addr");
			String price = rs.getString("price");
			String descript = rs.getString("descript");
			String property_type = rs.getString("property_type");
			String total_size = rs.getString("total_size");
			java.sql.Date reg_date = rs.getDate("reg_date");
			PropertyVO record = new PropertyVO(property_id,seller_id,addr,price,descript,property_type,total_size,reg_date);
			arr.add(record);
		}//---while
		return arr;
	}
	public void close() {
		try {
			if(con!=null) con.close();
			if(ps!=null) ps.close();
			if(rs!=null) rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}//////////////////////////////////////////////
