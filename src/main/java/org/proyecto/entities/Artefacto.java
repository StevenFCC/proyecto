package org.proyecto.entities;

public class Artefacto {
	
	protected String nombre;
	protected String marca;
	protected String modelo;


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

	
	public Artefacto(String nombre, String marca, String modelo) {
		setModelo(nombre);
		setMarca(marca);
		setModelo(modelo);
	}
}