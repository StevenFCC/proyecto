function controladorValoresInputs() {

	var getDivEstadoDeRegistro = document.getElementById("estadoDeRegistro");

	eliminar(getDivEstadoDeRegistro);

	var inputUsuario = document.getElementById("nombreDeUsuario");
	var inputClave = document.getElementById("claveDeUsuario");

	if (inputClave.value == "" || inputUsuario.value == "") {
		
			var texto = "Campo de usuario o clave vacios";
			crearTagPConTexto(getDivEstadoDeRegistro, texto);
		
	} else if (inputUsuario.value.length < 3 || inputUsuario.value.length > 10) {
			
			var texto = "Campo de usuario incorrecto, nombre de usuario minimo de tres caracteres y maxima de 10";
			crearTagPConTexto(getDivEstadoDeRegistro, texto);
		
	} else if (inputClave.value.length < 4 || inputClave.value.length > 15) {
		
		var texto = "Campo de clave incorrecto, clave minima de tres caracteres y maxima de 15";
		crearTagPConTexto(getDivEstadoDeRegistro, texto);

	} else {
		
		insertarNuevoUsuarioEnLaBaseDeDatos();
	}
}

function insertarNuevoUsuarioEnLaBaseDeDatos() {

	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		
		if (xhr.readyState == 4 && xhr.status == 404) {

			var getDivEstadoDeRegistro = document.getElementById("estadoDeRegistro");
			
			eliminar(getDivEstadoDeRegistro);

			var getInpuntNombreDeUsuario = document.getElementById("nombreDeUsuario");
			var inputNombreDeUsuarioValue = getInpuntNombreDeUsuario.value;

			var texto = "El Usuario " + inputNombreDeUsuarioValue + " ya existe, use otro nombre de usuario";

			crearTagPConTexto(getDivEstadoDeRegistro, texto);
		}


		if (xhr.readyState == 4 && xhr.status == 200) {

			var datosUsuario = xhr.responseText;
			var obj = JSON.parse(datosUsuario);
			var nombreDeUsuario = obj.nombreDeUsuario; 

			var getDivEstadoDeRegistro = document.getElementById("estadoDeRegistro");
			
			var texto = "El Usuario " + nombreDeUsuario + " a sido creado exitosamente.";
			
			crearTagPConTexto(getDivEstadoDeRegistro, texto);

			var getDivBorrar = document.getElementById("borrar");
	
			eliminar(getDivBorrar);
			
			var crearTagA = document.createElement("a");

			var valorDeParametros = location.search.split("=");
			var valorDeParametro = valorDeParametros[1];
			var valorDeParametroConvertido = unescape(valorDeParametro);
			var idDeArtefacto = valorDeParametroConvertido;

			var linkDeRetorno = "http://localhost:8080/proyecto/paginas/paginaDeCompraDeProducto.html?idDeArtefacto=" + idDeArtefacto;
			crearTagA.setAttribute("href", linkDeRetorno);
			crearTagA.setAttribute("class", "aDeRegresarAInicio");
			var textoInsertado2 = document.createTextNode("Continue la compra con su nuevo usuario");
			crearTagA.appendChild(textoInsertado2);

			var crearTagDiv = document.createElement("div");
			crearTagDiv.setAttribute("class", "divDeA");
			crearTagDiv.appendChild(crearTagA);
			getDivEstadoDeRegistro.appendChild(crearTagDiv);
		}
	}

	var getInpuntNombreDeUsuario = document.getElementById("nombreDeUsuario");
	var inputNombreDeUsuarioValue = getInpuntNombreDeUsuario.value;
	
	var getInpuntClave = document.getElementById("claveDeUsuario");
	var inputClaveValue = getInpuntClave.value;

	var endpoint = "http://localhost:8080/proyecto/ws/usuarios/newuser";
	
	xhr.open("POST", endpoint, true);

	xhr.setRequestHeader("Content-Type", "application/json");
	xhr.send(JSON.stringify({nombreDeUsuario: inputNombreDeUsuarioValue, clave: inputClaveValue}));
}

function eliminar(padreDelCualEliminarHijos) {
	
	while (padreDelCualEliminarHijos.hasChildNodes()) {
		padreDelCualEliminarHijos.removeChild(padreDelCualEliminarHijos.firstChild);
	}
}

function crearTagPConTexto(padreAlCualAsignar, textoAInsertar) {
	
	var crearTagP = document.createElement("p");
	crearTagP.setAttribute("class", "pRegistro");
	var textoInsertado = document.createTextNode(textoAInsertar);
	crearTagP.appendChild(textoInsertado);
	padreAlCualAsignar.appendChild(crearTagP);
}