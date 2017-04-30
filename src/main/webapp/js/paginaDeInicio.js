function prueba(texto) {
	var a = document.getElementById('productosAMostrar');
	var b = document.createElement("p");
	a.appendChild(b);
	b.setAttribute("class", "producto");
	var c = document.createTextNode(texto);
	b.appendChild(c);
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
	crearImgDeProducto.setAttribute("href", linkDeImagenDeProducto);
	crearDivDeproductos.appendChild(crearImgDeProducto);
	
	//Esta variable crea el link para dirigirse a los datos del producto
	var crearADeProducto = document.createElement("a");
	crearADeProducto.setAttribute("href", linkDeProducto);
	crearADeProducto.setAttribute("class", "aDeProductoAMostrar");
	var textoDeA = document.createTextNode(datosDeProductos);
	crearADeProducto.appendChild(textoDeA);
	crearDivDeproductos.appendChild(crearADeProducto);

	//Agrega todo al DOM
	getDivVacio.appendChild(crearDivDeproductos);
}

function prueba2() {

	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var lista = xhr.responseText;
			obj = JSON.parse(lista);
			
			for ( var contador = 0; contador < lista.length; contador++) {
				
				var nombre = obj[contador].nombre;
				var marca = obj[contador].marca;
				var modelo = obj[contador].modelo;
				var linkDeImagenDeProducto = obj[contador].imagen;
				var datosDeProductos = nombre + " " + marca + " " + modelo;
				var link = "file:///C:/Users/pc/proyecto/src/main/webapp/paginas/paginaDeProducto.html";
				
				creadorDeDivDeProductos(link, linkDeImagenDeProducto, datosDeProductos);
			}
		}
	}

	var endpoint = "http://localhost:8080/proyecto/ws/listaDeArtefactos/Aire/Acondicionado";
	xhr.open("GET", endpoint, true);
	xhr.send(null);
}

function prueba3() {
	var lista = '[{"nombre":"Aire Acondicionado","marca":"Samsung","modelo":"AR12KSFHCWK"},{"nombre":"Aire Acondicionado","marca":"Samsung","modelo":"AR18KSFHCWK"},{"nombre":"Aire Acondicionado","marca":"LG","modelo":"US-W246CSG4"},{"nombre":"Aire Acondicionado","marca":"LG","modelo":"US-W126BRG4"},{"nombre":"Aire Acondicionado","marca":"LG","modelo":"US-W246CRG4"},{"nombre":"Aire Acondicionado","marca":"BGH","modelo":"BC23FN"},{"nombre":"Aire Acondicionado","marca":"BGH","modelo":"BC30FN"},{"nombre":"Aire Acondicionado","marca":"Sanyo","modelo":"SA916ARN"}]';
	obj = JSON.parse(lista);
	
	var link = "file:///C:/Users/pc/proyecto/src/main/webapp/paginas/paginaDeProducto.html";
	
	var nombre = obj[0].nombre;
	var marca = obj[0].marca;
	var modelo = obj[0].modelo;
	var datosDeProductos = nombre + " " + marca + " " + modelo;

	creadorDeDivDeProductos(link, datosDeProductos);
}