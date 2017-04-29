package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Producto;
import org.proyecto.sevices.ArtefactosServices;
import org.proyecto.sevices.CaracteristicasServices;

@Path("productos/{id}")
public class ProductosControllers {

	private final ArtefactosServices services1 = new ArtefactosServices();
	private final CaracteristicasServices services2 = new CaracteristicasServices();
	
	@GET
	@Produces (MediaType.APPLICATION_JSON)
	
	public Producto getProducto(@PathParam ("id") int idDeArtefacto) {
		
		Producto producto = new Producto();
		
		try {
			producto.setArtefacto(services1.getArt(idDeArtefacto));
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		try {
			producto.setListaDeCaracteristicas(services2.getListaDeCaracteristica(idDeArtefacto));
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
		return producto;
	}
}
