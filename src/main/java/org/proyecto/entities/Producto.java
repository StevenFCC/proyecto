package org.proyecto.entities;

import java.util.List;

public class Producto {
	
	protected Artefacto artefacto;
	protected List<Caracteristica> ListaDeCaracteristicas;
	
	public Artefacto getArtefacto() {
		return artefacto;
	}
	
	public void setArtefacto(Artefacto artefacto) {
		this.artefacto = artefacto;
	}
	
	public List<Caracteristica> getListaDeCaracteristicas() {
		return ListaDeCaracteristicas;
	}
	
	public void setListaDeCaracteristicas(List<Caracteristica> listaDeCaracteristicas) {
		ListaDeCaracteristicas = listaDeCaracteristicas;
	}
	
	public Producto() {
		
	}
}
