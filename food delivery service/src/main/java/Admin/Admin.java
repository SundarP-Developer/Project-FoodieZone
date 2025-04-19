package Admin;

import java.io.InputStream;
import java.sql.Connection;	
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Admin {

	public static Connection  connection() throws SQLException, ClassNotFoundException {
		Connection connection=null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelivery","root","Sundar@2005");
		return connection;
	}
	
	public static boolean check(String id,String pass) throws ClassNotFoundException, SQLException {
		
		boolean ans=false;
		
		Connection connect=Admin.connection();
		
		String query="select 1 from clientlogin where id = ? && password = ?";
		PreparedStatement pst=connect.prepareStatement(query);
		pst.setString(1, id);
		pst.setString(2, pass);
		ResultSet rs=pst.executeQuery();
		
		if(rs.next()) {
			ans=true;
		}

		return ans;
	}
	
	public static boolean add(String hotel_name,String phone_number,String location) throws SQLException, ClassNotFoundException {
		
		Connection connect=Admin.connection();
		
		Statement state=connect.createStatement();
    	
		boolean ans=false;
		
    	String query1="CREATE TABLE "+ hotel_name+ " (id INT AUTO_INCREMENT PRIMARY KEY,Food varchar(70),Price int) ";
    	state.executeUpdate(query1);
    	
    	String query2="insert into hotel_list(hotel_name,phone_number,location) values(?,?,?) ";
    	PreparedStatement pst=connect.prepareStatement(query2);
    	pst.setString(1, hotel_name);
    	pst.setString(2, phone_number);
    	pst.setString(3, location);
    	int rs=pst.executeUpdate();
    	
    	if(rs>0) {
    		ans=true;
    	}		
    	return ans;
	}
	
	public static boolean insert_food(String hotel_name,String food_name,int price) throws ClassNotFoundException, SQLException {
		
		boolean ans=false;
		Connection connect=Admin.connection();
		
		String query="insert into "+ hotel_name +"(Food,Price) values(?,?)";
		PreparedStatement pst=connect.prepareStatement(query);
		pst.setString(1, food_name);
		pst.setInt(2, price);
		int rs=pst.executeUpdate();
		
		if(rs>0)
			ans=true;

		
		return ans;
	}
	
	public static ResultSet hotel_list() throws ClassNotFoundException, SQLException {
		
		
		Connection connect=Admin.connection();
		Statement state=connect.createStatement();
		
		String query="select * from hotel_list";
		
		ResultSet rs = state.executeQuery(query);
	
		return rs;
		
	}
	
	public static boolean delete_hotel(String hotel_name) throws ClassNotFoundException, SQLException {
		
		boolean ans=false;
		Connection connect=Admin.connection();
		Statement state=connect.createStatement();
		
		String query = "drop table "+hotel_name;
		int rs=state.executeUpdate(query);
		
		String query1 = "delete from hotel_list where hotel_name = '"+hotel_name+"'";
		int rs1=state.executeUpdate(query1);
		
		if(rs==0 && rs1>0) {
			ans=true;
		}
		
		return ans;
	}
	
	public static ResultSet food_details(String hotel_name) throws ClassNotFoundException, SQLException {
		
		Connection connect = Admin.connection();
		Statement state=connect.createStatement();
		
		String query="select * from "+ hotel_name;
		
		ResultSet rs=null;
		
		if(hotel_name!=null && !hotel_name.trim().isEmpty()) {
    		
			String query1="select * from "+ hotel_name;
			rs=state.executeQuery(query1);
    	}
    	else {
    		rs=state.executeQuery(query);
    	}
		
		return rs;
	}
	
	public static boolean delete_food(String hotel_name,String food_name) throws ClassNotFoundException, SQLException {
		
		Connection connect=Admin.connection();
		
		boolean ans=false;
		
		String query="delete from "+hotel_name+ " where Food = ?" ;
		
		PreparedStatement pst = connect.prepareStatement(query);
	    pst.setString(1, food_name);
	    int rs= pst.executeUpdate();
		
		if(rs>0)
			ans=true;
		
		return ans;
	}
	
	public static boolean update(String hotel_name,String food_name,int price) throws ClassNotFoundException, SQLException {
		
		Connection connect = Admin.connection();
		
		boolean ans=false;
		
		Statement state=connect.createStatement();
		
		String query="update "+hotel_name+" set Price = "+price+" where Food = '"+food_name+"'";
		int rs =state.executeUpdate(query);
		
		if(rs>0) {
			ans=true;
		}
		
		return ans;
	}
	
	public static ResultSet order_details(String date) throws ClassNotFoundException, SQLException {
		
		Connection connect=Admin.connection();
		Statement state=connect.createStatement();
		
		String query = "select * from bookings ";
		
		PreparedStatement pst=null;
		ResultSet rs=null;
		
		if(date!=null) {
			
			query += "where booking_date = ?";
			pst=connect.prepareStatement(query);
			pst.setString(1, date);
			rs=pst.executeQuery();
		}
		else {
			rs=state.executeQuery(query);
		}

		return rs;
	}
	
	 public static boolean delete_record(int chosen_id) throws SQLException, ClassNotFoundException {
		
		 Connection connect=Admin.connection();
			
			boolean ans=false;
			
			String query="delete from bookings where id = ?" ;
			
			PreparedStatement pst = connect.prepareStatement(query);
			pst.setInt(1, chosen_id);
		    int rs= pst.executeUpdate();
			
			if(rs>0)
				ans=true;
			
			return ans;

	}
	
}
