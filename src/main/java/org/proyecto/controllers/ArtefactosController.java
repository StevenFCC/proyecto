package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Artefacto;
import org.proyecto.sevices.ArtefactosServices;

@Path("artefactos")
public class ArtefactosController {

	private final ArtefactosServices services = new ArtefactosServices();
	
	@GET
	@Path("artefacto/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Artefacto getArtefacto(@PathParam ("id") int idArtefacto) {
		
		Artefacto artefacto = new Artefacto();
		
		try {
			artefacto = services.getArt(idArtefacto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			throw new RuntimeException();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return artefacto;
	}
}
