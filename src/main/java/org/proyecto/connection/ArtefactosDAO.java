package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Artefacto;

public class ArtefactosDAO {
	
	public Artefacto getArtefacto(int idDeArtefacto) throws SQLException {
	Connection con = JDBCConnection.connectToDataBase();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from artefactos where id = " + idDeArtefacto);
	
	Artefacto artefacto = null;
	
	if(rs.next()) {
		String nombre = rs.getString(2);
		String marca = rs.getString(3);
		String modelo = rs.getString(4);
		
		artefacto = new Artefacto(nombre, marca, modelo);
		
		JDBCConnection.closeConnectionToDataBase(con);
	}
	return artefacto;
	}
}
