package org.proyecto.entities;

public class Caracteristica {
	
	protected String nombreDeCaracteristica;
	protected String unidadDeMedida;
	

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
	
	public Caracteristica(String nombreDeCaracteristica, String unidadDeMedida) {
		setNombreDeCaracteristica(nombreDeCaracteristica);
		setUnidadDeMedida(unidadDeMedida);
	}
}
