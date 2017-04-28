package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Smartphone;
import org.proyecto.sevices.SmartphonesServices;


@Path("smartphones")
public class SmartphonesControllers {

	private final SmartphonesServices service = new SmartphonesServices();
	
	@GET
	@Path("/smartphone/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Smartphone getSmart(@PathParam("id") int idArtefacto) {
		
		Smartphone phone = null;
		
			try {
				phone = service.getSmart(idArtefacto);
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException();
			}

		return phone;
	}
}
