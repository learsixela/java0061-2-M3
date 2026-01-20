CREATE TABLE `java0062`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(150) NOT NULL,
  `rol` VARCHAR(45) NULL DEFAULT 'VISITANTE',
  `fecha_creacion` DATETIME NOT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `java0062`.`canales` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

  INSERT INTO `java0062`.`usuario` (`nombre`, `email`, `password`, `fecha_creacion`) 
VALUES ('ana', 'ana@ejemplo.com', '123456', '2026-01-16');

INSERT INTO `java0062`.`usuario` (`nombre`, `email`, `password`, `fecha_creacion`) 
VALUES ('carlos', 'carlos@ejemplo.com', '123456', '2026-01-16 11:59:00');

INSERT INTO `java0062`.`usuario` (`nombre`, `email`, `password`, `fecha_creacion`) 
VALUES ('Luis', 'luis@ejemplo.com', '123456', '2026-01-16 12:03:00'),
('María', 'maria@ejemplo.com', '123456', '2026-01-16 12:04:00'),
('Sofía', 'sofia@ejemplo.com', '123456', NOW())
;

/** nombre tabla : CANALES 
Email	1
Llamada	2
Otro	3
Reunión	4
WhatsApp 5*/

INSERT INTO `java0062`.`canales` (`nombre`)
values ('Email'),('Llamada'),('Otro'),('Reunión'),('WhatsApp');

/*
nombre tabla		interacciones	
			
nombre excel	    nombre base datos	tipo de dato	
InteraccionID (PK)	id	                int	
ContactoID (FK)	    contacto_id	        int	FK contactos
Fecha	            fecha	            date	
Canal	            canal_id	        int	FK canales
Asunto	            asunto	            varchar	
Resultado	        resultado	        varchar	
Próximo paso	    proximo_paso	    varchar	
Responsable	        usuario_id	        int	FK usuario
*/

