package org.proyecto.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Artefacto;
import org.proyecto.entities.Usuario;
import org.proyecto.sevices.ArtefactosServices;
import org.proyecto.sevices.RegistroDeComprasServices;
import org.proyecto.sevices.UsuariosServices;

@Path("compras/{idDeArtefactoComprado}/{nombreDeUsuarioQueCompro}/{claveDeUsuarioQueCompro}")
public class CompraDeUsuariosControllers {

	private final RegistroDeComprasServices services = new RegistroDeComprasServices();
	private final ArtefactosServices servicesDeArtefacto = new ArtefactosServices();
	private final UsuariosServices servicesDeUsuario = new UsuariosServices();
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<String> setComprasDeUsuario(@PathParam ("idDeArtefactoComprado") int idDeArtefactoComprado, @PathParam("nombreDeUsuarioQueCompro") String nombreDeUsuario, @PathParam ("claveDeUsuarioQueCompro") String claveDeUsuario) {
		
		Artefacto artefacto = new Artefacto();
		Usuario usuario = new Usuario();
		
		try {
			artefacto = servicesDeArtefacto.getArt(idDeArtefactoComprado);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		try {
			usuario = servicesDeUsuario.getUsuario(nombreDeUsuario, claveDeUsuario);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		try {
			services.setComprasDeUsuario(usuario, artefacto);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		List<String> datosDeCompra = new ArrayList<String>();
		datosDeCompra.add(usuario.getNombreDeUsuario());
		datosDeCompra.add(artefacto.getNombre() + " " + artefacto.getMarca() +  " " + artefacto.getModelo());
		
		return datosDeCompra;
	}
	
}
