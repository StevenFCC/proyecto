package org.proyecto.entities;


public class AireAcondicionado extends Electrodomestico {
	private boolean frio;
	private boolean calor;
	private String tipoDeAire;
	private String consumoEnergeticoEnFrio;
	private String consumoEnergeticoEnCalor;
	private int potenciaEnFrio;
	private int potenciaEnCalor;
	private String eficienciaEnergeticaEnFrio;
	private String eficienciaEnergeticaEnCalor;
	private String medidasDeUnidadExterior;
	private String medidasDeUnidadInterior;
	
	
	public boolean isFrio() {
		return frio;
	}
	
	public boolean isCalor() {
		return calor;
	}
	
	public String getTipoDeAire() {
		return tipoDeAire;
	}
	
	public String getConsumoEnergeticoEnFrio() {
		return consumoEnergeticoEnFrio;
	}
	
	public String getConsumoEnergeticoEnCalor() {
		return consumoEnergeticoEnCalor;
	}
	
	public int getPotenciaEnFrio() {
		return potenciaEnFrio;
	}

	public int getPotenciaEnCalor() {
		return potenciaEnCalor;
	}

	public String getEficienciaEnergeticaEnFrio() {
		return eficienciaEnergeticaEnFrio;
	}

	public String getEficienciaEnergeticaEnCalor() {
		return eficienciaEnergeticaEnCalor;
	}

	public String getMedidasDeUnidadExterior() {
		return medidasDeUnidadExterior;
	}
	
	public String getMedidasDeUnidadInterior() {
		return medidasDeUnidadInterior;
	}
		
	public void setFrio(boolean frio) {
		this.frio = frio;
	}

	public void setCalor(boolean calor) {
		this.calor = calor;
	}

	public void setTipoDeAire(String tipoDeAire) {
		this.tipoDeAire = tipoDeAire;
	}

	public void setConsumoEnergeticoEnFrio(String consumoEnergeticoEnFrio) {
		this.consumoEnergeticoEnFrio = consumoEnergeticoEnFrio;
	}

	public void setConsumoEnergeticoEnCalor(String consumoEnergeticoEnCalor) {
		this.consumoEnergeticoEnCalor = consumoEnergeticoEnCalor;
	}

	public void setPotenciaEnFrio(int potenciaEnFrio) {
		this.potenciaEnFrio = potenciaEnFrio;
	}

	public void setPotenciaEnCalor(int potenciaEnCalor) {
		this.potenciaEnCalor = potenciaEnCalor;
	}

	public void setEficienciaEnergeticaEnFrio(String eficienciaEnergeticaEnFrio) {
		this.eficienciaEnergeticaEnFrio = eficienciaEnergeticaEnFrio;
	}

	public void setEficienciaEnergeticaEnCalor(String eficienciaEnergeticaEnCalor) {
		this.eficienciaEnergeticaEnCalor = eficienciaEnergeticaEnCalor;
	}

	public void setMedidasDeUnidadExterior(String medidasDeUnidadExterior) {
		this.medidasDeUnidadExterior = medidasDeUnidadExterior;
	}

	public void setMedidasDeUnidadInterior(String medidasDeUnidadInterior) {
		this.medidasDeUnidadInterior = medidasDeUnidadInterior;
	}
}
