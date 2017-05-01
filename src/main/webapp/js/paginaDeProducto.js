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

function tomarYSetearImg (link) {
	var tomarImg = document.getElementById('imagenDeProducto')
	tomarImg.setAttribute("src", link);
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

function caracteristicasDeProducto(idDeArtefacto) {

	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {
		
		if (xhr.readyState == 4 && xhr.status == 200) {
			
			var lista = xhr.responseText;
			obj = JSON.parse(lista);

			for (var contador = 0; contador < lista.length; contador++) {
				
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

				if (limitadorPorValor == "true" || limitadorPorValor == "false") {
					var propiedad = obj.listaDeCaracteristicas[contador].nombreDeCaracteristica + ": ";
					var estadoDeChecked = obj.listaDeCaracteristicas[contador].valorDeCaracteristica;
					creadorDeInputsTypeCheckbox(propiedad, estadoDeChecked);
				}
			}
		}
	}

	var endpoint = "http://localhost:8080/proyecto/ws/productos/" + idDeArtefacto;
	xhr.open("GET", endpoint, true);
	xhr.send(null);
}