package org.proyecto.connection;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.entities.Artefacto;
import org.proyecto.entities.Usuario;

public class RegistroDeComprasDAO {

	public void setCompraDeUsuario (Usuario usuario, Artefacto artefacto) throws SQLException {
		Connection con = JDBCConnection2.connectToDataBase();
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
