package technical.blog.com.helper;

import java.sql.*;

public class ConnectionProvider {

	private static Connection con;

	public static Connection getConnection() {
		try {
			if(con==null)
			{
			// load the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");

			//create the connection
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/technicaldb", "root", "ilovemybrother143");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
