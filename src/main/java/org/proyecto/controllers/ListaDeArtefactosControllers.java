package org.proyecto.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Artefacto;
import org.proyecto.sevices.ArtefactosServices;

@Path("listaDeArtefactos/{nombreDeArtefactos}")
public class ListaDeArtefactosControllers {

	private final ArtefactosServices services = new ArtefactosServices();
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Artefacto> getListaDeArtefactosPorTipo (@PathParam ("nombreDeArtefactos") String nombreDeArtefacto) {
		
		List<Artefacto> lista = new ArrayList<Artefacto>();
		
		try {
			lista = services.getListaDeArtefactoPorTipo(nombreDeArtefacto);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return lista;
	}

	@GET
	@Path("/{complemento}")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Artefacto> getListaDeArtefactosPorTipo (@PathParam ("nombreDeArtefactos") String nombreDeArtefacto, @PathParam ("complemento") String complemento) {
		
		List<Artefacto> lista = new ArrayList<Artefacto>();
		
		try {
			lista = services.getListaDeArtefactoPorTipo(nombreDeArtefacto + " " + complemento);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
		
		return lista;
	}
}
