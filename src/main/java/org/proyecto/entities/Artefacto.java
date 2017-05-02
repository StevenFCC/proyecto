package org.proyecto.entities;

public class Artefacto {
	
	protected int idDeArtefacto;
	protected String nombre;
	protected String marca;
	protected String modelo;
	protected String imagen;


	public int getIdDeArtefacto() {
		return idDeArtefacto;
	}

	public void setIdDeArtefacto(int idDeArtefacto) {
		this.idDeArtefacto = idDeArtefacto;
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

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public Artefacto() {
		
	}
}