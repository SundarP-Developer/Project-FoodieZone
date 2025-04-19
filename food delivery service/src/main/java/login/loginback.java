package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class loginback {

	static boolean ans=false;
	
		public static boolean log( String name,String pass) throws SQLException, ClassNotFoundException {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Sundar@2005");
//			connection.connection();
			Statement state=connect.createStatement();
			System.out.println(name+pass);
			state.execute("use fooddelivery");
			String check="select * from signup where user_name ='"+name+"' && password ='"+pass+"'";
			ResultSet result = state.executeQuery(check);
			
			if(result.next()) {
				ans=true;
			}
			else {
				ans=false;
			}
		return ans	;
		}
	
}
