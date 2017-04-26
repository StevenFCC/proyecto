package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.CocinaDeGas;
import org.proyecto.sevices.ElectrodomesticosServices;


@Consumes(MediaType.APPLICATION_JSON)
@Path("electrodomesticos")

public class ElectrodomesticosControllers {
	
	private final ElectrodomesticosServices service = new ElectrodomesticosServices();
	
	@GET
	@Path("/cocina/{id}")
	@Produces("text/plain")
	public CocinaDeGas getCocina(@PathParam("id") String idArtefacto) throws NumberFormatException, SQLException {
			CocinaDeGas cocina = service.getCocina(Integer.valueOf(idArtefacto));
			return cocina;
	}
}
