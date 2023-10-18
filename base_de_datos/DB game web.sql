--base de datos para PHP MY ADMI
CREATE DATABASE game_web;
USE game_web;

CREATE TABLE `usuarios` (
  `id_usuarios` int PRIMARY KEY,
  `nombres` varchar(255),
  `apellidos` varchar(255),
  `email` varchar(255),
  `clave` varchar(255)
);

CREATE TABLE `juego` (
  `id_juego` int PRIMARY KEY,
  `nombre` varchar(255)
);

CREATE TABLE `puntuje` (
  `id_puntaje` int PRIMARY KEY,
  `id_juego` int,
  `id_usuarios` int,
  `puntos` int
);

ALTER TABLE `puntuje` ADD FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`);

ALTER TABLE `puntuje` ADD FOREIGN KEY (`id_juego`) REFERENCES `juego` (`id_juego`);
