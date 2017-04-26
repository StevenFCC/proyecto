package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Ventilador;

public class ElectrodomesticosVentiladorDAO {

	public Ventilador getVentilador(int idArtefacto) throws SQLException {
		
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT artefactos.id, artefactos.nombre, artefactos.marca, artefactos.modelo, caracteristicas.nombre_de_caracteristica, electrodomesticos.descripcion_caracteristica, caracteristicas.unidad_de_medida FROM productosventas.electrodomesticos";
		String join = "join caracteristicas on caracteristicas.id = caracteristica_id join artefactos on artefactos.id = artefacto_id";
		String where = "where artefactos.id = " + idArtefacto + ";";
		ResultSet rs = st.executeQuery(select + " " + join + " " + where);
		
		Ventilador venti = null;
		
		while(rs.next()) {
			String marca = rs.getString(3);
			venti.setMarca(marca);
			
			String modelo = rs.getString(4);
			venti.setModelo(modelo);
			
			String nombreCaracteristica = rs.getString(5);
			
			if (nombreCaracteristica.equals("Consumo Energetico")) {
				venti.setConsumoEnergetico(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Medidas")) {
				venti.setMedidas(rs.getString(6));
			} else if (nombreCaracteristica.equals("Eficiencia Energetica")) {
				venti.setEficienciaEnergetica(rs.getString(6));
			} else if (nombreCaracteristica.equals("Precio")) {
				venti.setPrecio(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Direccion de Imagen")) {
				venti.setImagen(rs.getString(6));
			} else if (nombreCaracteristica.equals("Numero de Velocidades")) {
				venti.setNumeroDeVelocidades(rs.getInt(6));
			}
			
			JDBCConnection.closeConnectionToDataBase(con);
		}
		
	return venti;
	}
}
