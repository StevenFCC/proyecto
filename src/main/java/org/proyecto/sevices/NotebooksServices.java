package org.proyecto.sevices;

import java.sql.SQLException;

import org.proyecto.connection.NotebooksDAO;
import org.proyecto.entities.Notebook;

public class NotebooksServices {

	private final NotebooksDAO dao = new NotebooksDAO();
	
	public Notebook getNote(int idArtefacto) throws SQLException {
		Notebook note;
		note = dao.getNote(idArtefacto);
		return note;
	}
}
