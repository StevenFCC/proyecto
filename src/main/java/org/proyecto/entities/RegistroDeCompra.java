package org.proyecto.entities;

public class RegistroDeCompra {

	protected String usuarioQueRealizoLaCompra;
	protected String producto_comprado;
	
	
	public String getUsuarioQueRealizoLaCompra() {
		return usuarioQueRealizoLaCompra;
	}
	
	public void setUsuarioQueRealizoLaCompra(String usuarioQueRealizoLaCompra) {
		this.usuarioQueRealizoLaCompra = usuarioQueRealizoLaCompra;
	}
	
	public String getProducto_comprado() {
		return producto_comprado;
	}
	
	public void setProducto_comprado(String producto_comprado) {
		this.producto_comprado = producto_comprado;
	}
}
