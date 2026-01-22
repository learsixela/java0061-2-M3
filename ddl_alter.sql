-- ALTER TABLE usuario
-- cambio de nombre
ALTER TABLE `java0062`.`usuario` 
RENAME TO  `java0062`.`usuarios` ;


CREATE TABLE interacciones (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    contacto_id   INT NOT NULL,
    fecha         DATE NOT NULL,
    canal_id      INT NOT NULL,
    asunto        VARCHAR(255) NOT NULL,
    resultado     VARCHAR(100) NULL,
    proximo_paso  VARCHAR(150) NULL
    -- ,    usuario_id    INT NOT NULL
);
-- AGREGAR COLUMNA A TABLA
ALTER TABLE interacciones ADD usuario_id  INT NOT NULL;

-- AGREGAR RELACION ENTRE TABLAS
ALTER TABLE `java0062`.`interacciones` 
ADD INDEX `fk_interacciones_usuarios_idx` (`usuario_id` ASC) VISIBLE;
;

ALTER TABLE `java0062`.`interacciones` 
ADD 
CONSTRAINT `fk_interacciones_usuarios`
FOREIGN KEY (`usuario_id`)
REFERENCES `java0062`.`usuarios` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- canal
ALTER TABLE `java0062`.`interacciones` 
ADD INDEX `fk_interacciones_canales_idx` (`canal_id` ASC) VISIBLE;
;

ALTER TABLE `java0062`.`interacciones` 
ADD 
CONSTRAINT `fk_interacciones_canales`
FOREIGN KEY (`canal_id`)
REFERENCES `java0062`.`canales` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- contacto
ALTER TABLE `java0062`.`interacciones` 
ADD INDEX `fk_interacciones_contactos_idx` (`contacto_id` ASC) VISIBLE;
;

ALTER TABLE `java0062`.`interacciones` 
ADD 
CONSTRAINT `fk_interacciones_contactos`
FOREIGN KEY (`contacto_id`)
REFERENCES `java0062`.`contactos` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- CHANGE
ALTER TABLE `java0062`.`interacciones` 
CHANGE COLUMN `resultado` `resultado` VARCHAR(100) NOT NULL ;


SELECT * FROM java0062.contactos;
SELECT * FROM java0062.empresas;
SELECT * FROM java0062.cargos;

SELECT * 
FROM contactos
JOIN empresas  on contactos.empresa_id = empresas.id
JOIN cargos  on contactos.cargo_id = cargos.id
where empresas.id = 1
;


DROP TABLE `java0062`.`empresas`;	
/*Error Code: 3730. Cannot drop table 'empresas' referenced by a foreign key constraint 'fk_empresa_id' on table 'contactos'.	0.000 sec*/
/*Error Code: 1146. Table 'java0062.empresas' doesn't exist*/
 
TRUNCATE `java0062`.`empresas`;
/*Error Code: 1701. Cannot truncate a table referenced in a foreign key constraint (`java0062`.`contactos`, CONSTRAINT `fk_contactos_empresas`)	0.000 sec*/

-- quitar la restriccion
alter table contactos
drop constraint fk_contactos_empresas;

-- agregar la restriccion modificada
alter table contactos
ADD 
CONSTRAINT `fk_contactos_empresas`
FOREIGN KEY (`empresa_id`)
REFERENCES `java0062`.`empresas` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;


CREATE TABLE `empresas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `sector_id` int NOT NULL,
  `pais_id` int NOT NULL,
  `sitio_web` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sector_id_idx` (`sector_id`),
  KEY `fk_pais_id_idx` (`pais_id`),
  CONSTRAINT `fk_pais_id` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`),
  CONSTRAINT `fk_sector_id` FOREIGN KEY (`sector_id`) REFERENCES `sectores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `empresas` VALUES (1,'AlfaSoft',1,1,'https://alfasoft.example'),(2,'BioNova',2,2,'https://bionova.example'),(3,'Café Andino',3,3,'https://cafeandino.example'),(4,'DeltaLog',4,4,'https://deltalog.example'),(5,'EcoSolar',5,5,'https://ecosolar.example'),(6,'FinPulse',6,6,'https://finpulse.example'),(7,'GreenBuild',7,1,'https://greenbuild.example'),(8,'HiperRetail',8,7,'https://hiperretail.example'),(9,'InnovaEdu',9,8,'https://innovaedu.example'),(10,'JadeHealth',10,9,'https://jadehealth.example'),(11,'Marketpos',10,4,'https://marketpos.example');
