package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.CocinaDeGas;


public class ElectrodomesticosCocinaDeGasDAO {
	
	public CocinaDeGas getCocinaDeGas(int idArtefacto) throws SQLException {
		
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT artefactos.id, artefactos.nombre, artefactos.marca, artefactos.modelo, caracteristicas.nombre_de_caracteristica, electrodomesticos.descripcion_caracteristica, caracteristicas.unidad_de_medida";
		String from = "FROM productosventas.electrodomesticos";
		String join = "join caracteristicas on caracteristicas.id = caracteristica_id";
		String join2 = "join artefactos on artefactos.id = artefacto_id";
		String where = "where artefactos.id = ";
		ResultSet rs = st.executeQuery(select + " " + from + " " + join + " " + join2 + " " + where + " " + idArtefacto + ";");
		
		CocinaDeGas cocinaDeGas = new CocinaDeGas();
		
		while (rs.next()) {
			String marca = rs.getString(3);
			cocinaDeGas.setMarca(marca);
			
			String modelo = rs.getString(4);
			cocinaDeGas.setModelo(modelo);
			
			String nombreDeCaracteristica = rs.getString(5);
			
			if (nombreDeCaracteristica.equals("Medidas")) {
				cocinaDeGas.setMedidas(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Eficiencia Energetica")) {
				cocinaDeGas.setEficienciaEnergetica(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Cantidad de hornallas")) {
				cocinaDeGas.setCantidadDeHornallas(rs.getInt(6));
			} else if (nombreDeCaracteristica.equals("Tipo de Fuente")) {
				cocinaDeGas.setTipoDeFuente(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Tipo de Conexion")) {
				cocinaDeGas.setTipoDeConexion(rs.getString(6));
			} else if (nombreDeCaracteristica.equals("Precio")) {
				cocinaDeGas.setPrecio(rs.getInt(6));
			} else if (nombreDeCaracteristica.equals("Direccion de Imagen")) {
				cocinaDeGas.setImagen(rs.getString(6));
			}
			
			
		}
		JDBCConnection.closeConnectionToDataBase(con);
	return cocinaDeGas;
	}
}
