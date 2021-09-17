package dbUtils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection connect() {
		
		Connection con = null;
		String db_url = "jdbc:mysql://localhost:3306/schooldb";
        	String username = "root";
        	String password = "";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(db_url, username, password);
			
		}catch(Exception e) {
			System.out.println("Error : " + e);
		}
		
		return con;
		
	} 
	
}
