package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.proyecto.entities.Caracteristica;

public class CaracteristicasDAO {

	public List<Caracteristica> getListaDeCaracteristicas(int idDeArtefacto) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT caracteristicas.id, nombre_de_caracteristica, descripcion_caracteristica, unidad_de_medida";
		String from = "FROM productosventas.caracteristicas";
		String join = "join productos on productos.caracteristica_id = caracteristicas.id";
		String where = "where productos.artefacto_id = " + idDeArtefacto;
		ResultSet rs = st.executeQuery(select + " " + from + " " + join +  " " + where + ";");
		
		List<Caracteristica> listaDeCaracteristica = new ArrayList<Caracteristica>();
		
		while(rs.next()) {
			
			Caracteristica datosDeCaracteristica = new Caracteristica();
			datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
			datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
			datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
			listaDeCaracteristica.add(datosDeCaracteristica);
		}
		
		JDBCConnection.closeConnectionToDataBase(con);
		return listaDeCaracteristica;
	}
}

