function tomarParametrosDelUrl() {
	var valorDeParametros = location.search.split("=");
	var valorDeParametro = valorDeParametros[1];
	var valorDeParametroConvertido = unescape(valorDeParametro);

	caracteristicasDeProducto(valorDeParametroConvertido);
}

function realizarCompraDeProducto() {
	var valorDeParametros = location.search.split("=");
	var valorDeParametro = valorDeParametros[1];
	var valorDeParametroConvertido = unescape(valorDeParametro);

	cambiarDePagina(valorDeParametroConvertido);
}

function itemDeCaracteristica(texto) {
	var tomarDiv = document.getElementById('caracteristicasProducto');
	var crearTagP = document.createElement("p")
	crearTagP.setAttribute("class", "pCaracteristicasDatos");
	var texto = document.createTextNode(texto);
	crearTagP.appendChild(texto);
	tomarDiv.appendChild(crearTagP);
}

function agregarPrecio (precio) {
	var tomarDiv = document.getElementById('precio');
	var crearTagP = document.createElement("p");
	crearTagP.setAttribute("class", "pPrecioSignoYNumero");
	tomarDiv.appendChild(crearTagP);
	var valorPrecio = document.createTextNode(precio);
	crearTagP.appendChild(valorPrecio);
}

function tomarYSetearImg (src) {
	var tomarImg = document.getElementById('imagenDeProducto')
	tomarImg.setAttribute("src", src);
}

function creadorDeInputsTypeCheckbox (propiedad, estadoDeChecked) {
	var tomarDiv = document.getElementById('caracteristicasProducto');

	var crearTagLi = document.createElement("li");
	crearTagLi.setAttribute("class", "liCaracteristicasDatos");
	var texto = document.createTextNode(propiedad);
	crearTagLi.appendChild(texto);

	var crearTagInput = document.createElement("Input");
	crearTagInput.setAttribute("class", "inputsEnCaracteristicas")
	crearTagInput.setAttribute("type", "checkbox");
	crearTagInput.checked = estadoDeChecked;
	crearTagInput.setAttribute("disabled", "true");
	crearTagLi.appendChild(crearTagInput);

	tomarDiv.appendChild(crearTagLi);
}

function cambiarDePagina(idDeArtefacto) {
	var newUrl = "http://localhost:8080/proyecto/paginas/paginaDeCompraDeProducto.html?idDeArtefacto=" + idDeArtefacto;
	window.location.replace(newUrl);
}

function caracteristicasDeProducto(idDeArtefacto) {

	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		
		if (xhr.readyState == 4 && xhr.status == 200) {
			
			var lista = xhr.responseText;
			var obj = JSON.parse(lista);

			var getTagTitle = document.getElementById("nombreDePestanna");
			var textoTitle = document.createTextNode(obj.artefacto.nombre + " " + obj.artefacto.marca + " " + obj.artefacto.modelo);
			getTagTitle.appendChild(textoTitle);

			var marca = "Marca: " + obj.artefacto.marca;
			itemDeCaracteristica(marca);
			var modelo = "Modelo: " + obj.artefacto.modelo;
			itemDeCaracteristica(modelo);

			for (var contador = 0; contador < obj.listaDeCaracteristicas.length; contador++) {
				
				var limitador = obj.listaDeCaracteristicas[contador].nombreDeCaracteristica;
				var limitadorPorValor = obj.listaDeCaracteristicas[contador].valorDeCaracteristica;
				var limitadorPorUnidadDeMedida = obj.listaDeCaracteristicas[contador].unidadDeMedida;
				
				if (limitador != "Precio") {
					
					if (limitador != "Direccion de Imagen") {

						if (limitadorPorValor != "true") {
							
							if (limitadorPorValor != "false") {

								if (limitadorPorUnidadDeMedida == null || limitadorPorValor == "No especificada" || limitadorPorValor == "No especificadas") {
									
									var texto = obj.listaDeCaracteristicas[contador].nombreDeCaracteristica + ": " + obj.listaDeCaracteristicas[contador].valorDeCaracteristica;
									itemDeCaracteristica(texto);
								} else {

									var texto = obj.listaDeCaracteristicas[contador].nombreDeCaracteristica + ": " + obj.listaDeCaracteristicas[contador].valorDeCaracteristica + " " + obj.listaDeCaracteristicas[contador].unidadDeMedida;
									itemDeCaracteristica(texto);
								}
							}
						}
					} else {
						var linkDeImagen = obj.listaDeCaracteristicas[contador].valorDeCaracteristica;
						tomarYSetearImg(linkDeImagen);
					}

				} else {
					var texto = obj.listaDeCaracteristicas[contador].valorDeCaracteristica;
					agregarPrecio(texto);
				}

				if (limitadorPorValor == "true") {
					var propiedad = obj.listaDeCaracteristicas[contador].nombreDeCaracteristica + ": ";
					//var estadoDeCheckedValor = obj.listaDeCaracteristicas[contador].valorDeCaracteristica;
					creadorDeInputsTypeCheckbox(propiedad, true);
				}

				if (limitadorPorValor == "false") {
					var propiedad = obj.listaDeCaracteristicas[contador].nombreDeCaracteristica + ": ";
					//var estadoDeCheckedValor = obj.listaDeCaracteristicas[contador].valorDeCaracteristica;
					creadorDeInputsTypeCheckbox(propiedad, false);
				}
			}
		}
	}

	var endpoint = "http://localhost:8080/proyecto/ws/productos/" + idDeArtefacto;
	xhr.open("GET", endpoint, true);
	xhr.send(null);
}