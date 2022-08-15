package cn.techtutorial.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.techtutorial.model.Member;

public class RegisterDao {

	private String dbUrl = "jdbc:mysql://localhost:3306/ecommerce_cart";
	private String dbUname = "root";
	private String dbPassword = "root";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";

	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	public String insert(Member member) throws SQLException {
		loadDriver(dbDriver);
		Connection con = getConnection();
		ResultSet rs = null;
		PreparedStatement ps1;
		try {
			// String data= null;
			String checkUser = "select * from users where email=?";
			ps1 = con.prepareStatement(checkUser);
			ps1.setString(1, member.getEmail());
			rs = ps1.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();

		}

		String result = "";
		boolean flag = false;
		
		if (rs.next()) {

			  flag= true;
		} 
		if(flag == true) {
			result = "user exists";
		}
		else {

			result = "User Created successfully";
			String sql = "insert into users values(?,?,?,?)";

			PreparedStatement ps;
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, member.getName());
				ps.setString(2, member.getPassword());
				ps.setString(3, member.getPhone());
				ps.setString(4, member.getEmail());
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				result = "User Exists";
				}
		}
		return result;

	}

}
