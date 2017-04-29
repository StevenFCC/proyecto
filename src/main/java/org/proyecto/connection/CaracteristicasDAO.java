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
		
		while(rs.next()) {
			
			String nombreDeCaracteristica = rs.getString(2);
			
			if (nombreDeCaracteristica.equals("Consumo Energetico")) {
				
			} else if (nombreDeCaracteristica.equals("Medidas")) {
				
			} else if (nombreDeCaracteristica.equals("Eficiencia Energetica")) {
				
			} else if (nombreDeCaracteristica.equals("Cantidad de hornallas")) {
				
			} else if (nombreDeCaracteristica.equals("Tipo de Fuente")) {
				
			} else if (nombreDeCaracteristica.equals("Precio")) {
				
			} else if (nombreDeCaracteristica.equals("Tipo de Conexion")) {
				
			} else if (nombreDeCaracteristica.equals("Frio")){
				
			} else if (nombreDeCaracteristica.equals("Calor")) {
				
			} else if (nombreDeCaracteristica.equals("Tipo de Aire")) {
				
			} else if (nombreDeCaracteristica.equals("Consumo Energetico en Frio")) {
				
			} else if (nombreDeCaracteristica.equals("Consumo Energetico en Calor")) {
				
			} else if (nombreDeCaracteristica.equals("Medidas de unidad exterior")) {
				
			} else if (nombreDeCaracteristica.equals("Medidas de unidad interior")) {
				
			} else if (nombreDeCaracteristica.equals("Numero de Velocidades")) {
				
			} else if (nombreDeCaracteristica.equals("Panel")) {
				
			} else if (nombreDeCaracteristica.equals("Resolucion de Pantalla")) {
				
			} else if (nombreDeCaracteristica.equals("Pulgadas de Pantalla")) {
				
			} else if (nombreDeCaracteristica.equals("SmartTV")) {
				
			} else if (nombreDeCaracteristica.equals("Parlantes Sourround")) {
				
			} else if (nombreDeCaracteristica.equals("CPU")) {
				
			} else if (nombreDeCaracteristica.equals("Modelo del Procesador")) {
				
			} else if (nombreDeCaracteristica.equals("GPU")) {
				
			} else if (nombreDeCaracteristica.equals("RAM")) {
				
			} else if (nombreDeCaracteristica.equals("Tipo de RAM")) {
				
			} else if (nombreDeCaracteristica.equals("Tipo de Disco")) {
				
			} else if (nombreDeCaracteristica.equals("Capacidad de Disco")) {
				
			} else if (nombreDeCaracteristica.equals("Cantidad de Puertos USB")) {
				
			} else if (nombreDeCaracteristica.equals("Puertos USB 2.0")) {
				
			} else if (nombreDeCaracteristica.equals("Puertos USB 3.0")) {
				
			} else if (nombreDeCaracteristica.equals("Unidad Lectora")) {
				
			} else if (nombreDeCaracteristica.equals("Duracion de Bateria")) {
				
			} else if (nombreDeCaracteristica.equals("Sistema Operativo")) {
				
			} else if (nombreDeCaracteristica.equals("Procesador")) {
				
			} else if (nombreDeCaracteristica.equals("Tipo de Pantalla")) {
				
			} else if (nombreDeCaracteristica.equals("Memoria Interna")) {
				
			} else if (nombreDeCaracteristica.equals("Resolucion de Camara")) {
				
			} else if (nombreDeCaracteristica.equals("Posee Flash")) {
				
			} else if (nombreDeCaracteristica.equals("Posee Camara Frontal")) {
				
			} else if (nombreDeCaracteristica.equals("Resolucion de Camara Fronal")) {
				
			} else if (nombreDeCaracteristica.equals("Capacidad de Bateria")) {
				
			} else if (nombreDeCaracteristica.equals("Potencia en Frio")) {
				
			} else if (nombreDeCaracteristica.equals("Potencia en Calor")) {
				
			} else if (nombreDeCaracteristica.equals("Eficiencia Energetica en Frio")) {
				
			} else if (nombreDeCaracteristica.equals("Eficiencia Energetica en Calor")) {
				
			} else if (nombreDeCaracteristica.equals("Direccion de Imagen")) {
				
			} 
			
		}
		
		JDBCConnection.closeConnectionToDataBase(con);
		return caracteristica;
	}
}

