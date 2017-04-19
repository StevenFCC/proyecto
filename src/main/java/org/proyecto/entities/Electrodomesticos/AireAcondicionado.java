package org.proyecto.entities.Electrodomesticos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.proyecto.connection.JDBCConnection;

public class AireAcondicionado extends Electrodomestico{
	private boolean frio;
	private boolean calor;
	private String tipoDeAire;
	private String consumoEnergeticoEnFrio;
	private String consumoEnergeticoEnCalor;
	private int potenciaEnFrio;
	private int potenciaEnCalor;
	private String eficienciaEnergeticaEnFrio;
	private String eficienciaEnergeticaEnCalor;
	private String medidasDeUnidadExterior;
	private String medidasDeUnidadInterior;
	
	
	public boolean isFrio() {
		return frio;
	}
	
	public boolean isCalor() {
		return calor;
	}
	
	public String getTipoDeAire() {
		return tipoDeAire;
	}
	
	public String getConsumoEnergeticoEnFrio() {
		return consumoEnergeticoEnFrio;
	}
	
	public String getConsumoEnergeticoEnCalor() {
		return consumoEnergeticoEnCalor;
	}
	
	public int getPotenciaEnFrio() {
		return potenciaEnFrio;
	}

	public int getPotenciaEnCalor() {
		return potenciaEnCalor;
	}

	public String getEficienciaEnergeticaEnFrio() {
		return eficienciaEnergeticaEnFrio;
	}

	public String getEficienciaEnergeticaEnCalor() {
		return eficienciaEnergeticaEnCalor;
	}

	public String getMedidasDeUnidadExterior() {
		return medidasDeUnidadExterior;
	}
	
	public String getMedidasDeUnidadInterior() {
		return medidasDeUnidadInterior;
	}
	
	public AireAcondicionado(int idAireAcondicionado) throws SQLException {
		Connection con = JDBCConnection.connectToDataBase();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from electrodomesticos where id = " + idAireAcondicionado);
		this.consumoEnergetico = rs.getInt(1);
		
	}
}
