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
	ResultSet rs = st.executeQuery("sele1ct * from artefactos where id = " + idDeArtefacto + ";");
	
	Artefacto artefacto = new Artefacto();
	
	if(rs.next()) {
		artefacto.setNombre(rs.getString(2));
		artefacto.setMarca(rs.getString(3));
		artefacto.setModelo(rs.getString(4));
		
		JDBCConnection.closeConnectionToDataBase(con);
	}
	
	return artefacto;
	}
}
