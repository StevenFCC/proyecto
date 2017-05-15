function compraDeProducto() {

	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {

		if (xhr.readyState == 4 && xhr.status == 404) {
			
			var getDivDatos = document.getElementById("datos");			
	
			eliminar(getDivDatos);			

			var texto = document.createTextNode("Nombre de usuario o clave incorrecta");
			
			crearTagPConTexto(getDivDatos, texto, "pCompraIncorrecta")
		}
		
		if (xhr.readyState == 4 && xhr.status == 200) {

			var getDivDatos = document.getElementById("datos");
	
			eliminar(getDivDatos);

			var lista = xhr.responseText;
			obj = JSON.parse(lista);

			var usuarioQueCompro = obj[0];
			var artefactoQueCompro = obj[1];

			var texto = document.createTextNode("Felicidades usuario " + usuarioQueCompro + " la compra de su " + artefactoQueCompro + " fue realizada con exito");
			
			crearTagPConTexto(getDivDatos, texto, "pCompraCorrecta");

			var getDivBorrar = document.getElementById("borrar");
	
			eliminar(getDivBorrar);

			var crearTagDivDeA = document.createElement("div");
			crearTagDivDeA.setAttribute("class", "divDeADeInicio");

			var crearTagA = document.createElement("a");
			crearTagA.setAttribute("href", "http://localhost:8080/proyecto/paginas/paginaDeInicio.html");
			crearTagA.setAttribute("class", "aDeInicio")
			var texto1 = document.createTextNode("Regresar al inicio")
			crearTagA.appendChild(texto1);
			crearTagDivDeA.appendChild(crearTagA);
			getDivDatos.appendChild(crearTagDivDeA);	
		}
	}


	var usuario = document.getElementById("usuario");
	var clave = document.getElementById("clave");


	var valorDeParametros = location.search.split("=");
	var valorDeParametro = valorDeParametros[1];
	var valorDeParametroConvertido = unescape(valorDeParametro);
	var idDeArtefacto = valorDeParametroConvertido;

	var endpoint = "http://localhost:8080/proyecto/ws/compras/" + idDeArtefacto;
	xhr.open("POST", endpoint, true);
	xhr.setRequestHeader("Content-Type", "application/json");
	xhr.send(JSON.stringify({nombreDeUsuario: usuario.value, clave: clave.value}));
}

function retornoSiSeRegistraUnNuevoUsuario() {

	var getTagA = document.getElementById("retorno");
	
	var valorDeParametros = location.search.split("=");
	var valorDeParametro = valorDeParametros[1];
	var valorDeParametroConvertido = unescape(valorDeParametro);
	var idDeArtefacto = valorDeParametroConvertido;

	getTagA.setAttribute("href", "http://localhost:8080/proyecto/paginas/paginaDeRegistroDeNuevoUsuario.html?idDeArtefacto=" + idDeArtefacto);
}

function crearTagPConTexto(padreAlCualAsignar, textoAInsertar, estilo) {
	
	var crearTagP = document.createElement("p");
	crearTagP.setAttribute("class", estilo);
	crearTagP.appendChild(textoAInsertar);
	padreAlCualAsignar.appendChild(crearTagP);
}

function eliminar (padreAlCualEliminarHijos) {
	
	while (padreAlCualEliminarHijos.hasChildNodes()) {
		padreAlCualEliminarHijos.removeChild(padreAlCualEliminarHijos.firstChild);
	}
}
