package home;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;

public class User_Process {
	
	
	public static Connection  connection() throws SQLException, ClassNotFoundException {
		Connection connection=null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelivery","root","Sundar@2005");
		return connection;
	}

	
	public static ResultSet food_list(String hotel_name) throws SQLException, ClassNotFoundException {
		
		Connection connect=User_Process.connection();
		
		Statement state=connect.createStatement();
    	
    	String query="select * from "+ hotel_name +";";
    	
    	ResultSet rs=state.executeQuery(query);
    	
		return rs;
	}
	
	public static boolean add_amount(String vault_id,int vault_pass,int amount) throws ClassNotFoundException, SQLException {
		
		boolean ans=false;
		
		Connection connect=User_Process.connection();
		
		String query="select vault_amount from vault where vaultId = ? && password = ?";
		PreparedStatement pst=connect.prepareStatement(query);
		pst.setString(1, vault_id);
		pst.setInt(2, vault_pass);
		ResultSet rs=pst.executeQuery();
		 
		int balance=0;
		int rs1=0;
		
		if(rs.next()) {
			balance=rs.getInt("vault_amount");
			balance+=amount;
			
			String query1="update vault set vault_amount = ? where vaultId = ? && password = ?";
			PreparedStatement pst1=connect.prepareStatement(query1);
			pst1.setInt(1, balance);
			pst1.setString(2, vault_id);
			pst1.setInt(3, vault_pass);
			 rs1=pst1.executeUpdate();
			
		}
		
		if(rs1>0) {
			ans=true;
		}
		
		return ans;
	}
	
	public static boolean order_details(String name,String phone,String address,String food_name,String hotel_name,String total) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		

		Connection connect=User_Process.connection();
		Statement state=connect.createStatement();
		
		state.execute("use fooddelivery");
		int rows=0;
		boolean ans=false;
		
		String query0="insert into bookings(name,phone,address,food,hotel,total,booking_date) values(?,?,?,?,?,?,?)";
		PreparedStatement psmt=connect.prepareStatement(query0);
		psmt.setString(1, name);
		psmt.setString(2, phone);
		psmt.setString(3, address);
		psmt.setString(4,food_name);
		psmt.setString(5, hotel_name);
		psmt.setString(6, total);
		psmt.setDate(7,  Date.valueOf(LocalDate.now()));
		rows=psmt.executeUpdate();
		
		if(rows>0)
		 ans=true;
		
		return ans;
	}
	
	public static boolean check_vault_amount(int total,String vault_id,int vault_pass) throws ClassNotFoundException, SQLException {
		
		 boolean ans1=false;
		
		Connection connect=User_Process.connection();
		
		String query="select vault_amount from vault where vaultId = ? && password = ? ;";
		PreparedStatement pst=connect.prepareStatement(query);
		
		pst.setString(1, vault_id);
		pst.setInt(2, vault_pass);
		
		ResultSet rs=pst.executeQuery();
		int vault_amt=0;
		
		if(rs.next()) {
			vault_amt=rs.getInt("vault_amount");
			
			if(vault_amt>total) {
				ans1=true;
				vault_amt-=total;
				
				String query1="update vault set vault_amount= ? where vaultId = ? && password = ?";
				PreparedStatement pst1=connect.prepareStatement(query1);
				pst1.setInt(1, vault_amt);
				pst1.setString(2, vault_id);
				pst1.setInt(3, vault_pass);
				
				int rs1=pst1.executeUpdate();
			}
		}

		return ans1;
	}	
	
	public static ResultSet list(String search_name) throws SQLException, ClassNotFoundException {
		Connection connect=User_Process.connection();
		
		Statement state=connect.createStatement();
    	
    	String query="select * from hotel_list";
    	
    	PreparedStatement pst=null;
    	ResultSet rs=null;
    	
    	if(search_name!=null && !search_name.trim().isEmpty()) {
    		
    		query+=" where  hotel_name = ? ";
    		
    		pst= connect.prepareStatement(query);
    		pst.setString(1, search_name);
    		
    		rs=pst.executeQuery();
    		
    	}
    	else {
    		rs=state.executeQuery(query);
    	}

    	return rs;
	}
	
	public static int total(int quantity, int price) {
		
		int total=(quantity*price)+30;   // 30 is  delivery charge
		
		return total;
	}
	
}
