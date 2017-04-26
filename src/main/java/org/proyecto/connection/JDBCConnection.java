package org.proyecto.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
	
	private static final String userName = "admin";
	private static final String password = "admin$$";
	private static final String connectionURI = "jdbc:mysql://localhost:3306/productosVentas?autoReconnect=true&useSSL=false";

	public static Connection connectToDataBase() throws SQLException {
		Connection con = DriverManager.getConnection(connectionURI, userName, password);
		return con;
	}
	
	public static void closeConnectionToDataBase(Connection con) throws SQLException {
		con.close();
	}
}