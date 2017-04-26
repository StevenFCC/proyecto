package org.proyecto.controllers;

import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.proyecto.entities.Notebook;
import org.proyecto.sevices.NotebooksServices;


public class NotebooksControllers {
		
		private final NotebooksServices service = new NotebooksServices();
		
		@GET
		@Path("/notebook/{id}")
		@Produces(MediaType.APPLICATION_JSON)
		public Notebook getNote(@PathParam("id") String idArtefacto) {
		
			Notebook note = null;
			
			try {
				note = service.getNote(Integer.valueOf(idArtefacto));
			} catch (NumberFormatException e) {
				e.printStackTrace();
				throw new RuntimeException();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException();
			}
			
			return note;
		}
}
