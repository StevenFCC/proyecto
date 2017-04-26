package org.proyecto.sevices;

import java.sql.SQLException;

import org.proyecto.connection.TelevisoresDAO;
import org.proyecto.entities.Televisor;

public class TelevisoresServices {

	private final TelevisoresDAO dao = new TelevisoresDAO();
	
	public Televisor getTele(int idArtefacto) throws SQLException {
		Televisor tele;
		tele = dao.getTele(idArtefacto);
		return tele;
	}
}
