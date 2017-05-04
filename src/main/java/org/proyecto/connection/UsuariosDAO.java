package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Usuario;

public class UsuariosDAO {

	public void setUsuario(Usuario usuario) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String queryToExecute = "insert into usuarios (nombre_de_usuario, clave) "
				+ "values ("
				+ "'" + usuario.getNombreDeUsuario() + "',"
				+ "'" + usuario.getClave() + "'"
				+ ")";
		System.out.println(queryToExecute);
		int response = st.executeUpdate(queryToExecute);
		System.out.println(response);
		JDBCConnection.closeConnectionToDataBase(con);
	}
	
	public Usuario getUsuario(String nombreDeUsuario, String claveDeUsuario) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT *";
		String from = "FROM productosventas.usuarios";
		String where = "where nombre_de_usuario = " + "'" + nombreDeUsuario + "' and clave = '" + claveDeUsuario + "'";
		ResultSet rs = st.executeQuery(select + " " + from + " " + where + ";");
		
		Usuario usuario = null;
		
		if (rs.next()) {
			usuario = new Usuario();
			usuario.setNombreDeUsuario(rs.getString(2));
			usuario.setClave(rs.getString(3));;
		}
		
		JDBCConnection.closeConnectionToDataBase(con);
		
		return usuario;
	}
}