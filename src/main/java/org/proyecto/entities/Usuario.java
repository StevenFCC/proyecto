package org.proyecto.entities;

public class Usuario {

	protected String nombreDeUsuario;
	protected String clave;
	
	
	public String getNombreDeUsuario() {
		return nombreDeUsuario;
	}
	
	public void setNombreDeUsuario(String nombreDeUsuario) {
		this.nombreDeUsuario = nombreDeUsuario;
	}
	
	public String getClave() {
		return clave;
	}
	
	public void setClave(String clave) {
		this.clave = clave;
	}
}
