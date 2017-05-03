package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.proyecto.entities.Artefacto;

public class ArtefactosDAO {
	
	public Artefacto getArtefacto(int idDeArtefacto) throws SQLException {
	Connection con = JDBCConnection.connectToDataBase();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM artefactos where id = " + idDeArtefacto + ";");
	
	Artefacto artefacto = new Artefacto();
	
	if(rs.next()) {
		artefacto.setIdDeArtefacto(rs.getInt(1));
		artefacto.setNombre(rs.getString(2));
		artefacto.setMarca(rs.getString(3));
		artefacto.setModelo(rs.getString(4));
		artefacto.setImagen(rs.getString(5));
	}
	
	JDBCConnection.closeConnectionToDataBase(con);
	return artefacto;
	}
	
	public List<Artefacto> getListaDeArtefactosPorTipo (String nombreDeArtefacto) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM artefactos where nombre = " + "'" + nombreDeArtefacto + "'" + ";");
		
		
		List <Artefacto> listaDeArtefactos = new ArrayList<Artefacto>();
		
		while (rs.next()) {
			
		Artefacto datosDeArtefacto = new Artefacto();
			datosDeArtefacto.setIdDeArtefacto(rs.getInt(1));
			datosDeArtefacto.setNombre(rs.getString(2));
			datosDeArtefacto.setMarca(rs.getString(3));
			datosDeArtefacto.setModelo(rs.getString(4));
			datosDeArtefacto.setImagen(rs.getString(5));
			listaDeArtefactos.add(datosDeArtefacto);
		}
		
		JDBCConnection.closeConnectionToDataBase(con);
		return listaDeArtefactos;
	}
}