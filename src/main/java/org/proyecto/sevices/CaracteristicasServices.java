package org.proyecto.sevices;

import java.sql.SQLException;
import java.util.List;

import org.proyecto.connection.CaracteristicasDAO;
import org.proyecto.entities.Caracteristica;

public class CaracteristicasServices {
	
	private final CaracteristicasDAO dao = new CaracteristicasDAO();
	
	public List<Caracteristica> getListaDeCaracteristica(int idDeArtefacto) throws SQLException {
		List<Caracteristica> lista;
		lista = dao.getListaDeCaracteristicas(idDeArtefacto);
		return lista;
	}
}
