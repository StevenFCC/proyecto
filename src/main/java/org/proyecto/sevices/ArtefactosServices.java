package org.proyecto.sevices;

import java.sql.SQLException;
import java.util.List;

import org.proyecto.connection.ArtefactosDAO;
import org.proyecto.entities.Artefacto;

public class ArtefactosServices {

	private final ArtefactosDAO dao = new ArtefactosDAO();
	
	public Artefacto getArt(int idDeArtefacto) throws SQLException {
		Artefacto art;
		art = dao.getArtefacto(idDeArtefacto);
		return art;
	}
	
	public List<Artefacto> getListaDeArtefactoPorTipo (String nombreDeArtefacto) throws SQLException {
		List<Artefacto> list;
		list = dao.getListaDeArtefactosPorTipo(nombreDeArtefacto);
		return list;
	}
}
