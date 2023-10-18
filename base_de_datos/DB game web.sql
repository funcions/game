-- base de datos para PHP MY ADMI
CREATE DATABASE game_web;
USE game_web;

CREATE TABLE `usuarios` (
  `id_usuarios` int AUTO_INCREMENT PRIMARY KEY,
  `nombres` varchar(255),
  `apellidos` varchar(255),
  `email` varchar(255),
  `clave` varchar(255)
);

CREATE TABLE `juego` (
  `id_juego` int AUTO_INCREMENT PRIMARY KEY,
  `nombre` varchar(255)
);

CREATE TABLE `puntuje` (
  `id_puntaje` int AUTO_INCREMENT PRIMARY KEY,
  `id_juego` int,
  `id_usuarios` int,
  `puntos` int
);

-- Inserta hasta 6 filas de datos aleatorios en la tabla usuarios
INSERT INTO usuarios (nombres, apellidos, email, clave) VALUES
('John', 'Doe', 'johndoe@example.com', 'secreto123'),
('Jane', 'Smith', 'janesmith@example.com', 'contrasena123'),
('Alice', 'Johnson', 'alice@example.com', 'mypassword'),
('Bob', 'Brown', 'bob@example.com', 'password123'),
('Eva', 'Williams', 'eva@example.com', 'eva123'),
('Carlos', 'Gonzalez', 'carlos@example.com', 'clave-segura');

-- Puedes agregar o eliminar filas según sea necesario

ALTER TABLE `puntuje` ADD FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`);

ALTER TABLE `puntuje` ADD FOREIGN KEY (`id_juego`) REFERENCES `juego` (`id_juego`);
