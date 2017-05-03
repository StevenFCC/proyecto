function compraDeProducto() {

	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		
		if (xhr.readyState == 4 && xhr.status == 200) {

			var lista = xhr.responseText;
			obj = JSON.parse(lista);

			var usuarioQueCompro = obj[0];
			var artefactoQueCompro = obj[1];

			var tomarDiv = document.getElementById("datosIncorrectos");
			var crearTagP = document.createElement("p");
			crearTagP.setAttribute("class", "pCompra")
			var texto = document.createTextNode("Felicidades usuario " + usuarioQueCompro + " la compra de su " + artefactoQueCompro + " fue realizada con exito");
			crearTagP.appendChild(texto);
			tomarDiv.appendChild(crearTagP);

			var eliminarTodos = document.getElementById("borrar");
	
			while (eliminarTodos.hasChildNodes()) {
				eliminarTodos.removeChild(eliminarTodos.firstChild);
			}

			var ingresarUrl = document.getElementById("retorno");

			var crearTagA = document.createElement("a");
			crearTagA.setAttribute("href", "localhost:8080/proyecto/paginas/paginaDeInicio.html");
			var texto1 = document.createTextNode("Regresar a inicio")
			crearTagA.appendChild(texto1);
			ingresarUrl.appendChild(crearTagA);	
		}
	}


	var usuario = document.getElementById("usuario");
	var clave = document.getElementById("clave");


	var valorDeParametros = location.search.split("=");
	var valorDeParametro = valorDeParametros[1];
	var valorDeParametroConvertido = unescape(valorDeParametro);
	var idDeArtefacto = valorDeParametroConvertido;

	var endpoint = "http://localhost:8080/proyecto/ws/compras/" + idDeArtefacto + "/" + usuario.value + "/" + clave.value;
	//var endpoint = "http://localhost:8080/proyecto/ws/compras/6/Steven/1234";
	xhr.open("GET", endpoint, true);
	xhr.send(null);
}
