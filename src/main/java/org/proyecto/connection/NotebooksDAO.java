package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Notebook;

public class NotebooksDAO {

	public Notebook getNote(int idArtefacto) throws SQLException {
		
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT artefactos.id, artefactos.nombre, artefactos.marca, artefactos.modelo, caracteristicas.nombre_de_caracteristica, electrodomesticos.descripcion_caracteristica, caracteristicas.unidad_de_medida FROM productosventas.electrodomesticos";
		String join = "join caracteristicas on caracteristicas.id = caracteristica_id join artefactos on artefactos.id = artefacto_id";
		String where = "where artefactos.id = " + idArtefacto + ";";
		ResultSet rs = st.executeQuery(select + " " + join + " " + where);
		
		Notebook note = null;
		
		while (rs.next()) {
			note.setMarca(rs.getString(3));
			note.setModelo(rs.getString(4));
			
			String nombreCaracteristica = rs.getString(5);
			
			if (nombreCaracteristica.equals("Medidas")) {
				note.setMedidas(rs.getString(6));
			} else if (nombreCaracteristica.equals("CPU")) {
				note.setCpu(rs.getString(6));
			} else if (nombreCaracteristica.equals("Modelo del Procesador")) {
				note.setModeloDelProcesador(rs.getString(6));
			} else if (nombreCaracteristica.equals("GPU")) {
				note.setGpu(rs.getString(6));
			} else if (nombreCaracteristica.equals("RAM")) {
				note.setRam(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Tipo de RAM")) {
				note.setTipoDeRam(rs.getString(6));
			} else if (nombreCaracteristica.equals("Tipo de Disco")) {
				note.setTipoDeDisco(rs.getString(6));
			} else if (nombreCaracteristica.equals("Capacidad de Disco")) {
				note.setCapacidadDeDisco(rs.getString(6));
			} 
			
			else if (nombreCaracteristica.equals("Pulgadas Pantalla")) {
				note.setPulgadasPantalla(rs.getInt(6));
			} 
			
			else if (nombreCaracteristica.equals("Resolucion de Pantalla")) {
				note.setResolucionDePantalla(rs.getString(6));
			} else if (nombreCaracteristica.equals("Cantidad de Puertos USB")) {
				note.setCantidadDePuertosUsb(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Puertos USB 2.0")) {
				note.setPuertosUsb2_0(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Puertos USB 3.0")) {
				note.setPuertosUsb3_0(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Unidad Lectora")) {
				note.setUnidadLectora(rs.getBoolean(6));
			} else if (nombreCaracteristica.equals("Duracion de Bateria")) {
				note.setCapacidadDeBateria(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Precio")) {
				note.setPrecio(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Direccion de Imagen")) {
				note.setImagen(rs.getString(6));
			}
			
			JDBCConnection.closeConnectionToDataBase(con);
		}
		
	return note;
	}
}
