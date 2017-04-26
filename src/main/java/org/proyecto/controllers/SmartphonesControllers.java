package org.proyecto.controllers;

import javax.ws.rs.PathParam;

import org.proyecto.entities.Smartphone;
//import org.proyecto.sevices.SmartphonesServices;

public class SmartphonesControllers {

	//private final SmartphonesServices service = new SmartphonesServices();
	
	public Smartphone getSmart(@PathParam("id") String idArtefacto) {
		
		Smartphone phone = null;
		
		return phone;
	}
}
