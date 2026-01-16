SELECT * FROM java0062.contactos;
SELECT * FROM java0062.empresas;
SELECT * FROM java0062.cargos;
SELECT * FROM java0062.paises;

-- seleccionar pais por nombre

SELECT p.id
FROM paises p
where p.nombre = 'Peru';-- 6

SELECT * -- e.id 
FROM empresas e
where e.pais_id = 6
;

SELECT * -- e.id 
FROM empresas e
where e.pais_id = (
		SELECT p.id
		FROM paises p
		where p.nombre = 'Peru'
	)
; -- empresa.id = 6

-- 
SELECT * 
FROM contactos
where empresa_id = 6
;

SELECT c.nombre, c.apellido, c.email, c.telefono
FROM contactos c
where c.empresa_id IN (
	SELECT e.id 
	FROM empresas e
	where e.pais_id = (
			SELECT p.id
			FROM paises p
			where p.nombre = 'España'
		)
)
;
-- Todos los contactos que son "Gerentes"
SELECT * FROM java0062.contactos;
SELECT * FROM java0062.cargos;

SELECT * 
FROM cargos c
where c.nombre LIKE 'Gerente%'
;

SELECT * 
FROM java0062.contactos cont
where cont.cargo_id in (14,15,16,17,18,19)
;

SELECT * 
FROM java0062.contactos cont
where cont.cargo_id in (
	SELECT c.id 
	FROM cargos c
	where c.nombre LIKE 'Gerente%'
)
;

-- Contactos que pertenecen a un sector ej(Educación) 
-- Contactos de empresas sin sitio web






