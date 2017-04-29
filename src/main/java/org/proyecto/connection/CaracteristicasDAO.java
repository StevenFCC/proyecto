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
			
			String nombreDeCaracteristica = rs.getString(2);
			
			if (nombreDeCaracteristica.equals("Consumo Energetico")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Medidas")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Eficiencia Energetica")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Cantidad de hornallas")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Tipo de Fuente")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Precio")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Tipo de Conexion")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Frio")){
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Calor")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Tipo de Aire")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Consumo Energetico en Frio")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Consumo Energetico en Calor")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Medidas de unidad exterior")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Medidas de unidad interior")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Numero de Velocidades")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Panel")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Resolucion de Pantalla")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Medidas de Pantalla")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("SmartTV")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Parlantes Sourround")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("CPU")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Modelo del Procesador")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("GPU")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("RAM")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Tipo de RAM")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Tipo de Disco")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Capacidad de Disco")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Cantidad de Puertos USB")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Puertos USB 2.0")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Puertos USB 3.0")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Unidad Lectora")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Duracion de Bateria")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Sistema Operativo")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Procesador")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Tipo de Pantalla")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Memoria Interna")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Resolucion de Camara")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Posee Flash")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Posee Camara Frontal")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Resolucion de Camara Fronal")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Capacidad de Bateria")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Potencia en Frio")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Potencia en Calor")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Eficiencia Energetica en Frio")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Eficiencia Energetica en Calor")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} else if (nombreDeCaracteristica.equals("Direccion de Imagen")) {
				Caracteristica datosDeCaracteristica = new Caracteristica();
				datosDeCaracteristica.setNombreDeCaracteristica(rs.getString(2));
				datosDeCaracteristica.setValorDeCaracteristica(rs.getString(3));
				datosDeCaracteristica.setUnidadDeMedida(rs.getString(4));
				listaDeCaracteristica.add(datosDeCaracteristica);
			} 

		}
		
		JDBCConnection.closeConnectionToDataBase(con);
		return listaDeCaracteristica;
	}
}

