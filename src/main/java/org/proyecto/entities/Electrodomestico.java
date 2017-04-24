package org.proyecto.entities;

public abstract class Electrodomestico {
	
	private int consumoEnergetico;
	private String medidas;
	private String eficienciaEnergetica;
	
	
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
}
