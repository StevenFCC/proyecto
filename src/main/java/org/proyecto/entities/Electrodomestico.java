package org.proyecto.entities;

public abstract class Electrodomestico {
	
	private String marca;
	private String modelo;
	private int consumoEnergetico;
	private String medidas;
	private String eficienciaEnergetica;
	private int precio;
	private String imagen;
	
	public String getMarca() {
		return marca;
	}

	public String getModelo() {
		return modelo;
	}

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

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public int getPrecio() {
		return precio;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
}
