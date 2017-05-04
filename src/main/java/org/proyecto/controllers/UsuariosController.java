package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
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
			services.setUsuario(usuario);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return usuario;
	}
	
	@GET
	@Path("/usuario/{name}/{password}")
	@Produces(MediaType.APPLICATION_JSON)
	public Usuario getUsuario(@PathParam ("name") String nombreDeUsuario, @PathParam ("password") String claveDeUsuario) {
		
		Usuario usuario;
		
		try {
			usuario = services.getUsuario(nombreDeUsuario, claveDeUsuario);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return usuario;
	}
}
