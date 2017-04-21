package org.proyecto.entities.Electrodomesticos;

public abstract class Electrodomestico {
	
	protected int consumoEnergetico;
	protected String medidas;
	protected String eficienciaEnergetica;
	
	
	public int getConsumoEnergetico() {
		return consumoEnergetico;
	}
	
	public String getMedidas() {
		return medidas;
	}
	
	public String getEficienciaEnergetica() {
		return eficienciaEnergetica;
	}	
}
