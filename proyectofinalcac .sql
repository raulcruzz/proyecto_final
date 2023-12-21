-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2023 a las 00:14:38
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinalcac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `tematica` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id`, `nombre`, `apellido`, `tematica`) VALUES
(1, 'Bill', 'Gates', 'La fortuna de este precoz programador, que no llegó a terminar sus estudios y que a los 31 años era ya multimillonario, procede del éxito arrollador de su sistema operativo'),
(4, 'Charly ', 'García', 'Siendo un adolescente, García fundó la banda de folk rock Sui Generis junto a su compañero de clase Nito Mestre a principios de los años 70. Juntos, publicaron tres exitosos álbumes de estudio, cuyas canciones se convirtieron en himnos para generaciones de argentinos, y se separaron en 1975 con un concierto en el Luna Park. García pasó a formar parte de los supergrupos PorSuiGieco y La Máquina de Hacer Pájaros, con quienes publicó álbumes claves para instaurar el rock progresivo en la escena musical latinoamericana. Luego de separarse de ambos proyectos, García se embarcó a Brasil, volviendo a Argentina poco después para fundar el supergrupo Serú Girán a fines de los 70, convertido en una de las bandas más importantes de la historia de la música argentina por sus desafiantes canciones hacia la dictadura militar que acechaba al país en esa época. El grupo se disolvió en 1982, tras la publicación de cuatro álbumes de estudio y un último concierto en el estadio Obras Sanitarias.'),
(7, 'Martin', 'Fierro', 'mi vida'),
(17, 'Fito', 'Paez', 'las mariposas multicolor'),
(21, 'Rogers ', 'Federer', 'Ha sido ganador de 20 torneos de Grand Slam, cifra que lo ubica en tercer lugar del palmarés, sólo superado por el serbio Novak Djokovic (24) y el español Rafael Nadal (22). Consiguió ganar el Abierto de Australia en seis ocasiones, el Torneo de Roland Garros en una ocasión, el Campeonato de Wimbledon en ocho ocasiones (siendo el tenista que más veces lo ha conseguido en toda la historia) y el Abierto de Estados Unidos en cinco ocasiones. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `tipo_ticket` varchar(50) DEFAULT NULL,
  `total_facturado` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id`, `nombre`, `apellido`, `mail`, `cantidad`, `tipo_ticket`, `total_facturado`) VALUES
(2, 'Juan', 'Perez', 'jperez@gmail.com', 5, 'Trainee', 500),
(10, 'juan', 'Lopez', 'jlopez@hormail.com', 10, 'General', 2000),
(12, 'Lionel', 'Messi', 'lmess@gmail.com', 4, 'Trainee', 400),
(18, 'Daniel', 'Ayala', 'dayala@yahoo.com', 2, 'General', 400),
(22, 'John', 'Lennon', 'jlenon@gmail.com', 5, 'General', 1000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
