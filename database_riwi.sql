/*Usamos la base de datos*/
USE Riwi;

/*Creamos la tabla tipos_de_documentos*/
create table tipos_de_documentos(
	id tinyint auto_increment primary key,
	nombre varchar(100),
	abreviatura varchar(10)
);

/*Creamos la tabla indicativos interacional*/
create table indicativos_internacional(
	id smallint auto_increment primary key,
	codigo varchar(4),
    pais varchar(100)
);

/*Creamos la tabla clanes*/
create table clanes(
	id smallint auto_increment primary key,
    nombre varchar(50)
);

/*Creamos la tabla cohortes*/
create table cohortes(
	id smallint auto_increment primary key,
	nombre varchar(50)
);

/*POST - Poblamos la tabla tipos de registros*/
INSERT INTO tipos_de_documentos (nombre, abreviatura) VALUES
	('Cédula de Ciudadanía', 'CC'),
	('Tarjeta de Identidad', 'TI'),
	('Registro Civil', 'RC'),
	('Cédula de Extranjería', 'CE'),
	('Pasaporte', 'PA'),
	('Número de Identificación Tributaria', 'NIT'),
	('Permiso Especial de Permanencia', 'PEP'),
	('Permiso por Protección Temporal', 'PPT'),
	('Documento Nacional de Identidad', 'DNI'),
	('Carné Diplomático', 'CD'),
	('Adulto sin Identificar', 'AS'),
	('Menor sin Identificar', 'MS'); 

/*POST - Poblamos la tabla cohortes de registros*/
INSERT INTO indicativos_internacional (codigo, pais) 
VALUES 
	('+1', 'Estados Unidos'),
    ('+54', 'Argentina'),
    ('+591', 'Bolivia'),
    ('+55', 'Brasil'),
    ('+56', 'Chile'),
    ('+57', 'Colombia'),
    ('+506', 'Costa Rica'),
    ('+53', 'Cuba'),
    ('+593', 'Ecuador'),
    ('+503', 'El Salvador'),
    ('+502', 'Guatemala'),
    ('+509', 'Haití'),
    ('+504', 'Honduras'),
    ('+52', 'México'),
    ('+505', 'Nicaragua'),
    ('+507', 'Panamá'),
    ('+595', 'Paraguay'),
    ('+51', 'Perú'),
    ('+1', 'República Dominicana'),
    ('+598', 'Uruguay'),
    ('+58', 'Venezuela');

INSERT INTO clanes (nombre)
VALUES 
		('Magdalena'),
        ('Esthercita'),
        ('Micaela'),
        ('Cayena'),
		('Malecón'),
        ('Cortissoz');
        
/*POST - Poblamos la tabla cohortes de registros*/
INSERT INTO cohortes (nombre) VALUES
	('1'),
	('2'),
	('3'),
	('4'),
	('5'),
	('6'),
	('7'),
	('8'); 

create table coders(
	id int auto_increment primary key,
    nombre_completo varchar(255),
    correo varchar(255) UNIQUE,
    id_tipo_de_documento tinyint,
    numero_de_documento varchar(20),
    id_indicativo_internacional smallint,
    numero_celular varchar(15),
    telefono_fijo varchar(15) null,
    id_clan smallint,
    id_cohorte smallint,
    jornada ENUM('am','pm','intermedio'),
    GENERO ENUM('F', 'M', 'Prefiero no decirlo'),
    fecha_de_nacimiento date,
    foreign key(id_tipo_de_documento)
		references tipos_de_documentos(id)
        on delete restrict
        on update cascade,
	foreign key(id_indicativo_internacional)
		references indicativos_internacional(id)
        on delete restrict
        on update cascade,
	foreign key(id_clan)
		references clanes(id)
        on delete restrict
        on update cascade,
	foreign key(id_cohorte)
		references cohortes(id)
        on delete restrict
        on update cascade
);

INSERT INTO coders (
    nombre_completo, 
    correo, 
    id_tipo_de_documento, 
    numero_de_documento, 
    id_indicativo_internacional, 
    numero_celular, 
    telefono_fijo, 
    id_clan, 
    id_cohorte, 
    jornada, 
    genero, 
    fecha_de_nacimiento
) 
VALUES 
    (
        'Sofía Martínez', 
        'sofia.martinez@riwi.io', 
        9,  -- DNI (Perú)
        '70554433', 
        18, -- +51 (Perú)
        '998877665', 
        '014455667', 
        2,  -- Clan Esthercita
        1,  -- Cohorte 1
        'am', 
        'F', 
        '1998-03-12'
    ),
    (
        'Diego Fernández', 
        'diego.fernandez@riwi.io', 
        1,  -- CC (Colombia)
        '1045678901', 
        6,  -- +57 (Colombia)
        '3156789012', 
        NULL, 
        4,  -- Clan Cayena
        6,  -- Cohorte 6
        'pm', 
        'M', 
        '2002-07-25'
    ),
    (
        'Valentina Silva', 
        'valentina.silva@riwi.io', 
        4,  -- CE (Cédula de Extranjería)
        'CE123456789', 
        4,  -- +55 (Brasil)
        '11987654321', 
        NULL, 
        5,  -- Clan Malecón
        3,  -- Cohorte 3
        'intermedio', 
        'F', 
        '1997-11-30'
    ),
    (
        'Mateo González', 
        'mateo.gonzalez@riwi.io', 
        2,  -- TI (Menor de edad)
        '1100223344', 
        15, -- +505 (Nicaragua)
        '88997766', 
        '22334455', 
        1,  -- Clan Magdalena
        7,  -- Cohorte 7
        'am', 
        'M', 
        '2005-01-18'
    ),
    (
        'Isabella Torres', 
        'isabella.torres@riwi.io', 
        5,  -- Pasaporte
        'P12345678', 
        2,  -- +54 (Argentina)
        '1155667788', 
        '01144556677', 
        3,  -- Clan Micaela
        2,  -- Cohorte 2
        'pm', 
        'Prefiero no decirlo', 
        '1996-09-05'
	);

select * from coders;
select * from tipos_de_documentos;
select * from indicativos_internacional;
select * from clanes;
select * from cohortes;

/*
Elimina la tabla de nombre name
	DROP TABLE name;
Elimina el registro con el id 1 de la tabla name
delete from name where id=1;
*/

/*
El deshabilita el modo seguro
	SET SQL_SAFE_UPDATES = 0;
El habilita el modo seguro
	SET SQL_SAFE_UPDATES = 1;
*/