package org.proyecto.sevices;

import java.sql.SQLException;

import org.proyecto.connection.UsuariosDAO;
import org.proyecto.entities.Usuario;

public class UsuariosServices {

	private final UsuariosDAO dao = new UsuariosDAO();
	
	public void setUsuario(Usuario usuario) throws SQLException {
		dao.setUsuario(usuario);
	}
	
	public Usuario getUsuario(String nombreDeUsuario, String claveDeUsuario) throws SQLException {
		Usuario usuario;
		usuario = dao.getUsuario(nombreDeUsuario, claveDeUsuario);
		return usuario;
	}
}
