package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Smartphone;

public class SmartphonesDAO {

	public Smartphone getsmart(int idArtefacto) throws SQLException {
		
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT artefactos.id, artefactos.nombre, artefactos.marca, artefactos.modelo, caracteristicas.nombre_de_caracteristica, smartphones.descripcion_caracteristica, caracteristicas.unidad_de_medida";
		String from = "FROM productosventas.smartphones";
		String join = "join caracteristicas on caracteristicas.id = caracteristica_id";
		String join2 = "join artefactos on artefactos.id = artefacto_id";
		String where = "where artefactos.id = "; 
		ResultSet rs = st.executeQuery(select + " " + from + " " + join + " " + join2 + " " + where + idArtefacto + ";");
		
		Smartphone smart = new Smartphone();
		
		while (rs.next()) {
			smart.setMarca(rs.getString(3));
			smart.setModelo(rs.getString(4));
			
			String nombreCaracteristica = rs.getString(5);
			
			if (nombreCaracteristica.equals("Medidas")) {
				smart.setMedidas(rs.getString(6));
			} else if (nombreCaracteristica.equals("Sistema Operativo")) {
				smart.setSistemaOperativo(rs.getString(6));
			} else if (nombreCaracteristica.equals("Procesador")) {
				smart.setProcesador(rs.getString(6));
			} else if (nombreCaracteristica.equals("Pulgadas Pantalla")) {
				smart.setpulgadasPantalla(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Tipo de Pantalla")) {
				smart.setTipoDePantalla(rs.getString(6));
			} else if (nombreCaracteristica.equals("Resolucion de Pantalla")) {
				smart.setResolucionDePantalla(rs.getString(6));
			} else if (nombreCaracteristica.equals("RAM")) {
				smart.setMedidas(rs.getString(6));
			} else if (nombreCaracteristica.equals("Memoria Interna")) {
				smart.setMemoriaInterna(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Resolucion de Camara")) {
				smart.setCamara(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Posee Flash")) {
				smart.setPoseeFlash(rs.getBoolean(6));
			} else if (nombreCaracteristica.equals("Posee Camara Frontal")) {
				smart.setPoseeCamaraFrontal(rs.getBoolean(6));
			} else if (nombreCaracteristica.equals("Resolucion de Camara Fronal")) {
				smart.setCamaraFrontal(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Capacidad de Bateria")) {
				smart.setCapacidadDeBateria(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Precio")) {
				smart.setPrecio(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Direccion de Imagen")) {
				smart.setImagen(rs.getString(6));
			}
		}
	
	JDBCConnection.closeConnectionToDataBase(con);
	return smart;
	}
}
