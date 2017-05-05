package org.proyecto.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Artefacto;
import org.proyecto.entities.Usuario;
import org.proyecto.sevices.ArtefactosServices;
import org.proyecto.sevices.RegistroDeComprasServices;
import org.proyecto.sevices.UsuariosServices;

@Path("compras/{idDeArtefactoComprado}")
public class CompraDeUsuariosControllers {

	private final RegistroDeComprasServices services = new RegistroDeComprasServices();
	private final ArtefactosServices servicesDeArtefacto = new ArtefactosServices();
	private final UsuariosServices servicesDeUsuario = new UsuariosServices();
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	public List<String> setComprasDeUsuario(@PathParam ("idDeArtefactoComprado") int idDeArtefactoComprado, Usuario usuarioQueCompra) {
		
		Artefacto artefacto = null;
		Usuario usuario = null;
		
		try {
			artefacto = servicesDeArtefacto.getArt(idDeArtefactoComprado);
			if (artefacto == null) {
				throw new WebApplicationException(404);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);	
		}
		
		try {
			usuario = servicesDeUsuario.getUsuario(usuarioQueCompra.getNombreDeUsuario(), usuarioQueCompra.getClave());
			if (usuario == null) {
				throw new WebApplicationException(404);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
		try {
			services.setComprasDeUsuario(usuario, artefacto);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
		List<String> datosDeCompra = new ArrayList<String>();
		datosDeCompra.add(usuario.getNombreDeUsuario());
		datosDeCompra.add(artefacto.getNombre() + " " + artefacto.getMarca() +  " " + artefacto.getModelo());
		
		return datosDeCompra;
	}	
}
