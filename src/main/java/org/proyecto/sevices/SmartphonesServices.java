package org.proyecto.sevices;

import java.sql.SQLException;

import org.proyecto.connection.SmartphonesDAO;
import org.proyecto.entities.Smartphone;

public class SmartphonesServices {

	private final SmartphonesDAO dao = new SmartphonesDAO();
	
	public Smartphone getSmart(int idArtefacto) throws SQLException {
		Smartphone smart;
		smart = dao.getsmart(idArtefacto);
		return smart;
	}
}
