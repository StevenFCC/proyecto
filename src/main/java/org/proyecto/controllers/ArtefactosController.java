package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.WebApplicationException;

import org.proyecto.entities.Artefacto;
import org.proyecto.sevices.ArtefactosServices;

@Path("artefactos/{id}")
public class ArtefactosController {

	private final ArtefactosServices services = new ArtefactosServices();
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Artefacto getArtefacto(@PathParam ("id") int idArtefacto) {
		
		Artefacto artefacto = null;
		
		try {
			artefacto = services.getArt(idArtefacto);
			if (artefacto == null) {
				throw new WebApplicationException(404);
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
		return artefacto;
	}
}
