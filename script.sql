-- crear una base datos
CREATE SCHEMA java0062 ;
-- eliminar base de datos
DROP DATABASE java0062;

-- creacion de tabla
CREATE TABLE java0062.paises (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE INDEX nombre_UNIQUE (nombre ASC) VISIBLE
);

CREATE TABLE java0062.empresas (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    sector_id INT NOT NULL,
    pais_id INT NOT NULL,
    sitio_web VARCHAR(100) NOT NULL,
    -- restricciones
    PRIMARY KEY (id),
    INDEX fk_sector_id_idx (sector_id ASC) VISIBLE,
    INDEX fk_pais_id_idx (pais_id ASC) VISIBLE,
    CONSTRAINT fk_sector_id FOREIGN KEY (sector_id) REFERENCES java0062.sectores (id),
    CONSTRAINT fk_pais_id   FOREIGN KEY (pais_id)   REFERENCES java0062.paises (id)
);


CREATE TABLE java0062.cargos (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE INDEX nombre_UNIQUE (nombre ASC) VISIBLE
);

CREATE TABLE contactos (
    id int NOT NULL AUTO_INCREMENT,
    nombre varchar(45) NOT NULL,
    apellido varchar(45) NOT NULL,
    email varchar(100) NOT NULL,
    empresa_id int NOT NULL,
    cargo_id int NOT NULL,
    telefono varchar(45) NOT NULL,
    fecha_alta date NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY email_UNIQUE (email),
    KEY fk_empresa_id_idx (empresa_id),
    KEY fk_cargo_id_idx (cargo_id),
    CONSTRAINT fk_cargo_id FOREIGN KEY (cargo_id) REFERENCES cargos (id),
    CONSTRAINT fk_empresa_id FOREIGN KEY (empresa_id) REFERENCES empresas (id)
) ;

-- en la terminal
mysql -u israel -p
-- mostrar las bases de datos
show databases;
-- usar por default la base dato
use java0062;
-- mostrar las tablas de la base datos
show tables;

-- SQL Insercion
INSERT INTO `java0062`.`paises` (`nombre`) VALUES ('España');

INSERT INTO `java0062`.`sectores` (`nombre`) VALUES ('Software');
-- SQL Insercion masiva
INSERT INTO `java0062`.`sectores` (`nombre`) VALUES ('Construcción'),('Retail'),('Educación'),('Salud');


INSERT INTO `java0062`.`empresas` (`nombre`, `sector_id`, `pais_id`, `sitio_web`) 
VALUES ('GreenBuild',7,1,'https://greenbuild.example');
INSERT INTO `java0062`.`empresas` (`nombre`, `sector_id`, `pais_id`, `sitio_web`) 
VALUES ('HiperRetail'8,7,'https://hiperretail.example');
INSERT INTO `java0062`.`empresas` (`nombre`, `sector_id`, `pais_id`, `sitio_web`) 
VALUES ('InnovaEdu'9,8,'https://innovaedu.example');
INSERT INTO `java0062`.`empresas` (`nombre`, `sector_id`, `pais_id`, `sitio_web`) 
VALUES ('JadeHealth'10,9,'');



INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Analista de Atención al cliente');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Analista de Finanzas');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Analista de Marketing');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Analista de Producto');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Coordinador/a de Atención al cliente');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Coordinador/a de Compras');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Coordinador/a de Finanzas');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Coordinador/a de IT');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Coordinador/a de Operaciones');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Coordinador/a de Producto');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Coordinador/a de RR.HH.');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Director/a de Finanzas');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Director/a de Operaciones');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Gerente de Atención al cliente');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Gerente de Dirección');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Gerente de IT');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Gerente de Operaciones');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Gerente de RR.HH.');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Gerente de Ventas');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Jefe de Atención al cliente');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Jefe de Finanzas');
INSERT INTO `java0062`.`cargos` (`nombre`) VALUES ('Jefe de Producto');

INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Lucía','Rodríguez','lucía.rodríguez@alfasoft.example',1,21,'+34 639958838','2025-08-05');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Andrés','Rodríguez','andrés.rodríguez@innovaedu.example',9,4,'+34 666629388','2025-07-09');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Ana','Rodríguez','ana.rodríguez@deltalog.example',4,14,'+34 690801586','2025-07-07');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Valeria','Martínez','valeria.martínez@innovaedu.example',9,12,'+34 670291817','2025-11-28');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Sofía','Herrera','sofía.herrera@alfasoft.example',1,15,'+34 655667651','2025-09-10');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('María','Martínez','maría.martínez@finpulse.example',6,3,'+34 660992979','2025-07-25');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Jorge','Castro','jorge.castro@finpulse.example',6,11,'+34 615831819','2025-10-26');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Valeria','Rodríguez','valeria.rodríguez@greenbuild.example',7,1,'+34 649349722','2025-12-08');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Pablo','Mendoza','pablo.mendoza@finpulse.example',6,7,'+34 619335534','2025-07-12');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Lucía','Martínez','lucía.martínez@ecosolar.example',5,2,'+34 623556182','2025-10-06');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Sofía','Díaz','sofía.díaz@finpulse.example',6,16,'+34 657683626','2025-08-23');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Lucía','Sánchez','lucía.sánchez@bionova.example',2,9,'+34 681691040','2025-09-01');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('María','Díaz','maría.díaz@greenbuild.example',7,20,'+34 639476249','2025-12-23');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Jorge','Castro','jorge.castro@alfasoft.example',1,19,'+34 652339391','2025-10-11');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Sofía','Rodríguez','sofía.rodríguez@deltalog.example',4,8,'+34 638538251','2025-12-15');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Diego','Gómez','diego.gómez@hiperretail.example',8,18,'+34 628740864','2025-09-02');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Andrés','Vargas','andrés.vargas@innovaedu.example',9,22,'+34 667503414','2025-11-27');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Elena','Pérez','elena.pérez@deltalog.example',4,14,'+34 676238574','2025-07-24');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Camila','García','camila.garcía@bionova.example',2,17,'+34 666661351','2025-11-30');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Luis','Gómez','luis.gómez@greenbuild.example',7,6,'+34 681016525','2025-09-03');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Valeria','Castro','valeria.castro@alfasoft.example',1,1,'+34 645812670','2025-12-12');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Jorge','Rodríguez','jorge.rodríguez@ecosolar.example',5,13,'+34 670897765','2025-07-01');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Andrés','Mendoza','andrés.mendoza@ecosolar.example',5,9,'+34 678139880','2025-07-28');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Mateo','Navarro','mateo.navarro@ecosolar.example',5,10,'+34 636697396','2025-08-09');
INSERT INTO `java0062`.`contactos` (`nombre`, `apellido`, `email`, `empresa_id`, `cargo_id`, `telefono`, `fecha_alta`) VALUES ('Jorge','Herrera','jorge.herrera@caféandino.example',3,5,'+34 610076758','2025-12-01');


CREATE TABLE transacciones(
	id int auto_increment primary key,
    remitente_usuario_id int   not null,
    destinatario_usuario_id int not null,
    importe int DEFAULT 0,
    fecha_transaccion datetime not null DEFAULT CURRENT_TIMESTAMP,
    -- restricciones
    constraint fk_remitente_usuario_id 
    foreign key (remitente_usuario_id) references usuario(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    
	constraint fk_destinatario_id
    foreign key (destinatario_usuario_id) references usuario(id)
	ON UPDATE CASCADE
    ON DELETE CASCADE
);

ALTER TABLE `java0062`.`usuario` 
ADD COLUMN `saldo` INT NOT NULL DEFAULT 0 AFTER `fecha_creacion`;