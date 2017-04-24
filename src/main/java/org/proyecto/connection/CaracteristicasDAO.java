package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Caracteristica;

public class CaracteristicasDAO {

	public Caracteristica getCaracteristicas(int idArtefacto) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String select = "SELECT electrodomesticos.artefacto_id, caracteristicas.nombre_de_caracteristica, caracteristicas.unidad_de_medida FROM productosventas.caracteristicas";
		String join = "join electrodomesticos on electrodomesticos.caracteristica_id = caracteristicas.id";
		String where = "where electrodomesticos.artefacto_id = " + idArtefacto;
		ResultSet rs = st.executeQuery(select + " " + join +  " " + where + ";");
		
		Caracteristica caracteristica = null;
		
		if(rs.next()) {
			String nombreDeCaracteristica = rs.getString(2);
			String unidadDeMedida = rs.getString(3);
				
			caracteristica = new Caracteristica(nombreDeCaracteristica, unidadDeMedida);
			
			JDBCConnection.closeConnectionToDataBase(con);
		}
		return caracteristica;
	}
}

