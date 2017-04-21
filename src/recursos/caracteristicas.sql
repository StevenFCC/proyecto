SELECT * FROM productosventas.caracteristicas;


select * from electrodomesticos
join caracteristicas on electrodomesticos.caracteristica_id = caracteristicas.id
where electrodomesticos.artefacto_id = 1;