package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Televisor;
import org.proyecto.sevices.TelevisoresServices;

public class TelevisoresControllers {

	private final TelevisoresServices service = new  TelevisoresServices();
	
	@GET
	@Path("/televisores/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Televisor getTele(@PathParam("id") String idArtefacto) {
		
		Televisor tele = null;
		
		try {
			tele = service.getTele(Integer.valueOf(idArtefacto));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return tele;
	}
	
	

}
