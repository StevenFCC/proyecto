package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Artefacto;
import org.proyecto.sevices.ArtefactosServices;

@Path("artefactos/{id}")
public class ArtefactosController {

	private final ArtefactosServices services = new ArtefactosServices();
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Artefacto getArtefacto(@PathParam ("id") int idArtefacto) {
		
		Artefacto artefacto = new Artefacto();
		
		try {
			artefacto = services.getArt(idArtefacto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			//throw new RuntimeException();
			throw new IllegalArgumentException();
		} catch (SQLException e) {
			e.printStackTrace();
			//throw new RuntimeException();
			throw new IllegalArgumentException();
		}
		
		return artefacto;
	}
}
