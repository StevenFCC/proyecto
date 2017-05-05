function creadorDeCocinas() {
	creadorDeProductos('Cocina', 'cocinas');
}

function creadorDeAiresAcondicionados() {
	creadorDeProductos('Aire%20Acondicionado', 'airesAcondicionados');
}

function creadorDeVentiladores() {
	creadorDeProductos('Ventilador', 'ventiladores');
}

function creadorDeTelevisores() {
	creadorDeProductos('TV', 'televisores');
}

function creadorDeNotebooks() {
	creadorDeProductos('Notebook', 'notebooks');
}

function creadorDeSmartphones() {
	creadorDeProductos('Smartphone', 'celulares');
}

function eliminarElementos() {

	var eliminarTodos = document.getElementById("productosAMostrar");
	
	while (eliminarTodos.hasChildNodes()) {
		eliminarTodos.removeChild(eliminarTodos.firstChild);
	}	
}

function creadorDeDivDeProductos(linkDeProducto, linkDeImagenDeProducto, datosDeProductos) {

	//Esta variable toma el div del DOM
	var getDivProductosAMostrar = document.getElementById("productosAMostrar");
	
	//Esta variable crea el div donde estaran los datos del producto
	var crearDivDeproductos = document.createElement("div");
	crearDivDeproductos.setAttribute("class", "divProductoAMostrar");

	//Esta variable crea la imagen del producto
	var crearImgDeProducto = document.createElement("img");
	crearImgDeProducto.setAttribute("class", "imgDeProductoAMostrar");
	crearImgDeProducto.setAttribute("src", linkDeImagenDeProducto);
	crearDivDeproductos.appendChild(crearImgDeProducto);
	
	//Esta variable crea el link para dirigirse a los datos del producto
	var crearADeProducto = document.createElement("a");
	crearADeProducto.setAttribute("href", linkDeProducto);
	crearADeProducto.setAttribute("class", "aDeProductoAMostrar");
	var textoDeA = document.createTextNode(datosDeProductos);
	crearADeProducto.appendChild(textoDeA);
	var creadorDeDiv = document.createElement("div");
	creadorDeDiv.setAttribute("class", "divDeA");
	creadorDeDiv.appendChild(crearADeProducto);
	crearDivDeproductos.appendChild(creadorDeDiv);

	//Agrega todo al DOM
	getDivProductosAMostrar.appendChild(crearDivDeproductos);
}

function creadorDeProductos(nombreDeArtefactos, id) {

	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		
		if (xhr.readyState == 4 && xhr.status == 200) {
			
			var lista = xhr.responseText;
			var obj = JSON.parse(lista);
			
			var getCheckboxPorId = document.getElementById(id);

			if (getCheckboxPorId.checked == true) {

				eliminarElementos();

				for ( var contador = 0; contador < obj.length; contador++) {
					
					var idDeArtefacto = obj[contador].idDeArtefacto;
					var nombre = obj[contador].nombre;
					var marca = obj[contador].marca;
					var modelo = obj[contador].modelo;
					var linkDeImagenDeProducto = obj[contador].imagen;
					var datosDeProductos = nombre + " " + marca + " " + modelo;
					var link = "http://localhost:8080/proyecto/paginas/paginaDeProducto.html?idDeArtefacto=" + idDeArtefacto;
					
					creadorDeDivDeProductos(link, linkDeImagenDeProducto, datosDeProductos);
				}

			} else {

				eliminarElementos();
			}
		}
	}

	var endpoint = "http://localhost:8080/proyecto/ws/listaDeArtefactos/" + nombreDeArtefactos;
	xhr.open("GET", endpoint, true);
	xhr.send(null);
}