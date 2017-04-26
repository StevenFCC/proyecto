package org.proyecto.sevices;

import java.sql.SQLException;

import org.proyecto.connection.ElectrodomesticosAireAcondicionadoDAO;
import org.proyecto.connection.ElectrodomesticosCocinaDeGasDAO;
import org.proyecto.connection.ElectrodomesticosVentiladorDAO;
import org.proyecto.entities.AireAcondicionado;
import org.proyecto.entities.CocinaDeGas;
import org.proyecto.entities.Ventilador;

public class ElectrodomesticosServices {
	
	private final ElectrodomesticosCocinaDeGasDAO dao = new ElectrodomesticosCocinaDeGasDAO();
	
	public CocinaDeGas getCocina(int idArtefacto) throws SQLException {
		CocinaDeGas cocina;
		cocina = dao.getCocinaDeGas(idArtefacto);
		return cocina;
	}
	
	private final ElectrodomesticosAireAcondicionadoDAO dao2 = new ElectrodomesticosAireAcondicionadoDAO();
	
	public AireAcondicionado getAire(int idArtefacto) throws SQLException {
		AireAcondicionado aire;
		aire = dao2.getAire(idArtefacto);
		return aire;
	}
	
	private final ElectrodomesticosVentiladorDAO dao3 = new ElectrodomesticosVentiladorDAO();
	
	public Ventilador getVentilador(int idArtefacto) throws SQLException {
		Ventilador venti;
		venti = dao3.getVentilador(idArtefacto);
		return venti;
	}
}
