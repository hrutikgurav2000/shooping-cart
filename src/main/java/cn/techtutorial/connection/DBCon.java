package cn.techtutorial.connection;
import java.sql.*;


public class DBCon {
	private static Connection connection = null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(connection == null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce_cart","root","root");
			System.out.print("connected");
		}
		return connection;
	}
}
