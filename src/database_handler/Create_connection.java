package database_handler;

import java.sql.Connection;
import java.sql.DriverManager;

public class Create_connection {
	
	public static Connection getConnection() throws Exception{
		
	    String host="jdbc:mysql://localhost:3306/quiz";
        String username="root";
        String upassword="robin#root";
		
		Connection con;
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(host, username, upassword);
		return con;
		
	}

}
