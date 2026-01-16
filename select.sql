SELECT * 
FROM java0062.sectores;

SELECT id, nombre
FROM java0062.sectores;

SELECT nombre, id
FROM java0062.sectores;

SELECT nombre
FROM java0062.sectores;

SELECT nombre
FROM java0062.sectores
where id  = 11;

SELECT id, nombre
FROM java0062.sectores
where id >= 10;

SELECT id, nombre
FROM java0062.sectores
where id in (1,4,7,11);

SELECT id, nombre
FROM java0062.sectores
where id in (1,4,7,12)
order by nombre desc;-- id desc; -- asc;

SELECT id, nombre
FROM java0062.sectores
where nombre = 'energia' 
;

-- LIKE (% y _)
SELECT id, nombre -- comentario 
FROM java0062.sectores 
where nombre LIKE 'a%s';-- 'ed%' ; -- '%s';

SELECT id as posicion, lower(nombre) as NombreMayuscula
FROM sectores as sec
where sec.nombre LIKE '%w%'; 

SELECT * FROM sectores
WHERE id BETWEEN 12 AND 16;


SELECT * 
FROM java0062.sectores
where id = 13
;

-- DELETE FROM `java0062`.`sectores` WHERE (`id` = '11');


SELECT count(id) as total_sectores
FROM java0062.sectores
;