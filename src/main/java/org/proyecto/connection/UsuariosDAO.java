package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Usuario;

public class UsuariosDAO {

	public void setUsuario(Usuario usuario) throws SQLException {
		
		Connection con = JDBCConnection2.connectToDataBase();
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
	
	public Usuario getUsuario(int idDeUsuario) throws SQLException {
		
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT *";
		String from = "FROM usuariosyregistrosdecompras.usuarios";
		String where = "where id = " + idDeUsuario;
		ResultSet rs = st.executeQuery(select + " " + from + " " + where + ";");
		
		Usuario usuario = new Usuario();
		
		if (rs.next()) {
			usuario.setNombreDeUsuario(rs.getString(2));
			usuario.setClave(rs.getString(3));;
		}
		
		return usuario;
	}
}