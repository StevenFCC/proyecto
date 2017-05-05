package org.proyecto.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.RegistroDeCompra;
import org.proyecto.sevices.RegistroDeComprasServices;

@Path("registroDeCompras")
public class RegistroDeCompraControllers {
	
	private final RegistroDeComprasServices services = new RegistroDeComprasServices();
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<RegistroDeCompra> getRegistrosDeCompras() {
		
		List<RegistroDeCompra> registro = new ArrayList<RegistroDeCompra>();
		
		try {
			registro = services.getRegistrosDeCompras();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return registro;
	}
}
