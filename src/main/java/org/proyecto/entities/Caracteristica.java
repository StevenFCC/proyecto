package org.proyecto.entities;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.proyecto.connection.JDBCConnection;

public abstract class Caracteristica {
	
	protected int id;
	protected String nombreDeCaracteristica;
	protected String unidadDeMedida;
	
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNombreDeCaracteristica() {
		return nombreDeCaracteristica;
	}
	
	public void setNombreDeCaracteristica(String nombreDeCaracteristica) {
		this.nombreDeCaracteristica = nombreDeCaracteristica;
	}
	
	public String getUnidadDeMedida() {
		return unidadDeMedida;
	}
	
	public void setUnidadDeMedida(String unidadDeMedida) {
		this.unidadDeMedida = unidadDeMedida;
	}
	
	
	protected List<Caracteristica> listaDeArtefacto(int idDeCaracteristica) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select from artefactos where id = " + idDeCaracteristica);
		
		List<Caracteristica> listaCaracteristica = null; new ArrayList<Caracteristica>();
		setNombreDeCaracteristica (rs.getString(1));
		setUnidadDeMedida (rs.getString(2));
			
		return listaCaracteristica;
	}
}
