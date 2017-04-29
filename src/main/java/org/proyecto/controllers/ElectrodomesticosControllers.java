package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.AireAcondicionado;
import org.proyecto.entities.CocinaDeGas;
import org.proyecto.entities.Ventilador;
import org.proyecto.sevices.ElectrodomesticosServices;


@Path("electrodomesticos")
public class ElectrodomesticosControllers {
	
	private final ElectrodomesticosServices service = new ElectrodomesticosServices();
	
	@GET
	@Path("/cocina/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public CocinaDeGas getCocina(@PathParam("id") int idArtefacto) {
	
		CocinaDeGas coci = new CocinaDeGas();
		
		try {
			coci = service.getCocina(idArtefacto);
		} catch (NumberFormatException e) {
			e.printStackTrace();
			throw new RuntimeException();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
		return coci;
	}
	
	@GET
	@Path("/aireAcondicionado/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public AireAcondicionado getAire(@PathParam("id") String idArtefacto){
		
		AireAcondicionado aire = null;
		
		try {
			aire = service.getAire(Integer.valueOf(idArtefacto));
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
			throw new RuntimeException();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return aire;
	}
	
	@GET
	@Path ("/ventilador/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Ventilador getVenti(@PathParam("id") String idArtefacto) {
		
		Ventilador venti = null;
		
		try {
			venti = service.getVentilador(Integer.valueOf(idArtefacto));
		} catch (NumberFormatException e) {
			e.printStackTrace();
			throw new RuntimeException();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return venti;		
	}
}
