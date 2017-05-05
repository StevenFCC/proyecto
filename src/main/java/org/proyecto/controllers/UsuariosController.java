package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Usuario;
import org.proyecto.sevices.UsuariosServices;

@Path("usuarios")
public class UsuariosController {
	
	private final UsuariosServices services = new UsuariosServices();
	
	@POST
	@Path("/newuser")
	@Produces(MediaType.APPLICATION_JSON)
	public Usuario setUsuario(Usuario usuarioNuevo) {
		
		Usuario usuario = new Usuario();
		usuario.setNombreDeUsuario(usuarioNuevo.getNombreDeUsuario());
		usuario.setClave(usuarioNuevo.getClave());
		
		try {
			Usuario usuarioExistente = services.getUsuarioPorNombre(usuarioNuevo.getNombreDeUsuario());;
			if (usuarioExistente != null) {
				throw new WebApplicationException(404);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
			throw new RuntimeException();
		}
		
		try {
			services.setUsuario(usuario);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return usuario;
	}
}
