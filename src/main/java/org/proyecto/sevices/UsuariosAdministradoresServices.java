package org.proyecto.sevices;

import java.sql.SQLException;

import org.proyecto.connection.UsuariosAdministradoresDAO;
import org.proyecto.entities.Usuario;

public class UsuariosAdministradoresServices {
	
	private final UsuariosAdministradoresDAO dao = new UsuariosAdministradoresDAO();
	
	public Usuario getUsuarioAdministrador(String nombreDeUsuario, String clave) throws SQLException {
		Usuario usuarioAdministrador;
		usuarioAdministrador = dao.getUsuarioAdministrador(nombreDeUsuario, clave);
		return usuarioAdministrador;
	}

}
