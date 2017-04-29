package org.proyecto.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
	
	private static final String userName = "root";
	private static final String password = "zeta000098valsf";
	private static final String connectionURI = "jdbc:mysql://localhost:3306/productosventas?autoReconnect=true&useSSL=false&serverTimezone=UTC";

	public static Connection connectToDataBase() throws SQLException {
		Connection con = DriverManager.getConnection(connectionURI, userName, password);
		return con;
	}
	
	public static void closeConnectionToDataBase(Connection con) throws SQLException {
		con.close();
	}
}