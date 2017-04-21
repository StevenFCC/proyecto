package org.proyecto.entities;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.proyecto.connection.JDBCConnection;

public abstract class Artefacto {
	protected int id;
	protected String nombre;
	protected String marca;
	protected String modelo;
	protected int precio;
	
	public int getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public int getPrecio() {
		return precio;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}

	public void setId(int id) {
		this.id = id;
	}


	protected List<Artefacto> listaDeArtefacto(int idDeArtefacto) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from artefactos where id = " + idDeArtefacto);
		
		List<Artefacto> listaArtefacto = null; 
		new ArrayList<Artefacto>();
		setNombre(rs.getString(1));
		setMarca (rs.getString(2));
		setModelo (rs.getString(3));
		setPrecio (rs.getInt(2));
		
		return listaArtefacto;
	}
}