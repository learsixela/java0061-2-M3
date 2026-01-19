
SELECT * FROM java0062.sectores;
SELECT * FROM java0062.paises where nombre LIKE '%hile%'; -- 4 

INSERT INTO java0062.empresas 
(nombre, sector_id, pais_id, sitio_web,id)
values
('Marketpos',1,4, 'marketpos.com', 11 ) 
;

-- usar el AI(AutoIncrement) para al columna id
INSERT INTO java0062.empresas 
(nombre, sector_id, pais_id, sitio_web)
values
('Micropos',1,4, 'http://micropos.example') 
;-- 12+1

INSERT INTO java0062.empresas 
(id, nombre, sector_id, pais_id, sitio_web)
values
(13,'AdminEscolar',1,4, 'escolar.com') 
;

INSERT INTO java0062.empresas 
( nombre, sector_id, pais_id, sitio_web)
values
('EcoAlert',1,4, 'ecoalert.com') 
;
-- insert manual con ID avanzado 2 lugares
INSERT INTO java0062.empresas 
(id, nombre, sector_id, pais_id, sitio_web)
values
(16,'Chalert',1,4, 'chalert.com') 
;

-- insert multiple
INSERT INTO java0062.empresas 
(nombre, sector_id, pais_id, sitio_web)
values
('Chalert',1,4, 'chalert.com'),
('Identpass',1,4,'identpass.com') 
;

-- Auto_INCREMENT ID
SELECT * FROM java0062.empresas;
select max(id) from empresas;

-- Ajustar el proximo valor del AutoIncrement
ALTER TABLE empresas AUTO_INCREMENT = 200;


UPDATE empresas
SET sitio_web = 'https://jadehealth.example'
WHERE id = 10
;

UPDATE empresas
SET sitio_web = 'https://marketpos.example',
sector_id = 10
WHERE id = 11
;

select * from empresas
WHERE pais_id = 4
and sector_id = 10
;

UPDATE empresas
SET sitio_web = 'https://marketpos.example',
sector_id = 10
WHERE pais_id = 4
and sector_id = 1
;

-- delete

delete from empresas
where id = 204
;
/*
 Error Code: 1451. Cannot delete or update a parent row: 
 a foreign key constraint fails (`java0062`.`contactos`, CONSTRAINT `fk_empresa_id` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`))
 
*/

SELECT * FROM java0062.empresas;

delete from empresas ;-- elimina TODOS los registros
 
/* Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column. 
 To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.000 sec
*/
DROP TABLE `java0062`.`empresas`; -- eliminar la tabla y los registros
/*
Error Code: 3730. Cannot drop table 'empresas' referenced by a foreign key constraint 'fk_empresa_id' on table 'contactos'.	0.000 sec
*/
 TRUNCATE `java0062`.`empresas`; -- eliminar registros, reinicia el AUTO_INCREMENT
/*
 Error Code: 1701. Cannot truncate a table referenced in a foreign key constraint (`java0062`.`contactos`, CONSTRAINT `fk_empresa_id`)	0.000 sec
 */