package org.proyecto.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.proyecto.entities.Artefacto;
import org.proyecto.entities.RegistroDeCompra;
import org.proyecto.entities.Usuario;

public class RegistroDeComprasDAO {
	
	public List<RegistroDeCompra> getRegistrosDeCompras() throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM productosventas.registrodecompras;");
		
		List<RegistroDeCompra> registrosDeCompras = new ArrayList<RegistroDeCompra>();
		
		while (rs.next()) {
			RegistroDeCompra registro = new RegistroDeCompra();
			registro.setUsuarioQueRealizoLaCompra(rs.getString(2));
			registro.setProducto_comprado(rs.getString(3));
			registrosDeCompras.add(registro);
		}
		
		return registrosDeCompras;
	}

	public void setCompraDeUsuario (Usuario usuario, Artefacto artefacto) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		String insert = "insert into registrodecompras (usuario_que_realizo_la_compra, producto_comprado)";
		String values = "values ('" + usuario.getNombreDeUsuario() + "', '" + artefacto.getNombre() + " " + artefacto.getMarca() + " " + artefacto.getModelo() + "')";
		String queryToExecute = insert + " " + values + ";";
		System.out.println(queryToExecute);
		int response = st.executeUpdate(queryToExecute);
		System.out.println(response);
		JDBCConnection.closeConnectionToDataBase(con);
	}
}
