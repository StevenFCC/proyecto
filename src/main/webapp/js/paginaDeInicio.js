function creadorDeCocinas() {
	controladorDeCheckbox(true, false, false, false, false, false);
	creadorDeProductos('Cocina', 'cocinas');
}

function creadorDeAiresAcondicionados() {
	controladorDeCheckbox(false, true, false, false, false, false);
	creadorDeProductos('Aire/Acondicionado', 'airesAcondicionados');
}

function creadorDeVentiladores() {
	controladorDeCheckbox(false, false, true, false, false, false);
	creadorDeProductos('Ventilador', 'ventiladores');
}

function creadorDeTelevisores() {
	controladorDeCheckbox(false, false, false, true, false, false);
	creadorDeProductos('TV', 'televisores');
}

function creadorDeNotebooks() {
	controladorDeCheckbox(false, false, false, false, true, false);
	creadorDeProductos('Notebook', 'notebooks');
}

function creadorDeSmartphones() {
	controladorDeCheckbox(false, false, false, false, false, true);
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
	var getDivVacio = document.getElementById("productosAMostrar");
	
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
	getDivVacio.appendChild(crearDivDeproductos);
}

function controladorDeCheckbox(e1, e2, e3, e4, e5, e6) {
	var checkbox1 = document.getElementById("cocinas");
	var checkbox2 = document.getElementById("airesAcondicionados");
	var checkbox3 = document.getElementById("ventiladores");
	var checkbox4 = document.getElementById("televisores");
	var checkbox5 = document.getElementById("notebooks");
	var checkbox6 = document.getElementById("celulares");

	checkbox1.checked = e1;
	checkbox2.checked = e2;
	checkbox3.checked = e3;
	checkbox4.checked = e4;
	checkbox5.checked = e5;
	checkbox6.checked = e6;
	
	}

function creadorDeProductos(nombreDeArtefactos, id) {

	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		
		if (xhr.readyState == 4 && xhr.status == 200) {
			
			var lista = xhr.responseText;
			obj = JSON.parse(lista);
			
			var checkbox = document.getElementById(id);
			if (checkbox.checked == true) {

				eliminarElementos();

				for ( var contador = 0; contador < lista.length; contador++) {
					
					var nombre = obj[contador].nombre;
					var marca = obj[contador].marca;
					var modelo = obj[contador].modelo;
					var linkDeImagenDeProducto = obj[contador].imagen;
					var datosDeProductos = nombre + " " + marca + " " + modelo;
					var link = "http://localhost:8080/proyecto/paginas/paginaDeProducto.html";
					
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