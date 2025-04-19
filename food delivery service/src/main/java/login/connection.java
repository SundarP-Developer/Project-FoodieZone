package login;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connection {
		
		public static Connection  getconnection() throws SQLException, ClassNotFoundException {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddelivery","root","Sundar@2005");
			return connect;
		}

	}
