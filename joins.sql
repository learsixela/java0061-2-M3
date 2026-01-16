SELECT * FROM java0062.contactos;
SELECT * FROM java0062.sectores;
SELECT * FROM java0062.empresas;
SELECT * FROM java0062.cargos;
SELECT * FROM java0062.paises;

-- Group by (dato que se repite)

SELECT empresa_id, count(*) as total_contactos
FROM contactos cont
group by cont.empresa_id
order by total_contactos desc
;

-- JOIN
SELECT * 
FROM contactos a
inner join empresas b
on a.empresa_id = b.id
;

SELECT a.nombre , a.apellido, a.email, b.nombre as nombre_empresa, b.sitio_web-- a.id, b.id as empresa_id
FROM contactos a
inner join empresas b
on a.empresa_id = b.id
;

SELECT b.nombre as nombre_empresa, b.id,  count(*) as total_empresa
FROM contactos a
inner join empresas b
on a.empresa_id = b.id
group by b.id
order by total_empresa desc
;
-- only_full_group_by
-- LEFT
SELECT * 
FROM contactos a
LEFT JOIN empresas b
on a.empresa_id = b.id
;
-- nada de la tabla A (contacto) esta sin relacionarse
SELECT * 
FROM contactos a
LEFT JOIN empresas b
on a.empresa_id = b.id
where b.id IS NULL
;

-- RIGHT
SELECT * 
FROM contactos a
Right JOIN empresas b
on a.empresa_id = b.id
;

SELECT * 
FROM contactos a
Right JOIN empresas b
on a.empresa_id = b.id
where a.empresa_id IS NULL
;

-- Obtener, Contacto, empresa, pais, sector, cargos