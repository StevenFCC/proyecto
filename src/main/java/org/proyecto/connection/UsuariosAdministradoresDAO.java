package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Usuario;

public class UsuariosAdministradoresDAO {
	public Usuario getUsuarioAdministrador(String nombreDeUsuario, String clave) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT *";
		String from = "FROM productosventas.usuariosadministradores";
		String where = "where nombre_de_administrador = " + "'" + nombreDeUsuario + "' and clave = '" + clave + "'";
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
