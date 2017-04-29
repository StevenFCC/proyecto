package org.proyecto.entities;

public class Caracteristica {
	
	protected String nombreDeCaracteristica;
	protected String valorDeCaracteristica;
	protected String unidadDeMedida;


	public String getNombreDeCaracteristica() {
		return nombreDeCaracteristica;
	}
	
	public void setNombreDeCaracteristica(String nombreDeCaracteristica) {
		this.nombreDeCaracteristica = nombreDeCaracteristica;
	}
	
	public String getValorDeCaracteristica() {
		return valorDeCaracteristica;
	}

	public void setValorDeCaracteristica(String valorDeCaracteristica) {
		this.valorDeCaracteristica = valorDeCaracteristica;
	}
	
	public String getUnidadDeMedida() {
		return unidadDeMedida;
	}

	public void setUnidadDeMedida(String unidadDeMedida) {
		this.unidadDeMedida = unidadDeMedida;
	}

	public Caracteristica() {
		
	}
}
