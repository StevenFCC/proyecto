package org.proyecto.entities;

public class Smartphone {
	private String marca;
	private String modelo;
	private String medidas;
	private String sistemaOperativo;
	private String procesador;
	private int pulgadasPantalla;
	private String tipoDePantalla;
	private String resolucionDePantalla;
	private int ram;
	private int memoriaInterna;
	private int camara;
	private boolean poseeFlash;
	private boolean poseeCamaraFrontal;
	private int camaraFrontal;
	private int capacidadDeBateria;
	private int precio;
	private String imagen;
	
	public String getSistemaOperativo() {
		return sistemaOperativo;
	}

	public String getProcesador() {
		return procesador;
	}

	public int getpulgadasPantalla() {
		return pulgadasPantalla;
	}

	public String getTipoDePantalla() {
		return tipoDePantalla;
	}

	public String getResolucionDePantalla() {
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
	
	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
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

	public void setSistemaOperativo(String sistemaOperativo) {
		this.sistemaOperativo = sistemaOperativo;
	}

	public void setProcesador(String procesador) {
		this.procesador = procesador;
	}

	public void setpulgadasPantalla(int pulgadasPantalla) {
		this.pulgadasPantalla = pulgadasPantalla;
	}

	public void setTipoDePantalla(String tipoDePantalla) {
		this.tipoDePantalla = tipoDePantalla;
	}

	public void setResolucionDePantalla(String resolucionDePantalla) {
		this.resolucionDePantalla = resolucionDePantalla;
	}

	public void setRam(int ram) {
		this.ram = ram;
	}

	public void setMemoriaInterna(int memoriaInterna) {
		this.memoriaInterna = memoriaInterna;
	}

	public void setCamara(int camara) {
		this.camara = camara;
	}

	public void setPoseeFlash(boolean poseeFlash) {
		this.poseeFlash = poseeFlash;
	}

	public void setPoseeCamaraFrontal(boolean poseeCamaraFrontal) {
		this.poseeCamaraFrontal = poseeCamaraFrontal;
	}

	public void setCamaraFrontal(int camaraFrontal) {
		this.camaraFrontal = camaraFrontal;
	}

	public void setCapacidadDeBateria(int capacidadDeBateria) {
		this.capacidadDeBateria = capacidadDeBateria;
	}

	public String getMedidas() {
		return medidas;
	}

	public void setMedidas(String medidas) {
		this.medidas = medidas;
	}

	public Smartphone() {
		
	}
}
