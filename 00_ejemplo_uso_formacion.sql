/* CREACION DE LA BASE DE DATOS*/
CREATE DATABASE practicaDQL;
USE practicaDQL;


/* creacion de la tabla*/
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(100),
    apellidos VARCHAR(100),
    edad INT,
    correo VARCHAR(150),
    pais VARCHAR(100),
    musica VARCHAR(100),
    genero CHAR(1),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


/*insercion de los datos*/
INSERT INTO users (nombres, apellidos, edad, correo, pais, musica, genero) VALUES
('Carlos', 'Perez', 15, 'carlos@gmail.com', 'colombia', 'reggaeton', 'M'),
('Ana', 'Bermudez', 25, 'ana.b@gmail.com', 'colombia', 'rock', 'F'),
('Andres', 'Ayala', 30, 'andres_sh@gmail.com', 'ecuador', 'metal', 'M'),
('Maria', 'Gomez', 17, 'maria@hotmail.com', 'venezuela', 'merengue', 'F'),
('Mario', 'Lopez', 22, 'riwimario@gmail.com', 'colombia', 'vallenato', 'M'),
('Valeria', 'Rios', 15, NULL, 'canada', 'rock', 'F'),
('Paul', 'Bautista', 40, 'paul_sh@yahoo.com', 'ecuador', 'salsa', 'M'),
('Laura', 'Arias', 18, 'riwilaura@gmail.com', 'venezuela', 'reggaeton', 'F'),
('Santiago', 'Ruiz', 15, 'santiago@gmail.com', 'colombia', 'metal', 'M'),
('Camila', 'Vargas', 28, 'camila@gmail.com', 'colombia', 'vallenato', 'F'),
('Aaron', 'Benitez', 20, 'aaron@gmail.com', 'canada', 'rock', 'M'),
('Alberto', 'Alvarez', 35, 'alberto.sh@gmail.com', 'colombia', 'merengue', 'M'),
('Daniel', 'Torres', 14, NULL, 'ecuador', 'reggaeton', 'M'),
('Samuel', 'Mendoza', 21, 'samuel_sh@gmail.com', 'venezuela', 'metal', 'M'),
('Daniela', 'Castro', 15, 'daniela@hotmail.com', 'colombia', 'pop', 'F'),
('Alejandro', 'Blanco', 25, 'alejandro@gmail.com', 'canada', 'rock', 'M'),
('Andrea', 'Acosta', 19, 'andrea@gmail.com', 'colombia', 'vallenato', 'F'),
('Javier', 'Silva', 31, 'riwijavier@hotmail.com', 'ecuador', 'merengue', 'M'),
('Sara', 'Mejia', 24, NULL, 'venezuela', 'reggaeton', 'F'),
('Mateo', 'Giraldo', 16, 'mateosh@gmail.com', 'colombia', 'rock', 'M'),
('Arturo', 'Bustos', 29, 'arturo_b@gmail.com', 'colombia', 'metal', 'M'),
('David', 'Pineda', 45, 'david@gmail.com', 'canada', 'vallenato', 'M'),
('Tatiana', 'Rojas', 15, 'tatiana@gmail.com', 'ecuador', 'merengue', 'F'),
('Armando', 'Arango', 22, 'armando@gmail.com', 'venezuela', 'rock', 'M'),
('Fabiola', 'Quintero', 27, 'fabiola@hotmail.com', 'colombia', 'reggaeton', 'F');

SELECT nombres, correo, pais FROM users;
SELECT pais, COUNT(*) 'Cantidad' FROM users GROUP BY pais;
SELECT * FROM users WHERE edad >= 18 ORDER BY edad DESC;
SELECT * FROM users WHERE correo LIKE '%riwi%';

SELECT * FROM users WHERE nombres LIKE '_a%';

SELECT * FROM users WHERE nombres LIKE 'a%' AND apellidos LIKE 'a%'  AND correo LIKE 'a%';

SELECT * FROM users 
WHERE genero='M' 
AND pais = 'colombia';

SELECT * FROM users WHERE edad >= 18 OR musica = 'reggaeton' ORDER BY edad;
SELECT * FROM users WHERE (pais not in ('colombia','ecuador', 'venezuela'));
SELECT * FROM users ORDER BY edad DESC limit 10 OFFSET 2;
SELECT * FROM users WHERE correo is null;
