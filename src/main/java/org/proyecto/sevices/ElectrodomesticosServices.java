package org.proyecto.sevices;

import java.sql.SQLException;

import org.proyecto.connection.ElectrodomesticosCocinaDeGasDAO;
import org.proyecto.entities.CocinaDeGas;

public class ElectrodomesticosServices {
	private final ElectrodomesticosCocinaDeGasDAO dao = new ElectrodomesticosCocinaDeGasDAO();
	
	public CocinaDeGas getCocina(int idArtefacto) throws SQLException {
		CocinaDeGas cocina;
		cocina = dao.getCocinaDeGas(idArtefacto);
		return cocina;
	}
}
