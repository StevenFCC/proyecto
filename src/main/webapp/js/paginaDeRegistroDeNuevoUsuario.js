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

			var eliminarTodos = document.getElementById("borrar");
	
			while (eliminarTodos.hasChildNodes()) {
				eliminarTodos.removeChild(eliminarTodos.firstChild);
			}

			var ingresarUrl = document.getElementById("retorno");
			
			var crearTagA = document.createElement("a");
			crearTagA.setAttribute("href", "localhost:8080/proyecto/paginas/paginaDeInicio.html");
			crearTagA.setAttribute("class", "aDeRegresarAInicio");
			var texto1 = document.createTextNode("Regresar al inicio");
			crearTagA.appendChild(texto1);

			var crearTagDiv = document.createElement("div");
			crearTagDiv.setAttribute("class", "divDeA");
			crearTagDiv.appendChild(crearTagA);
			
			
			ingresarUrl.appendChild(crearTagDiv);
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