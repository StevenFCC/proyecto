package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.AireAcondicionado;

public class ElectrodomesticosAireAcondicionadoDAO {
	
	public AireAcondicionado getAire(int idArtefacto) throws SQLException {
		
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT artefactos.id, artefactos.nombre, artefactos.marca, artefactos.modelo, caracteristicas.nombre_de_caracteristica, electrodomesticos.descripcion_caracteristica, caracteristicas.unidad_de_medida FROM productosventas.electrodomesticos";
		String join = "join caracteristicas on caracteristicas.id = caracteristica_id join artefactos on artefactos.id = artefacto_id";
		String where = "where artefactos.id = " + idArtefacto + ";";
		ResultSet rs = st.executeQuery(select + " " + join + " " + where);
		
		AireAcondicionado aire = new AireAcondicionado();
		
		while (rs.next()) {
			String marca = rs.getString(3);
			aire.setMarca(marca);
			
			String modelo = rs.getString(4);
			aire.setModelo(modelo);
			
			String nombreDeCaracteristica = rs.getString(5);
			
			if (nombreDeCaracteristica.equals("Frio")){
				aire.setFrio(rs.getBoolean(6));
			} else if (nombreDeCaracteristica.equals("Calor")) {
				aire.setCalor(rs.getBoolean(6));
			} else if (nombreDeCaracteristica.equals("Tipo de Aire")) {
				aire.setTipoDeAire(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Consumo Energetico en Frio")) {
				aire.setConsumoEnergeticoEnFrio(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Consumo Energetico en Calor")) {
				aire.setConsumoEnergeticoEnCalor(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Potencia en Frio")) {
				aire.setPotenciaEnFrio(rs.getInt(6));
			} else if (nombreDeCaracteristica.equals("Potencia en Calor")) {
				aire.setPotenciaEnCalor(rs.getInt(6));
			} else if (nombreDeCaracteristica.equals("Eficiencia Energetica en Frio")) {
				aire.setEficienciaEnergeticaEnFrio(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Eficiencia Energetica en Calor")) {
				aire.setEficienciaEnergeticaEnCalor(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Medidas de unidad exterior")) {
				aire.setMedidasDeUnidadExterior(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Medidas de unidad interior")) {
				aire.setMedidasDeUnidadInterior(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Precio")) {
				aire.setPrecio(rs.getInt(6));
			} else if (nombreDeCaracteristica.equals("Direccion de Imagen")) {
				aire.setImagen(rs.getString(6));
			}
			
			JDBCConnection.closeConnectionToDataBase(con);
		}
				
	return aire;
	}
}
