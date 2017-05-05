package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.WebApplicationException;

import org.proyecto.entities.Usuario;
import org.proyecto.sevices.UsuariosAdministradoresServices;

@Path("administradores")
public class UsuariosAdministradorController {
	
	private final UsuariosAdministradoresServices services = new UsuariosAdministradoresServices();
	
	@GET
	public void getUsuarioAdministrado(Usuario usuarioAdministrador) {
		
		Usuario usuarioAdm = null;
		
		try {
			usuarioAdm = services.getUsuarioAdministrador(usuarioAdministrador.getNombreDeUsuario(), usuarioAdministrador.getClave());
			if (usuarioAdm == null) {
				throw new WebApplicationException(404);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

}
