package login;

import java.sql.Array;	
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class signupback {
	
	boolean send=false;
	static int loginId= 0;
	static String logid=null;
	static String email=null;

	public boolean signUp(String name,String setpass,String email,String phone,String uname,String pass) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection connect= DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Sundar@2005");
		
		Statement state0=connect.createStatement();
		state0.execute("use fooddelivery");
		
		this.email=email;
		
		String query = "select * from signup where email = ?";
		PreparedStatement pst=connect.prepareStatement(query);
		pst.setString(1, email);
		ResultSet rst=pst.executeQuery();
		
		int rows1=0;
		int rows2=0;
		
		loginId= 1000 + (int)(Math.random() * 9000);
		logid="US"+loginId;
		
		if(!rst.next()) {
			
			String query1="insert into signup(name,email,phone,user_name,password) values(?,?,?,?,?)";
			PreparedStatement pst1=connect.prepareStatement(query1);
			pst1.setString(1,name);
			pst1.setString(2,email);
			pst1.setString(3,phone);
			pst1.setString(4,uname);
			pst1.setString(5,pass);
			rows1=pst1.executeUpdate();
			
			String query2="insert into vault(email,vaultId,password) values(?,?,?)";
			PreparedStatement pst2=connect.prepareStatement(query2);
			pst2.setString(1,email);
			pst2.setString(2, logid);
			pst2.setString(3, setpass);
			rows2=pst2.executeUpdate();
			
		
			System.out.println("Data inserted successfully...");
		} 
		else {
			System.out.println("Data already exist!!");
		}
		
		if(rows1>0 && rows2>0) 
			send=true;
		
		else
			send=false;
		
		
		return send;
		
 }
	public static String[] send() throws ClassNotFoundException, SQLException {
		
		Connection connect= connection.getconnection();
		String query="select vaultId, password from vault where email = ? ";
		PreparedStatement pst=connect.prepareStatement(query);
		pst.setString(1, email);
		
		ResultSet rst=pst.executeQuery();
		
		String send[] =new String[2];
		
		if(rst.next()) {
			send[0]=rst.getString("vaultId");
			send[1]=rst.getString("password");
		}
		return send;
	}
}
