package org.proyecto.entities;

public class CocinaDeGas extends Electrodomestico {
	
	
	private int cantidadDeHornallas;
	private String tipoDeFuente;
	private String tipoDeConexion;
	
	
	public int getCantidadDeHornallas() {
		return cantidadDeHornallas;
	}
	
	public String getTipoDeFuente() {
		return tipoDeFuente;
	}
	
	public String getTipoDeConexion() {
		return tipoDeConexion;
	}

	public void setCantidadDeHornallas(int cantidadDeHornallas) {
		this.cantidadDeHornallas = cantidadDeHornallas;
	}

	public void setTipoDeFuente(String tipoDeFuente) {
		this.tipoDeFuente = tipoDeFuente;
	}

	public void setTipoDeConexion(String tipoDeConexion) {
		this.tipoDeConexion = tipoDeConexion;
	}
	
	public CocinaDeGas(String marca, String modelo) {
		setMarca(marca);
		setModelo(modelo);
	}
}
