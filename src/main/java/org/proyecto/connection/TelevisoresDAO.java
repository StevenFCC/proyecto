package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Televisor;

public class TelevisoresDAO {
	
	public Televisor getTele(int idArtefacto) throws SQLException {
		
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT artefactos.id, artefactos.nombre, artefactos.marca, artefactos.modelo, caracteristicas.nombre_de_caracteristica, electrodomesticos.descripcion_caracteristica, caracteristicas.unidad_de_medida FROM productosventas.electrodomesticos";
		String join = "join caracteristicas on caracteristicas.id = caracteristica_id join artefactos on artefactos.id = artefacto_id";
		String where = "where artefactos.id = " + idArtefacto + ";";
		ResultSet rs = st.executeQuery(select + " " + join + " " + where);
		
		Televisor tele = null;
		
		while (rs.next()) {
			tele.setMarca(rs.getString(3));
			tele.setModelo(rs.getString(4));
			
			String nombreCaracteristica = rs.getString(5);
			
			if (nombreCaracteristica.equals("Panel")) {
				tele.setPanel(rs.getString(6));
			} else if (nombreCaracteristica.equals("Resolucion Pantalla")) {
				tele.setResolucionDePantalla(rs.getString(6));
			} else if (nombreCaracteristica.equals("Pulgadas de Pantalla")) {
				tele.setPulgadasDePantalla(rs.getInt(6));
			} else if (nombreCaracteristica.equals("SmartTV")) {
				tele.setSmartTv(rs.getBoolean(6));
			} else if (nombreCaracteristica.equals("Parlantes Sourround")) {
				tele.setParlantesSourrand(rs.getBoolean(6));
			} else if (nombreCaracteristica.equals("Precio")) {
				tele.setPrecio(rs.getInt(6));
			} else if (nombreCaracteristica.equals("Direccion de Imagen")) {
				tele.setImagen(rs.getString(6));
			}
			
			JDBCConnection.closeConnectionToDataBase(con);
		}
	
	return tele;
	}
}
