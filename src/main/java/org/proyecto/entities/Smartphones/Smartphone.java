package org.proyecto.entities.Smartphones;

public class Smartphone {
	private String sistemaOperativo;
	private String procesador;
	private int tamannoDePantalla;
	private String tipoDePantalla;
	private int resolucionDePantalla;
	private int ram;
	private int memoriaInterna;
	private int camara;
	private boolean poseeFlash;
	private boolean poseeCamaraFrontal;
	private int camaraFrontal;
	private int capacidadDeBateria;
	
	public String getSistemaOperativo() {
		return sistemaOperativo;
	}

	public String getProcesador() {
		return procesador;
	}

	public int getTamannoDePantalla() {
		return tamannoDePantalla;
	}

	public String getTipoDePantalla() {
		return tipoDePantalla;
	}

	public int getResolucionDePantalla() {
		return resolucionDePantalla;
	}

	public int getRam() {
		return ram;
	}

	public int getMemoriaInterna() {
		return memoriaInterna;
	}

	public int getCamara() {
		return camara;
	}

	public boolean isPoseeFlash() {
		return poseeFlash;
	}

	public boolean isPoseeCamaraFrontal() {
		return poseeCamaraFrontal;
	}

	public int getCamaraFrontal() {
		return camaraFrontal;
	}

	public int getCapacidadDeBateria() {
		return capacidadDeBateria;
	}
}
