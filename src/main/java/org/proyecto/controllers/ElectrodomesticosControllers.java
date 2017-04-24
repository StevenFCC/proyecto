package org.proyecto.controllers;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;


@Consumes(MediaType.APPLICATION_JSON)
@Path("electrodomesticos")

public class ElectrodomesticosControllers {
	
	@GET
	@Path("cocina/{id}")
	@Produces("text/plain")
	
	public String getCocina(@PathParam("id") String idCocina){
		
	}
}
