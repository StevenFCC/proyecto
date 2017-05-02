package org.proyecto.sevices;

import java.sql.SQLException;

import org.proyecto.connection.RegistroDeComprasDAO;
import org.proyecto.entities.Artefacto;
import org.proyecto.entities.Usuario;

public class RegistroDeComprasServices {

	private final RegistroDeComprasDAO dao = new RegistroDeComprasDAO();
	
	public void setComprasDeUsuario(Usuario usuario, Artefacto artefacto) throws SQLException {
		dao.setCompraDeUsuario(usuario, artefacto);
	}
}
