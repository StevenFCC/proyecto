package org.proyecto.entities;

import org.proyecto.entities.Caracteristica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.proyecto.connection.JDBCConnection;
import org.proyecto.entities.Artefacto;

public class Electrodomestico {
	
	private int consumoEnergetico;
	private String medidas;
	private String eficienciaEnergetica;
	
	
	public int getConsumoEnergetico() {
		return consumoEnergetico;
	}
	
	public String getMedidas() {
		return medidas;
	}
	
	public String getEficienciaEnergetica() {
		return eficienciaEnergetica;
	}

	public void setConsumoEnergetico(int consumoEnergetico) {
		this.consumoEnergetico = consumoEnergetico;
	}

	public void setMedidas(String medidas) {
		this.medidas = medidas;
	}

	public void setEficienciaEnergetica(String eficienciaEnergetica) {
		this.eficienciaEnergetica = eficienciaEnergetica;
	}
	
	public void listaElectrodomestico() throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String execute = "SELECT nombre_de_caracteristica, unidad_de_medida, artefactos.id, nombre, marca, modelo, precio, descripcion_caracteristica FROM productosventas.electrodomesticos join caracteristicas on caracteristicas.id = caracteristica_id join artefactos on artefactos.id = artefacto_id;";
		ResultSet rs = st.executeQuery(execute);
	} 
}
