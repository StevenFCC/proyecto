package org.proyecto.entities;

public class Televisor {
	
	
	private String marca;
	private String modelo;
	private String panel;
	private String resolucionDePantalla;
	private int pulgadasDePantalla;
	private boolean smartTv;
	private boolean parlantesSourrand;
	private int precio;
	private String imagen;
	
	
	public String getPanel() {
		return panel;
	}
	
	public String getResolucionDePantalla() {
		return resolucionDePantalla;
	}
	
	public int getPulgadasDePantalla() {
		return pulgadasDePantalla;
	}
	
	public boolean isSmartTv() {
		return smartTv;
	}
	
	public boolean isParlantesSourrand() {
		return parlantesSourrand;
	}

	public void setPanel(String panel) {
		this.panel = panel;
	}

	public void setResolucionDePantalla(String resolucionDePantalla) {
		this.resolucionDePantalla = resolucionDePantalla;
	}

	public void setPulgadasDePantalla(int pulgadasDePantalla) {
		this.pulgadasDePantalla = pulgadasDePantalla;
	}

	public void setSmartTv(boolean smartTv) {
		this.smartTv = smartTv;
	}

	public void setParlantesSourrand(boolean parlantesSourrand) {
		this.parlantesSourrand = parlantesSourrand;
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
	
	public Televisor() {
		
	}
}
