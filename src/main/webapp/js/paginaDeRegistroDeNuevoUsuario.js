function insertarNuevoUsuarioEnLaBaseDeDatos() {

	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		
		if (xhr.readyState == 4 && xhr.status == 200) {

			var datosUsuario = xhr.responseText;
			obj = JSON.parse(datosUsuario);
			var nombreDeUsuario = obj.nombreDeUsuario; 

			var estadoDeRegistro = document.getElementById("estadoDeRegistro");
			var crearTagP = document.createElement("p");
			crearTagP.setAttribute("class", "pRegistro");
			var texto = "El Usuario " + nombreDeUsuario + " a sido creado exitosamente.";
			var textoInsertado = document.createTextNode(texto);
			crearTagP.appendChild(textoInsertado);
			estadoDeRegistro.appendChild(crearTagP);
		}
	}

	var getInpuntNombreDeUsuario = document.getElementById("nombreDeUsuario");
	var getInpuntClave = document.getElementById("claveDeUsuario");
	var nombreDeUsuario = getInpuntNombreDeUsuario.value;
	var clave = getInpuntClave.value;

	var endpoint = "http://localhost:8080/proyecto/ws/usuarios/newuser/" + nombreDeUsuario + "/" + clave;
	xhr.open("GET", endpoint, true);
	xhr.send(null);
}