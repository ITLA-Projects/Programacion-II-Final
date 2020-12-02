-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2020 a las 03:58:44
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sitiosturisticos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactforms`
--

CREATE TABLE `contactforms` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `siteId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `siteId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `paragraph` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sites`
--

INSERT INTO `sites` (`id`, `title`, `paragraph`, `image`) VALUES
(1, 'Zona Colonial', 'Es justo el lugar donde empezó la historia del Nuevo Mundo. Se encuentra ubicada del lado oriental de la desembocadura del río Ozama. Fue fundada por Bartolomé Colón el 5 de agosto de 1496 y trasladada luego al lado occidental en 1502 por Nicolás de Ovando. Es uno de los lugares más visitados por los turistas.', 'imagenes/zonacolonia.jpeg'),
(2, 'Isla Saona', 'Es la más grande isla que forma parte de nuestra República Dominicana. Pertenece a la provincia de La Romana y el Parque Nacional del Este. Su belleza natural, hermosas playas y sus características de semidespoblada, hacen de la isla un gran atractivo turístico.', 'imagenes/islasaona.jpg'),
(3, 'Cayo Levantado', 'Este se asocia a playas paradisíacas de altos cocoteros, vegetación exuberante, y playas cristalinas llena de abundante vida marina. La isla es pequeña, de tan solo un kilometro de extensión, pero con grandes tesoros naturales.', 'imagenes/cayolevantado.jpeg'),
(4, 'Dunas de Baní', 'El maravilloso paisaje de Las Dunas de Baní es un tesoro nacional de nuestra isla, gracias a sus altas montañas de arena blanca fina y el sol tan cálido como en pocos lugares del país. Es considerada como uno de los espacios naturales más hermosos de la isla.', 'imagenes/dunas.jpeg'),
(5, 'Bahía de las Águilas', 'Esta es conocida por la abundante presencia de los preciosos corales que se pueden encontar en aguas limpias, las estrellas de mar y las praderas marinas, por lo que el submarinismo en la zona puede llegar a ser una experiencia inolvidable.', 'imagenes/bahiaa.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contactforms_siteId` (`siteId`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_review_siteId` (`siteId`);

--
-- Indices de la tabla `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contactforms`
--
ALTER TABLE `contactforms`
  ADD CONSTRAINT `fk_contactforms_siteId` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`);

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_review_siteId` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
