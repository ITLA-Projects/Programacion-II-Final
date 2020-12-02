-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2020 a las 15:29:40
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
  `description` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `site` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `site` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`id`, `author`, `comment`, `image`, `site`) VALUES
(1, 'Francisco Martos', 'Fui hace 2 meses y me gusto mucho conocer sobre la historia de la zona colonial, lo vieja que es y como muchas de esas cosas todavia se conservan', NULL, 1),
(4, 'Antonio Martinez', 'Está isla es increíble de bella, los colores, la arrebato blanca, las estrellas de mar y el entretenimiento en el Catamaran, es un paseo que no puede faltar, hay varias playas a la salida que puedes ir depende la excursión, incluso hay una playa privada al final que eso solo para excursiones privadas. Sin duda ir repetir', NULL, 2),
(2, 'Yasmin Duque', 'me gusto ir, parece un desierto', NULL, 4),
(5, 'Carlos Cedeño', 'Lo mejor de ir a la Isla Saona es la piscina natural antes de llegar al lugar y el Catamarán de regreso a Bayahibe.\r\n\r\nIsla Saona no me encantó, muchas piedras en la orilla de la playa, olas fuertes, poco espacio para sentarte, demasiadas personas para el lugar, la atención deja mucho que desear y la comida realmente mala.', NULL, 2),
(6, 'Octavio R', 'Es una isla hermosa con poco más de 2 mil habitantes. Viven del turismo. Posee hermosas playas de arena Blanca.', NULL, 2),
(7, 'Stecabt', 'Isla paradisíaca!! Con esto está todo dicho, maravillosa,unas aguas increíbles, una magia especial, parar por el camino a ver las estrellas de mar es muy chulo!! Ojalá podamos repetir pronto!!', NULL, 2),
(8, 'Grand Sal', 'Santo Domingo fue una de las primeras ciudades españolas en el nuevo mundo y recorrer su centro histórico es muy bueno. Las calles de las Damas, El Conde, la plaza de España, etc. recorrer sus calles estrechas, las iglesias, la antigua catedral, en la noche sus boliches con música al vivo. Muy recomendado.', NULL, 1),
(9, 'Lopez', 'La Zona Colonial es muy importante en Santo Domingo, porque es la primera ciudad del nuevo mundo. Está bien caminar y conocer sus calles, pero la Zona Colonial tiene su encanto de noche.', NULL, 1),
(10, 'Raimundo Navarrete', 'Primero debes recorrer Calle Las Damas y terminar en Plaza de España, luego caminar por Calle El Conde y pasar por Calle Hostos y visitar el Hospital San Nicolás de Bari.\r\nContinuar por Calle el Conde y visitar Plaza Independencia.\r\nPor último, pasar a comer por alguno de los restaurantes y realizar compras.\r\nHay muchos museos para visitar, como el Museo de Chocolate, Museo de las Casas Reales y el Alcázar de Colón.', NULL, 1),
(11, 'Dorca de Leon', 'Santo Domingo, primera cuidad de nuevo mundo, desde aquí empieza la colonización del nuevo mundo, ser el primero de la historia es algo que nunca perderás esa dicha', NULL, 1),
(12, 'Helena D', 'Cuando se habla de República Dominicana se piensa solo en playas pero esta hermosa isla tiene muchos tesoros naturales por enseñar, las llamadas Dunas de Baní son uno de ellos. Una o varios dunas, no lo se porque no soy experta en ello, de un color y textura especial en donde la experiencia de caminar puede ser agotadora por la profundidad y el calor pero con un paisaje hermoso pues a uno de sus lados están las salinas y de otro el hermoso mar azul. Es un parque por lo que hay que pagar una suma de dinero por cada adulto que ingresa. Las personas que cuidan el parque son muy amables y en la caseta se pueden alquilar unas tablas con las que se puede unos deslizar por las dunas.', NULL, 4),
(13, 'Edmun Martinez', 'No se deberían llamar dunas. Es solo una duna, pero vale la pena la experiencia. Es un lugar poco visitado, lo cual facilita el acceso. Importante llevar zapato cerrado.. Increíble que cobren el ingreso.', NULL, 4),
(14, 'Carlos R.', 'Hermoso lugar natural, no se percibe su belleza desde la parte exterior, debes ingresar y conocer los diferentes senderos.\r\nPaisaje espectacular.', NULL, 4),
(15, 'CynthiaGV', 'No me gustó el lugar. Hicimos muchos kilómetros esperando algo especial, y nos decepcionó bastante. \r\nNo volvería.', NULL, 4),
(16, 'Jasalda', 'Nos gusto... un paisaje diferente en RD, paisaje desértico dunas de arena gris muy blanda, se recomienda protección contra el sol y el viento cargado de arena... llevar zapatos cerrados para facilitar la caminada (600 mts) hasta la playa de arena negra... en el paisaje se resaltan los molinos de viento generadores de energía, costo 100 pesos.', NULL, 4),
(17, 'Manuel V', 'solitaria, es mejor ir en bote, ideal para escapada en pareja, familia o simplemente conocer, azul turquesa, hermosa experiencia.', NULL, 5),
(18, 'TrailBlazer', 'Esa región es una de las hermosas que mis ojos han visto, un mar de color azul celeste, una zona con poca actividad turística, una experiencia maravillosa', NULL, 5),
(19, 'Jordi G', 'Paraíso en la tierra, mucho viento aunque se perdona cualquier cosa al estar en esta playa. Muy muy poca gente...', NULL, 5),
(20, 'Gonzalo del Águila', 'Aguas cristalinas, arenas blancas, mar en dos tonos, algo maravilloso muy cerca del paraíso. Recomiendo visitar antes de que se lo carguen.\r\nEn contra, suciedad: chapas, botellas, vasos, una pena', NULL, 5),
(21, 'Juan Carlos V', 'Es una hermosa playa pero voy a dedicarme en esta opinión a dar algunos tips que tal vez sean utiles.\r\nEn automóvil normal se puede llegar hasta la entrada al parque llamada cueva de las Águilas.\r\nSi se quiere llegar a la bahía por tierra se necesita una 4x4 fundamentalmente por una pendiente muy acenruada.\r\nPara llegar en bote hay 2 opciones, a saber:\r\nContratando en el restaurante pagando el bote $ 2700 hasta la bahía o 3200 una playa algo más lejana. También hay opciones con comida.\r\n\r\nContratando a los boteros que están después que uno paga la entrada al parque de $ 150 por persona. Cobran $ 2000 el bote.\r\n\r\nEn ambas se acuerda la hora de vuelta en que lo pasan a buscar.\r\n\r\nHay algunos arbusto que sirven de sombra. Sugiero llevar comida y bebida si se desea almorzar.\r\n\r\nSe puede conseguir algo de bebida en un puesto al lado del mirador y también suele pasar un vendedor de helados.\r\n\r\nSi está en carro sugiero para unos minutos en la playa de cabo rojo donde encontrará una especie de cementerio de caracoles.\r\n\r\nA la salida en el destacamento militar pare a observar los flamencos en el lago.\r\n\r\nSi vuelve en automóvil hacia Azúa /paraiso no deje de comprar el dulce de leche sola en en el río Ocoa parada Los Pilones', NULL, 5),
(22, 'Sandra lara', 'En la isla de Cayo Levantado, de apenas 1,5 km de longitud, se encuentra un hotel paradisíaco donde los días pasan como horas. Una tierra cálida y maravillosa, con playas únicas en el mundo, y una gente abierta y acogedora.', NULL, 3),
(23, 'Carlos Bolivar', 'Si el paraíso en la tierra existe, este es el lugar, esta es la isla. De cine, de película y por eso la llaman Isla Bacardí, ya que es la isla donde se rodaron los seductores anuncios de este Ron. Repetiremos, seguro.', NULL, 3),
(24, 'Sergio G.', 'Es una playa de esta maravillosa isla, en el norte de República Dominicana. Aguas cristalinas, arena blanca y fina, agua cálida.', NULL, 3),
(25, 'Tomorrow Panem', 'Es un increíble lugar cerca de las orillas de semana', NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `paragraph` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sites`
--

INSERT INTO `sites` (`id`, `image`, `paragraph`, `title`) VALUES
(1, 'imagenes/zonacolonia.jpeg', 'Es justo el lugar donde empezó la historia del Nuevo Mundo. Se encuentra ubicada del lado oriental de la desembocadura del río Ozama. Fue fundada por Bartolomé Colón el 5 de agosto de 1496 y trasladada luego al lado occidental en 1502 por Nicolás de Ovando. Es uno de los lugares más visitados por los turistas.', 'Zona Colonial'),
(2, 'imagenes/islasaona.jpg', 'Es la más grande isla que forma parte de nuestra República Dominicana. Pertenece a la provincia de La Romana y el Parque Nacional del Este. Su belleza natural, hermosas playas y sus características de semidespoblada, hacen de la isla un gran atractivo turístico.', 'Isla Saona'),
(3, 'imagenes/cayolevantado.jpeg', 'Este se asocia a playas paradisíacas de altos cocoteros, vegetación exuberante, y playas cristalinas llena de abundante vida marina. La isla es pequeña, de tan solo un kilometro de extensión, pero con grandes tesoros naturales.', 'Cayo Levantado'),
(4, 'imagenes/dunas.jpeg', 'El maravilloso paisaje de Las Dunas de Baní es un tesoro nacional de nuestra isla, gracias a sus altas montañas de arena blanca fina y el sol tan cálido como en pocos lugares del país. Es considerada como uno de los espacios naturales más hermosos de la isla.', 'Dunas de Baní'),
(5, 'imagenes/bahiaa.jpeg', 'Esta es conocida por la abundante presencia de los preciosos corales que se pueden encontar en aguas limpias, las estrellas de mar y las praderas marinas, por lo que el submarinismo en la zona puede llegar a ser una experiencia inolvidable.', 'Bahía de las Águilas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlhiiwh67xifcv1wxs48yunxpb` (`site`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9jy138s27s6eqsg8f2he5n8v5` (`site`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
