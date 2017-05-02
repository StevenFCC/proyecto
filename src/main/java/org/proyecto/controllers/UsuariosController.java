package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Usuario;
import org.proyecto.sevices.UsuariosServices;

@Path("usuarios")
public class UsuariosController {
	
	private final UsuariosServices services = new UsuariosServices();
	
	@GET
	@Path("/newuser/{nameofuser}/{password}")
	@Produces(MediaType.APPLICATION_JSON)
	public Usuario setUsuario(@PathParam ("nameofuser") String nombreDeUsuario, @PathParam("password") String clave) {
		
		Usuario usuario = new Usuario();
		usuario.setNombreDeUsuario(nombreDeUsuario);
		usuario.setClave(clave);
		
		try {
			services.setUsuario(usuario);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return usuario;
	}
	
	@GET
	@Path("/usuario/{name}")
	@Produces(MediaType.APPLICATION_JSON)
	public Usuario getUsuario(@PathParam ("name") String nombreDeUsuario) {
		
		Usuario usuario = new Usuario();
		
		try {
			usuario = services.getUsuario(nombreDeUsuario);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return usuario;
	}
}
