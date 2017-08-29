package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {

	public static Connection getConn() throws SQLException {
		Connection conn;
		DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
		return conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?useSSL=false","root","coderslab");
	}

}
