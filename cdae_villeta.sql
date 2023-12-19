-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2023 a las 07:49:20
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cdae_villeta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_instructor`
--

CREATE TABLE `asignacion_instructor` (
  `id` int(11) NOT NULL,
  `nDocInstructor` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `nom_titulacion` int(11) NOT NULL,
  `tipocompetencia` int(11) NOT NULL,
  `competencia` int(11) NOT NULL,
  `color_evento` varchar(50) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `fechaAsignacion` datetime NOT NULL,
  `nDocRegistradoPor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignacion_instructor`
--

INSERT INTO `asignacion_instructor` (`id`, `nDocInstructor`, `nivel`, `nom_titulacion`, `tipocompetencia`, `competencia`, `color_evento`, `fecha_inicio`, `fecha_fin`, `fechaAsignacion`, `nDocRegistradoPor`) VALUES
(81, 1077967749, 7, 12, 1, 234, '#8BC34A', '2023-12-05 08:00:00', '2023-12-05 13:00:00', '2023-12-01 08:38:57', 1313343433),
(90, 1072744835, 4, 2, 1, 10, '#8BC34A', '2023-12-11 07:00:00', '2023-12-11 13:00:00', '2023-12-04 06:57:47', 10),
(91, 1072744835, 4, 2, 1, 10, '#8BC34A', '2023-12-12 07:00:00', '2023-12-12 13:00:00', '2023-12-04 06:57:47', 10),
(92, 1072744835, 4, 2, 1, 10, '#8BC34A', '2023-12-13 07:00:00', '2023-12-13 13:00:00', '2023-12-04 06:57:47', 10),
(93, 1072744835, 4, 2, 1, 10, '#8BC34A', '2023-12-14 07:00:00', '2023-12-14 13:00:00', '2023-12-04 06:57:47', 10),
(94, 1072744835, 4, 2, 1, 10, '#8BC34A', '2023-12-15 07:00:00', '2023-12-15 13:00:00', '2023-12-04 06:57:47', 10),
(95, 1072744835, 4, 2, 2, 1234, '#2196F3', '2023-12-12 14:00:00', '2023-12-12 17:00:00', '2023-12-04 06:58:33', 10),
(96, 1072744835, 4, 2, 3, 8790, '#FF5722', '2023-12-15 15:00:00', '2023-12-15 17:00:00', '2023-12-04 06:59:15', 10),
(97, 1010171759, 6, 34, 1, 34356772, '#8BC34A', '2023-12-19 07:00:00', '2023-12-19 13:00:00', '2023-12-04 08:32:52', 1313343433);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

CREATE TABLE `calendario` (
  `id` int(11) NOT NULL,
  `Nom_evento` varchar(50) NOT NULL,
  `Nom_per` varchar(50) NOT NULL,
  `fecha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calendario`
--

INSERT INTO `calendario` (`id`, `Nom_evento`, `Nom_per`, `fecha`) VALUES
(3, 'hola', '58', ''),
(4, 'akuhkajdscxss', '12', ''),
(5, 'jdfj', 'jddj', ''),
(6, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencia`
--

CREATE TABLE `competencia` (
  `id` int(11) NOT NULL,
  `cod_competencia` int(11) NOT NULL,
  `nom_competencia` varchar(500) NOT NULL,
  `tipoCompetencia` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `resultadosAprendizaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `competencia`
--

INSERT INTO `competencia` (`id`, `cod_competencia`, `nom_competencia`, `tipoCompetencia`, `horas`, `resultadosAprendizaje`) VALUES
(10, 10, 'Ingles', 1, 10, 2),
(11, 12345, 'Matematicas', 1, 12, 2),
(12, 1234, 'Bases de datos', 2, 12, 2),
(13, 8790, 'Capacitación', 3, 6, 2),
(14, 234, 'Comunicacines', 1, 40, 4),
(16, 34356772, 'Cultura Fisica 2', 1, 43, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombres` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `asunto` varchar(50) NOT NULL,
  `mensaje` varchar(300) NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombres`, `email`, `asunto`, `mensaje`, `fechaRegistro`, `estado`) VALUES
(6, 'Prueba', 'prueba@gmail.com', 'Hola', 'Prueba', '2023-10-27 01:25:58', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `iddpar` int(5) NOT NULL,
  `nomdepar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`iddpar`, `nomdepar`) VALUES
(1, 'Otro'),
(5, 'Antioquia'),
(8, 'Atlantico'),
(11, 'Bogota D.C'),
(13, 'Bolivar'),
(15, 'Boyaca'),
(17, 'Caldas'),
(18, 'Caqueta'),
(19, 'Cauca'),
(20, 'Cesar'),
(23, 'Cordoba'),
(25, 'Cundinamarca'),
(27, 'Chocó'),
(41, 'Huila'),
(44, 'La Guajira'),
(47, 'Magdalena'),
(50, 'Meta'),
(52, 'Nariño'),
(54, 'Norte de Santander'),
(63, 'Quindio'),
(66, 'Risaralda'),
(68, 'Santander'),
(70, 'Sucre'),
(73, 'Tolima '),
(76, 'Valle del Cauca'),
(81, 'Arauca'),
(85, 'Casanare'),
(86, 'Putumayo'),
(88, 'San Andres'),
(91, 'Amazonas'),
(94, 'Guainía'),
(95, 'Guaviare'),
(97, 'Vaupés'),
(99, 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `Nombre` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `Nombre`) VALUES
(0, 'Inactivo'),
(1, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructura_curricular`
--

CREATE TABLE `estructura_curricular` (
  `codigo_prog` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `denominacion_prog` char(50) NOT NULL,
  `nivel` int(11) NOT NULL,
  `jornada` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `region` int(11) NOT NULL,
  `municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estructura_curricular`
--

INSERT INTO `estructura_curricular` (`codigo_prog`, `version`, `denominacion_prog`, `nivel`, `jornada`, `descripcion`, `region`, `municipio`) VALUES
(2, 32, 'Trabajo Seguro De Alturas', 4, 1, 'Permite conocer los aspectos básicos de protección contra caídas y aprender a usar apropiadamente los equipos de seguridad,', 3, 25513),
(12, 1, 'Analisis Y Desarrollo De Software', 7, 1, 'El desarrollo de software es un proceso que consiste en la creación y mantenimiento de aplicaciones y sistemas informáticos. se trata de una disciplina que combina conocimientos técnicos y habilidades de ingeniería con el objetivo de construir software de alta calidad y utilidad.', 3, 25258),
(34, 3, 'Gestión Contable', 6, 5, 'Actividad encaminada a obtener información de las operaciones financieras de la empresa. esta información, para ser útil, debe ser consecuente, ordenada', 0, 1),
(12232, 1, 'Gestión Financiera', 1, 5, 'Gestión financiera brinda a sus colaboradores las herramientas para comprender y aplicar diferentes técnicas administrativas, que faciliten la interpretación de cifras en estados financieros y así poder medir el impacto de las decisiones en la productividad del negocio.', 3, 25394);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombreGenero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombreGenero`) VALUES
(1, 'Femenino'),
(2, 'Masculino'),
(3, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iniciosession`
--

CREATE TABLE `iniciosession` (
  `id` int(11) NOT NULL,
  `nDocFecha` int(11) NOT NULL,
  `fechaR` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `iniciosession`
--

INSERT INTO `iniciosession` (`id`, `nDocFecha`, `fechaR`) VALUES
(352, 10, '2023-11-17 04:46:51'),
(353, 10, '2023-11-17 04:49:22'),
(354, 10, '2023-11-17 04:53:10'),
(355, 10, '2023-11-17 04:55:06'),
(356, 10, '2023-11-17 05:02:41'),
(357, 10, '2023-11-17 05:03:12'),
(358, 10, '2023-11-17 05:16:14'),
(359, 10, '2023-11-17 05:43:53'),
(360, 10, '2023-11-17 11:33:33'),
(361, 1313343433, '2023-11-17 11:51:35'),
(363, 10, '2023-11-17 12:35:44'),
(365, 10, '2023-11-17 12:51:10'),
(367, 10, '2023-11-17 02:16:10'),
(369, 10, '2023-11-18 08:50:39'),
(370, 10, '2023-11-19 10:23:25'),
(371, 10, '2023-11-20 06:40:34'),
(372, 10, '2023-11-21 12:39:18'),
(373, 10, '2023-11-21 03:14:38'),
(374, 10, '2023-11-21 04:40:29'),
(376, 10, '2023-11-23 04:05:42'),
(377, 10, '2023-11-23 05:10:49'),
(378, 10, '2023-11-27 02:50:40'),
(383, 10, '2023-11-29 12:45:39'),
(385, 10, '2023-11-29 12:50:58'),
(386, 10, '2023-11-29 02:44:34'),
(387, 10, '2023-11-29 03:03:38'),
(388, 10, '2023-11-29 03:12:51'),
(389, 10, '2023-11-29 03:20:24'),
(390, 10, '2023-11-29 04:10:01'),
(391, 10, '2023-11-29 04:11:14'),
(393, 10, '2023-11-29 04:17:23'),
(394, 10, '2023-11-29 04:26:12'),
(395, 10, '2023-11-30 12:32:51'),
(396, 10, '2023-11-30 10:02:54'),
(397, 10, '2023-11-30 10:31:12'),
(398, 10, '2023-11-30 10:40:44'),
(399, 10, '2023-12-01 07:36:55'),
(400, 10, '2023-12-01 08:04:14'),
(401, 10, '2023-12-01 06:33:47'),
(402, 1313343433, '2023-12-01 08:20:50'),
(403, 1313343433, '2023-12-01 08:25:15'),
(404, 1079232134, '2023-12-01 08:50:13'),
(405, 1003567420, '2023-12-01 08:52:21'),
(406, 1028881072, '2023-12-01 08:55:13'),
(407, 10, '2023-12-01 09:50:46'),
(408, 1003567420, '2023-12-01 09:55:26'),
(409, 1003567420, '2023-12-01 09:56:05'),
(410, 10, '2023-12-01 09:56:50'),
(411, 1007418534, '2023-12-01 10:13:45'),
(412, 1313343433, '2023-12-01 10:51:17'),
(413, 1079232134, '2023-12-01 11:01:43'),
(414, 1003567420, '2023-12-01 11:03:32'),
(415, 10, '2023-12-04 08:07:50'),
(416, 10, '2023-12-04 08:33:45'),
(417, 10, '2023-12-04 09:02:38'),
(418, 10, '2023-12-04 09:03:35'),
(419, 10, '2023-12-04 09:47:16'),
(420, 1003567420, '2023-12-04 03:31:00'),
(421, 1003567420, '2023-12-04 03:31:25'),
(422, 1003567420, '2023-12-04 03:33:28'),
(423, 10, '2023-12-04 03:39:30'),
(424, 1007418534, '2023-12-04 03:45:46'),
(425, 10, '2023-12-04 04:03:57'),
(426, 1007418534, '2023-12-04 04:09:16'),
(427, 10, '2023-12-04 04:20:10'),
(428, 10, '2023-12-04 06:47:01'),
(429, 1003567420, '2023-12-04 07:10:20'),
(430, 1313343433, '2023-12-04 08:28:38'),
(431, 1079232134, '2023-12-04 08:38:38'),
(432, 1003567420, '2023-12-04 08:40:32'),
(433, 1072744835, '2023-12-04 08:41:25'),
(434, 1028881072, '2023-12-04 08:43:26'),
(435, 10, '2023-12-18 11:48:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `id` int(11) NOT NULL,
  `Nombre` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`id`, `Nombre`) VALUES
(4, 'Fin de semana'),
(1, 'Mañana'),
(3, 'Noche'),
(2, 'Tarde'),
(5, 'Virtual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `mensaje` varchar(150) NOT NULL,
  `num_doc_emisor` int(11) NOT NULL,
  `num_doc_receptor` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `fechaenvio` datetime DEFAULT NULL,
  `estado` varchar(15) NOT NULL DEFAULT 'noleido',
  `fechaLeido` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`id`, `Titulo`, `mensaje`, `num_doc_emisor`, `num_doc_receptor`, `tipo`, `fechaenvio`, `estado`, `fechaLeido`) VALUES
(18, 'Hola', 'Hello', 1313343433, 1003567420, 1, '2023-12-01 08:41:25', 'leido', '2023-12-01 20:54:07'),
(19, 'Hola', 'Buenos dias', 1313343433, 1003533479, 1, '2023-12-01 10:56:52', 'noleido', NULL),
(20, 'Prueba', 'Hola', 10, 1003567420, 1, '2023-12-04 03:30:44', 'leido', '2023-12-04 15:31:06'),
(21, 'Prueba', 'Hola', 10, 1003567420, 2, '2023-12-04 04:32:22', 'noleido', NULL),
(22, 'Eee', 'Eeee', 10, 1003567420, 1, '2023-12-04 04:32:44', 'noleido', NULL),
(23, 'Prueba', 'Wqwq', 10, 1077967749, 1, '2023-12-04 04:35:03', 'noleido', NULL),
(24, 'H', 'Hola', 1313343433, 1003567420, 1, '2023-12-04 08:33:45', 'leido', '2023-12-04 20:40:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `iddepar` int(5) NOT NULL,
  `Nom_municipio` char(30) NOT NULL,
  `id_region` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `iddepar`, `Nom_municipio`, `id_region`) VALUES
(1, 1, 'Otro', 0),
(5001, 5, 'Medellín', 0),
(5002, 5, 'Abejorral', 0),
(5004, 5, 'Abriaquí', 0),
(5021, 5, 'Alejandría', 0),
(5030, 5, 'Amaga', 0),
(5031, 5, 'Amalfi', 0),
(5034, 5, 'Andes', 0),
(5036, 5, 'Angelopolis', 0),
(5038, 5, 'Angostura', 0),
(5040, 5, 'Anorí', 0),
(5042, 5, 'Santafé de antioquia', 0),
(5044, 5, 'Anza', 0),
(5045, 5, 'Apartadó', 0),
(5051, 5, 'Arboletes', 0),
(5055, 5, 'Argelia', 0),
(5059, 5, 'Armenia', 0),
(5079, 5, 'Barbosa', 0),
(5086, 5, 'Belmira', 0),
(5088, 5, 'Bello', 0),
(5091, 5, 'Betania', 0),
(5093, 5, 'Betulia', 0),
(5101, 5, 'Ciudad bolívar', 0),
(5107, 5, 'Briceño', 0),
(5113, 5, 'Buriticá', 0),
(5120, 5, 'Cáceres', 0),
(5125, 5, 'Caicedo', 0),
(5129, 5, 'Caldas', 0),
(5134, 5, 'Campamento', 0),
(5138, 5, 'Cañasgordas', 0),
(5142, 5, 'Caracolí', 0),
(5145, 5, 'Caramanta', 0),
(5147, 5, 'Carepa', 0),
(5148, 5, 'Carmen de viboral', 0),
(5150, 5, 'Carolina', 0),
(5154, 5, 'Caucasia', 0),
(5172, 5, 'Chigorodó', 0),
(5190, 5, 'Cisneros', 0),
(5197, 5, 'Cocorná', 0),
(5206, 5, 'Concepción', 0),
(5209, 5, 'Concordia', 0),
(5212, 5, 'Copacabana', 0),
(5234, 5, 'Dabeiba', 0),
(5237, 5, 'Don matias', 0),
(5240, 5, 'Ebéjico', 0),
(5250, 5, 'El bagre', 0),
(5264, 5, 'Entrerrios', 0),
(5266, 5, 'Envigado', 0),
(5282, 5, 'Fredonia', 0),
(5284, 5, 'Frontino', 0),
(5306, 5, 'Giraldo', 0),
(5308, 5, 'Girardota', 0),
(5310, 5, 'Gómez plata', 0),
(5313, 5, 'Granada', 0),
(5315, 5, 'Guadalupe', 0),
(5318, 5, 'Guarne', 0),
(5321, 5, 'Guatape', 0),
(5347, 5, 'Heliconia', 0),
(5353, 5, 'Hispania', 0),
(5360, 5, 'Itagui', 0),
(5361, 5, 'Ituango', 0),
(5364, 5, 'Jardín', 0),
(5368, 5, 'Jericó', 0),
(5376, 5, 'La ceja', 0),
(5380, 5, 'La estrella', 0),
(5390, 5, 'La pintada', 0),
(5400, 5, 'La unión', 0),
(5411, 5, 'Liborina', 0),
(5425, 5, 'Maceo', 0),
(5440, 5, 'Marinilla', 0),
(5467, 5, 'Montebello', 0),
(5475, 5, 'Murindó', 0),
(5480, 5, 'Mutata', 0),
(5483, 5, 'Nariño', 0),
(5490, 5, 'Necoclí', 0),
(5495, 5, 'Nechí', 0),
(5501, 5, 'Olaya', 0),
(5541, 5, 'Peñol', 0),
(5543, 5, 'Peque', 0),
(5576, 5, 'Pueblorrico', 0),
(5579, 5, 'Puerto berrio', 0),
(5585, 5, 'Puerto nare', 0),
(5591, 5, 'Puerto triunfo', 0),
(5604, 5, 'Remedios', 0),
(5607, 5, 'Retiro', 0),
(5615, 5, 'Rionegro', 0),
(5628, 5, 'Sabanalarga', 0),
(5631, 5, 'Sabaneta', 0),
(5642, 5, 'Salgar', 0),
(5647, 5, 'San andrés', 0),
(5649, 5, 'San carlos', 0),
(5652, 5, 'San francisco', 0),
(5656, 5, 'San jerónimo', 0),
(5658, 5, 'San josé de la montaña', 0),
(5659, 5, 'San juan de uraba', 0),
(5660, 5, 'San luis', 0),
(5664, 5, 'San pedro', 0),
(5665, 5, 'San pedro de uraba', 0),
(5667, 5, 'San rafael', 0),
(5670, 5, 'San roque', 0),
(5674, 5, 'San vicente', 0),
(5679, 5, 'Santa barbara', 0),
(5686, 5, 'Santa rosa de osos', 0),
(5690, 5, 'Santo domingo', 0),
(5697, 5, 'Santuario', 0),
(5736, 5, 'Segovia', 0),
(5756, 5, 'Sonson', 0),
(5761, 5, 'Sopetran', 0),
(5789, 5, 'Támesis', 0),
(5790, 5, 'Tarazá', 0),
(5792, 5, 'Tarso', 0),
(5809, 5, 'Titiribí', 0),
(5819, 5, 'Toledo', 0),
(5837, 5, 'Turbo', 0),
(5842, 5, 'Uramita', 0),
(5847, 5, 'Urrao', 0),
(5854, 5, 'Valdivia', 0),
(5856, 5, 'Valparaiso', 0),
(5858, 5, 'Vegachí', 0),
(5861, 5, 'Venecia', 0),
(5873, 5, 'Vigía del fuerte', 0),
(5885, 5, 'Yalí', 0),
(5887, 5, 'Yarumal', 0),
(5890, 5, 'Yolombó', 0),
(5893, 5, 'Yondó', 0),
(5895, 5, 'Zaragoza', 0),
(8001, 8, 'Barranquilla', 0),
(8078, 8, 'Baranoa', 0),
(8137, 8, 'Campo de la cruz', 0),
(8141, 8, 'Candelaria', 0),
(8296, 8, 'Galapa', 0),
(8372, 8, 'Juan de acosta', 0),
(8421, 8, 'Luruaco', 0),
(8433, 8, 'Malambo', 0),
(8436, 8, 'Manati', 0),
(8520, 8, 'Palmar de varela', 0),
(8549, 8, 'Piojó', 0),
(8558, 8, 'Polonuevo', 0),
(8560, 8, 'Ponedera', 0),
(8573, 8, 'Puerto colombia', 0),
(8606, 8, 'Repelon', 0),
(8634, 8, 'Sabanagrande', 0),
(8638, 8, 'Sabanalarga', 0),
(8675, 8, 'Santa lucia', 0),
(8685, 8, 'Santo tomas', 0),
(8758, 8, 'Soledad', 0),
(8770, 8, 'Suan', 0),
(8832, 8, 'Tubara', 0),
(8849, 8, 'Usiacuri', 0),
(11001, 11, 'Bogota d.c.', 0),
(13001, 13, 'Cartagena', 0),
(13006, 13, 'Achí', 0),
(13030, 13, 'Altos del rosario', 0),
(13042, 13, 'Arenal', 0),
(13052, 13, 'Arjona', 0),
(13062, 13, 'Arroyohondo', 0),
(13074, 13, 'Barranco de loba', 0),
(13140, 13, 'Calamar', 0),
(13160, 13, 'Cantagallo', 0),
(13188, 13, 'Cicuco', 0),
(13212, 13, 'Córdoba', 0),
(13222, 13, 'Clemencia', 0),
(13244, 13, 'Carmen de bolívar', 0),
(13248, 13, 'El guamo', 0),
(13268, 13, 'El peñon', 0),
(13300, 13, 'Hatillo de loba', 0),
(13430, 13, 'Magangué', 0),
(13433, 13, 'Mahates', 0),
(13440, 13, 'Margarita', 0),
(13442, 13, 'María la baja', 0),
(13458, 13, 'Montecristo', 0),
(13468, 13, 'Mompós', 0),
(13473, 13, 'Morales', 0),
(13549, 13, 'Pinillos', 0),
(13580, 13, 'Regidor', 0),
(13600, 13, 'Río viejo', 0),
(13620, 13, 'San cristobal', 0),
(13647, 13, 'San estanislao', 0),
(13650, 13, 'San fernando', 0),
(13654, 13, 'San jacinto', 0),
(13655, 13, 'San jacinto del cauca', 0),
(13657, 13, 'San juan nepomuceno', 0),
(13667, 13, 'San martin de loba', 0),
(13670, 13, 'San pablo', 0),
(13673, 13, 'Santa catalina', 0),
(13683, 13, 'Santa rosa de lima', 0),
(13688, 13, 'Santa rosa del sur', 0),
(13744, 13, 'Simití', 0),
(13760, 13, 'Soplaviento', 0),
(13780, 13, 'Talaigua nuevo', 0),
(13810, 13, 'Tiquisio', 0),
(13836, 13, 'Turbaco', 0),
(13838, 13, 'Turbana', 0),
(13873, 13, 'Villanueva', 0),
(13894, 13, 'Zambrano', 0),
(15001, 15, 'Tunja', 0),
(15022, 15, 'Almeida', 0),
(15047, 15, 'Aquitania', 0),
(15051, 15, 'Arcabuco', 0),
(15087, 15, 'Belén', 0),
(15090, 15, 'Berbeo', 0),
(15092, 15, 'Betéitiva', 0),
(15097, 15, 'Boavita', 0),
(15104, 15, 'Boyacá', 0),
(15106, 15, 'Briceño', 0),
(15109, 15, 'Buenavista', 0),
(15114, 15, 'Busbanzá', 0),
(15131, 15, 'Caldas', 0),
(15135, 15, 'Campohermoso', 0),
(15162, 15, 'Cerinza', 0),
(15172, 15, 'Chinavita', 0),
(15176, 15, 'Chiquinquirá', 0),
(15180, 15, 'Chiscas', 0),
(15183, 15, 'Chita', 0),
(15185, 15, 'Chitaraque', 0),
(15187, 15, 'Chivatá', 0),
(15189, 15, 'Ciénega', 0),
(15204, 15, 'Cómbita', 0),
(15212, 15, 'Coper', 0),
(15215, 15, 'Corrales', 0),
(15218, 15, 'Covarachía', 0),
(15223, 15, 'Cubará', 0),
(15224, 15, 'Cucaita', 0),
(15226, 15, 'Cuítiva', 0),
(15232, 15, 'Chíquiza', 0),
(15236, 15, 'Chivor', 0),
(15238, 15, 'Duitama', 0),
(15244, 15, 'El cocuy', 0),
(15248, 15, 'El espino', 0),
(15272, 15, 'Firavitoba', 0),
(15276, 15, 'Floresta', 0),
(15293, 15, 'Gachantivá', 0),
(15296, 15, 'Gameza', 0),
(15299, 15, 'Garagoa', 0),
(15317, 15, 'Guacamayas', 0),
(15322, 15, 'Guateque', 0),
(15325, 15, 'Guayatá', 0),
(15332, 15, 'Güicán', 0),
(15362, 15, 'Iza', 0),
(15367, 15, 'Jenesano', 0),
(15368, 15, 'Jericó', 0),
(15377, 15, 'Labranzagrande', 0),
(15380, 15, 'La capilla', 0),
(15401, 15, 'La victoria', 0),
(15403, 15, 'La uvita', 0),
(15407, 15, 'Villa de leyva', 0),
(15425, 15, 'Macanal', 0),
(15442, 15, 'Maripí', 0),
(15455, 15, 'Miraflores', 0),
(15464, 15, 'Mongua', 0),
(15466, 15, 'Monguí', 0),
(15469, 15, 'Moniquirá', 0),
(15476, 15, 'Motavita', 0),
(15480, 15, 'Muzo', 0),
(15491, 15, 'Nobsa', 0),
(15494, 15, 'Nuevo colón', 0),
(15500, 15, 'Oicatá', 0),
(15507, 15, 'Otanche', 0),
(15511, 15, 'Pachavita', 0),
(15514, 15, 'Páez', 0),
(15516, 15, 'Paipa', 0),
(15518, 15, 'Pajarito', 0),
(15522, 15, 'Panqueba', 0),
(15531, 15, 'Pauna', 0),
(15533, 15, 'Paya', 0),
(15537, 15, 'Paz de río', 0),
(15542, 15, 'Pesca', 0),
(15550, 15, 'Pisba', 0),
(15572, 15, 'Puerto boyaca', 0),
(15580, 15, 'Quípama', 0),
(15599, 15, 'Ramiriquí', 0),
(15600, 15, 'Ráquira', 0),
(15621, 15, 'Rondón', 0),
(15632, 15, 'Saboyá', 0),
(15638, 15, 'Sáchica', 0),
(15646, 15, 'Samacá', 0),
(15660, 15, 'San eduardo', 0),
(15664, 15, 'San josé de pare', 0),
(15667, 15, 'San luis de gaceno', 0),
(15673, 15, 'San mateo', 0),
(15676, 15, 'San miguel de sema', 0),
(15681, 15, 'San pablo borbur', 0),
(15686, 15, 'Santana', 0),
(15690, 15, 'Santa maría', 0),
(15693, 15, 'San rosa viterbo', 0),
(15696, 15, 'Santa sofía', 0),
(15720, 15, 'Sativanorte', 0),
(15723, 15, 'Sativasur', 0),
(15740, 15, 'Siachoque', 0),
(15753, 15, 'Soatá', 0),
(15755, 15, 'Socotá', 0),
(15757, 15, 'Socha', 0),
(15759, 15, 'Sogamoso', 0),
(15761, 15, 'Somondoco', 0),
(15762, 15, 'Sora', 0),
(15763, 15, 'Sotaquirá', 0),
(15764, 15, 'Soracá', 0),
(15774, 15, 'Susacón', 0),
(15776, 15, 'Sutamarchán', 0),
(15778, 15, 'Sutatenza', 0),
(15790, 15, 'Tasco', 0),
(15798, 15, 'Tenza', 0),
(15804, 15, 'Tibaná', 0),
(15806, 15, 'Tibasosa', 0),
(15808, 15, 'Tinjacá', 0),
(15810, 15, 'Tipacoque', 0),
(15814, 15, 'Toca', 0),
(15816, 15, 'Togüí', 0),
(15820, 15, 'Tópaga', 0),
(15822, 15, 'Tota', 0),
(15832, 15, 'Tununguá', 0),
(15835, 15, 'Turmequé', 0),
(15837, 15, 'Tuta', 0),
(15839, 15, 'Tutazá', 0),
(15842, 15, 'Umbita', 0),
(15861, 15, 'Ventaquemada', 0),
(15879, 15, 'Viracachá', 0),
(15897, 15, 'Zetaquira', 0),
(17001, 17, 'Manizales', 0),
(17013, 17, 'Aguadas', 0),
(17042, 17, 'Anserma', 0),
(17050, 17, 'Aranzazu', 0),
(17088, 17, 'Belalcázar', 0),
(17174, 17, 'Chinchina', 0),
(17272, 17, 'Filadelfia', 0),
(17380, 17, 'La dorada', 0),
(17388, 17, 'La merced', 0),
(17433, 17, 'Manzanares', 0),
(17442, 17, 'Marmato', 0),
(17444, 17, 'Marquetalia', 0),
(17446, 17, 'Marulanda', 0),
(17486, 17, 'Neira', 0),
(17495, 17, 'Norcasia', 0),
(17513, 17, 'Pácora', 0),
(17524, 17, 'Palestina', 0),
(17541, 17, 'Pensilvania', 0),
(17614, 17, 'Riosucio', 0),
(17616, 17, 'Risaralda', 0),
(17653, 17, 'Salamina', 0),
(17662, 17, 'Samaná', 0),
(17665, 17, 'San josé', 0),
(17777, 17, 'Supía', 0),
(17867, 17, 'Victoria', 0),
(17873, 17, 'Villamaria', 0),
(17877, 17, 'Viterbo', 0),
(18001, 18, 'Florencia', 0),
(18029, 18, 'Albania', 0),
(18094, 18, 'Belén de los andaquies', 0),
(18150, 18, 'Cartagena del chairá', 0),
(18205, 18, 'Currillo', 0),
(18247, 18, 'El doncello', 0),
(18256, 18, 'El paujil', 0),
(18410, 18, 'La montañita', 0),
(18460, 18, 'Milan', 0),
(18479, 18, 'Morelia', 0),
(18592, 18, 'Puerto rico', 0),
(18610, 18, 'San jose del fragua', 0),
(18753, 18, 'San vicente del caguán', 0),
(18756, 18, 'Solano', 0),
(18785, 18, 'Solita', 0),
(18860, 18, 'Valparaiso', 0),
(19001, 19, 'Popayán', 0),
(19022, 19, 'Almaguer', 0),
(19050, 19, 'Argelia', 0),
(19075, 19, 'Balboa', 0),
(19100, 19, 'Bolívar', 0),
(19110, 19, 'Buenos aires', 0),
(19130, 19, 'Cajibío', 0),
(19137, 19, 'Caldono', 0),
(19142, 19, 'Caloto', 0),
(19212, 19, 'Corinto', 0),
(19256, 19, 'El tambo', 0),
(19290, 19, 'Florencia', 0),
(19318, 19, 'Guapi', 0),
(19355, 19, 'Inzá', 0),
(19364, 19, 'Jambalo', 0),
(19392, 19, 'La sierra', 0),
(19397, 19, 'La vega', 0),
(19418, 19, 'Lopez', 0),
(19450, 19, 'Mercaderes', 0),
(19455, 19, 'Miranda', 0),
(19473, 19, 'Morales', 0),
(19513, 19, 'Padilla', 0),
(19517, 19, 'Paez', 0),
(19532, 19, 'Patia', 0),
(19533, 19, 'Piamonte', 0),
(19548, 19, 'Piendamo', 0),
(19573, 19, 'Puerto tejada', 0),
(19585, 19, 'Purace', 0),
(19622, 19, 'Rosas', 0),
(19693, 19, 'San sebastian', 0),
(19698, 19, 'Santander de quilichao', 0),
(19701, 19, 'Santa rosa', 0),
(19743, 19, 'Silvia', 0),
(19760, 19, 'Sotara', 0),
(19780, 19, 'Suarez', 0),
(19785, 19, 'Sucre', 0),
(19807, 19, 'Timbio', 0),
(19809, 19, 'Timbiqui', 0),
(19821, 19, 'Toribio', 0),
(19824, 19, 'Totoro', 0),
(19845, 19, 'Villa rica', 0),
(20001, 20, 'Valledupar', 0),
(20011, 20, 'Aguachica', 0),
(20013, 20, 'Agustín codazzi', 0),
(20032, 20, 'Astrea', 0),
(20045, 20, 'Becerril', 0),
(20060, 20, 'Bosconia', 0),
(20175, 20, 'Chimichagua', 0),
(20178, 20, 'Chiriguana', 0),
(20228, 20, 'Curumaní', 0),
(20238, 20, 'El copey', 0),
(20250, 20, 'El paso', 0),
(20295, 20, 'Gamarra', 0),
(20310, 20, 'González', 0),
(20383, 20, 'La gloria', 0),
(20400, 20, 'La jagua de ibirico', 0),
(20443, 20, 'Manaure', 0),
(20517, 20, 'Pailitas', 0),
(20550, 20, 'Pelaya', 0),
(20570, 20, 'Pueblo bello', 0),
(20614, 20, 'Río de oro', 0),
(20621, 20, 'La paz', 0),
(20710, 20, 'San alberto', 0),
(20750, 20, 'San diego', 0),
(20770, 20, 'San martín', 0),
(20787, 20, 'Tamalameque', 0),
(23001, 23, 'Montería', 0),
(23068, 23, 'Ayapel', 0),
(23079, 23, 'Buenavista', 0),
(23090, 23, 'Canalete', 0),
(23162, 23, 'Cereté', 0),
(23168, 23, 'Chimá', 0),
(23182, 23, 'Chinú', 0),
(23189, 23, 'Ciénaga de oro', 0),
(23300, 23, 'Cotorra', 0),
(23350, 23, 'La apartada', 0),
(23417, 23, 'Lorica', 0),
(23419, 23, 'Los córdobas', 0),
(23464, 23, 'Momil', 0),
(23466, 23, 'Montelíbano', 0),
(23500, 23, 'Moñitos', 0),
(23555, 23, 'Planeta rica', 0),
(23570, 23, 'Pueblo nuevo', 0),
(23574, 23, 'Puerto escondido', 0),
(23580, 23, 'Puerto libertador', 0),
(23586, 23, 'Purísima', 0),
(23660, 23, 'Sahagún', 0),
(23670, 23, 'San andrés sotavento', 0),
(23672, 23, 'San antero', 0),
(23675, 23, 'San bernardo del viento', 0),
(23678, 23, 'San carlos', 0),
(23686, 23, 'San pelayo', 0),
(23807, 23, 'Tierralta', 0),
(23855, 23, 'Valencia', 0),
(25001, 25, 'Agua de dios', 0),
(25019, 25, 'Albán', 1),
(25035, 25, 'Anapoima', 0),
(25040, 25, 'Anolaima', 0),
(25053, 25, 'Arbeláez', 0),
(25086, 25, 'Beltrán', 0),
(25095, 25, 'Bituima', 1),
(25099, 25, 'Bojacá', 0),
(25120, 25, 'Cabrera', 0),
(25123, 25, 'Cachipay', 0),
(25126, 25, 'Cajicá', 0),
(25148, 25, 'Caparrapí', 1),
(25151, 25, 'Caqueza', 0),
(25154, 25, 'Carmen de carupa', 0),
(25168, 25, 'Chaguaní', 1),
(25175, 25, 'Chía', 0),
(25178, 25, 'Chipaque', 0),
(25181, 25, 'Choachí', 0),
(25183, 25, 'Chocontá', 0),
(25200, 25, 'Cogua', 0),
(25214, 25, 'Cota', 0),
(25224, 25, 'Cucunubá', 0),
(25245, 25, 'El colegio', 0),
(25258, 25, 'El peñón', 3),
(25260, 25, 'El rosal', 0),
(25269, 25, 'Facatativá', 0),
(25279, 25, 'Fomeque', 0),
(25281, 25, 'Fosca', 0),
(25286, 25, 'Funza', 0),
(25288, 25, 'Fúquene', 0),
(25290, 25, 'Fusagasugá', 0),
(25293, 25, 'Gachala', 0),
(25295, 25, 'Gachancipá', 0),
(25297, 25, 'Gacheta', 0),
(25299, 25, 'Gama', 0),
(25307, 25, 'Girardot', 0),
(25312, 25, 'Granada', 0),
(25317, 25, 'Guachetá', 0),
(25320, 25, 'Guaduas', 1),
(25322, 25, 'Guasca', 0),
(25324, 25, 'Guataquí', 0),
(25326, 25, 'Guatavita', 0),
(25328, 25, 'Guayabal de siquima', 1),
(25335, 25, 'Guayabetal', 0),
(25339, 25, 'Gutiérrez', 0),
(25368, 25, 'Jerusalén', 0),
(25372, 25, 'Junín', 0),
(25377, 25, 'La calera', 0),
(25386, 25, 'La mesa', 0),
(25394, 25, 'La palma', 3),
(25398, 25, 'La peña', 2),
(25402, 25, 'La vega', 2),
(25407, 25, 'Lenguazaque', 0),
(25426, 25, 'Macheta', 0),
(25430, 25, 'Madrid', 0),
(25436, 25, 'Manta', 0),
(25438, 25, 'Medina', 0),
(25473, 25, 'Mosquera', 0),
(25483, 25, 'Nariño', 0),
(25486, 25, 'Nemocon', 0),
(25488, 25, 'Nilo', 0),
(25489, 25, 'Nimaima', 2),
(25491, 25, 'Nocaima', 2),
(25506, 25, 'Venecia', 0),
(25513, 25, 'Pacho', 3),
(25518, 25, 'Paime', 3),
(25524, 25, 'Pandi', 0),
(25530, 25, 'Paratebueno', 0),
(25535, 25, 'Pasca', 0),
(25572, 25, 'Puerto salgar', 1),
(25580, 25, 'Puli', 0),
(25592, 25, 'Quebradanegra', 2),
(25594, 25, 'Quetame', 0),
(25596, 25, 'Quipile', 1),
(25599, 25, 'Apulo', 0),
(25612, 25, 'Ricaurte', 0),
(25645, 25, 'San antonio de tequendama', 0),
(25649, 25, 'San bernardo', 0),
(25653, 25, 'San cayetano', 3),
(25658, 25, 'San francisco', 2),
(25662, 25, 'San juan de río seco', 1),
(25718, 25, 'Sasaima', 2),
(25736, 25, 'Sesquilé', 0),
(25740, 25, 'Sibaté', 0),
(25743, 25, 'Silvania', 0),
(25745, 25, 'Simijaca', 0),
(25754, 25, 'Soacha', 0),
(25758, 25, 'Sopó', 0),
(25769, 25, 'Subachoque', 0),
(25772, 25, 'Suesca', 0),
(25777, 25, 'Supatá', 2),
(25779, 25, 'Susa', 0),
(25781, 25, 'Sutatausa', 0),
(25785, 25, 'Tabio', 0),
(25793, 25, 'Tausa', 0),
(25797, 25, 'Tena', 0),
(25799, 25, 'Tenjo', 0),
(25805, 25, 'Tibacuy', 0),
(25807, 25, 'Tibirita', 0),
(25815, 25, 'Tocaima', 0),
(25817, 25, 'Tocancipá', 0),
(25823, 25, 'Topaipi', 3),
(25839, 25, 'Ubalá', 0),
(25841, 25, 'Ubaque', 0),
(25843, 25, 'Ubate', 0),
(25845, 25, 'Une', 0),
(25851, 25, 'Útica', 2),
(25862, 25, 'Vergara', 2),
(25867, 25, 'Vianí', 1),
(25871, 25, 'Villagomez', 3),
(25873, 25, 'Villapinzón', 0),
(25875, 25, 'Villeta', 2),
(25878, 25, 'Viotá', 0),
(25885, 25, 'Yacopí', 3),
(25898, 25, 'Zipacon', 0),
(25899, 25, 'Zipaquirá', 0),
(27001, 27, 'Quibdó', 0),
(27006, 27, 'Acandí', 0),
(27025, 27, 'Alto baudó', 0),
(27050, 27, 'Atrato', 0),
(27073, 27, 'Bagadó', 0),
(27075, 27, 'Bahía solano', 0),
(27077, 27, 'Bajo baudó', 0),
(27086, 27, 'Belén de bajira', 0),
(27099, 27, 'Bojaya', 0),
(27135, 27, 'Canton de san pablo', 0),
(27150, 27, 'Carmén del darién', 0),
(27160, 27, 'Certegui', 0),
(27205, 27, 'Condoto', 0),
(27245, 27, 'El carmen de atrato', 0),
(27250, 27, 'El litoral del san juan', 0),
(27361, 27, 'Itsmina', 0),
(27372, 27, 'Juradó', 0),
(27413, 27, 'Lloró', 0),
(27425, 27, 'Medio atrato', 0),
(27430, 27, 'Medio baudó', 0),
(27450, 27, 'Medio san juan', 0),
(27491, 27, 'Nóvita', 0),
(27495, 27, 'Nuquí', 0),
(27580, 27, 'Río frío', 0),
(27600, 27, 'Rio quito', 0),
(27615, 27, 'Riosucio', 0),
(27660, 27, 'San josé del palmar', 0),
(27745, 27, 'Sipí', 0),
(27787, 27, 'Tadó', 0),
(27800, 27, 'Unguía', 0),
(27810, 27, 'Union panamericana', 0),
(41001, 41, 'Neiva', 0),
(41006, 41, 'Acevedo', 0),
(41013, 41, 'Agrado', 0),
(41016, 41, 'Aipe', 0),
(41020, 41, 'Algeciras', 0),
(41026, 41, 'Altamira', 0),
(41078, 41, 'Baraya', 0),
(41132, 41, 'Campoalegre', 0),
(41206, 41, 'Colombia', 0),
(41244, 41, 'Elías', 0),
(41298, 41, 'Garzón', 0),
(41306, 41, 'Gigante', 0),
(41319, 41, 'Guadalupe', 0),
(41349, 41, 'Hobo', 0),
(41357, 41, 'Iquira', 0),
(41359, 41, 'Isnos', 0),
(41378, 41, 'La argentina', 0),
(41396, 41, 'La plata', 0),
(41483, 41, 'Nátaga', 0),
(41503, 41, 'Oporapa', 0),
(41518, 41, 'Paicol', 0),
(41524, 41, 'Palermo', 0),
(41530, 41, 'Palestina', 0),
(41548, 41, 'Pital', 0),
(41551, 41, 'Pitalito', 0),
(41615, 41, 'Rivera', 0),
(41660, 41, 'Saladoblanco', 0),
(41668, 41, 'San agustín', 0),
(41676, 41, 'Santa maría', 0),
(41770, 41, 'Suaza', 0),
(41791, 41, 'Tarqui', 0),
(41797, 41, 'Tesalia', 0),
(41799, 41, 'Tello', 0),
(41801, 41, 'Teruel', 0),
(41807, 41, 'Timaná', 0),
(41872, 41, 'Villavieja', 0),
(41885, 41, 'Yaguará', 0),
(44001, 44, 'Riohacha', 0),
(44035, 44, 'Albania', 0),
(44078, 44, 'Barrancas', 0),
(44090, 44, 'Dibulla', 0),
(44098, 44, 'Distraccion', 0),
(44110, 44, 'El molino', 0),
(44279, 44, 'Fonseca', 0),
(44378, 44, 'Hatonuevo', 0),
(44420, 44, 'La jagua del pilar', 0),
(44430, 44, 'Maicao', 0),
(44560, 44, 'Manaure', 0),
(44650, 44, 'San juan del cesar', 0),
(44847, 44, 'Uribia', 0),
(44855, 44, 'Urumita', 0),
(44874, 44, 'Villanueva', 0),
(47001, 47, 'Santa marta', 0),
(47030, 47, 'Algarrobo', 0),
(47053, 47, 'Aracataca', 0),
(47058, 47, 'Ariguaní', 0),
(47161, 47, 'Cerro san antonio', 0),
(47170, 47, 'Chibolo', 0),
(47189, 47, 'Ciénaga', 0),
(47205, 47, 'Concordia', 0),
(47245, 47, 'El banco', 0),
(47258, 47, 'El piñon', 0),
(47268, 47, 'El reten', 0),
(47288, 47, 'Fundacion', 0),
(47318, 47, 'Guamal', 0),
(47460, 47, 'Nueva granada', 0),
(47541, 47, 'Pedraza', 0),
(47545, 47, 'Pijiño del carmen', 0),
(47551, 47, 'Pivijay', 0),
(47555, 47, 'Plato', 0),
(47570, 47, 'Pueblo viejo', 0),
(47605, 47, 'Remolino', 0),
(47660, 47, 'Sabanas de san angel', 0),
(47675, 47, 'Salamina', 0),
(47692, 47, 'San sebastian de buenavista', 0),
(47703, 47, 'San zenon', 0),
(47707, 47, 'Santa ana', 0),
(47720, 47, 'Santa barbara de pinto', 0),
(47745, 47, 'Sitionuevo', 0),
(47798, 47, 'Tenerife', 0),
(47960, 47, 'Zapayan', 0),
(47980, 47, 'Zona bananera', 0),
(50001, 50, 'Villavicencio', 0),
(50006, 50, 'Acacias', 0),
(50110, 50, 'Barranca de upia', 0),
(50124, 50, 'Cabuyaro', 0),
(50150, 50, 'Castilla la nueva', 0),
(50223, 50, 'San luis de cubarral', 0),
(50226, 50, 'Cumaral', 0),
(50245, 50, 'El calvario', 0),
(50251, 50, 'El castillo', 0),
(50270, 50, 'El dorado', 0),
(50287, 50, 'Fuente de oro', 0),
(50313, 50, 'Granada', 0),
(50318, 50, 'Guamal', 0),
(50325, 50, 'Mapiripan', 0),
(50330, 50, 'Mesetas', 0),
(50350, 50, 'La macarena', 0),
(50370, 50, 'La uribe', 0),
(50400, 50, 'Lejanías', 0),
(50450, 50, 'Puerto concordia', 0),
(50568, 50, 'Puerto gaitán', 0),
(50573, 50, 'Puerto lopez', 0),
(50577, 50, 'Puerto lleras', 0),
(50590, 50, 'Puerto rico', 0),
(50606, 50, 'Restrepo', 0),
(50680, 50, 'San carlos guaroa', 0),
(50683, 50, 'San juan de arama', 0),
(50686, 50, 'San juanito', 0),
(50689, 50, 'San martín', 0),
(50711, 50, 'Vista hermosa', 0),
(52001, 52, 'Pasto', 0),
(52019, 52, 'Alban', 0),
(52022, 52, 'Aldana', 0),
(52036, 52, 'Ancuya', 0),
(52051, 52, 'Arboleda', 0),
(52079, 52, 'Barbacoas', 0),
(52083, 52, 'Belen', 0),
(52110, 52, 'Buesaco', 0),
(52203, 52, 'Colon', 0),
(52207, 52, 'Consaca', 0),
(52210, 52, 'Contadero', 0),
(52215, 52, 'Córdoba', 0),
(52224, 52, 'Cuaspud', 0),
(52227, 52, 'Cumbal', 0),
(52233, 52, 'Cumbitara', 0),
(52240, 52, 'Chachagui', 0),
(52250, 52, 'El charco', 0),
(52254, 52, 'El peñol', 0),
(52256, 52, 'El rosario', 0),
(52258, 52, 'El tablon de gomez', 0),
(52260, 52, 'El tambo', 0),
(52287, 52, 'Funes', 0),
(52317, 52, 'Guachucal', 0),
(52320, 52, 'Guaitarilla', 0),
(52323, 52, 'Gualmatan', 0),
(52352, 52, 'Iles', 0),
(52354, 52, 'Imues', 0),
(52356, 52, 'Ipiales', 0),
(52378, 52, 'La cruz', 0),
(52381, 52, 'La florida', 0),
(52385, 52, 'La llanada', 0),
(52390, 52, 'La tola', 0),
(52399, 52, 'La union', 0),
(52405, 52, 'Leiva', 0),
(52411, 52, 'Linares', 0),
(52418, 52, 'Los andes', 0),
(52427, 52, 'Magui', 0),
(52435, 52, 'Mallama', 0),
(52473, 52, 'Mosquera', 0),
(52480, 52, 'Nariño', 0),
(52490, 52, 'Olaya herrera', 0),
(52506, 52, 'Ospina', 0),
(52520, 52, 'Francisco pizarro', 0),
(52540, 52, 'Policarpa', 0),
(52560, 52, 'Potosí', 0),
(52565, 52, 'Providencia', 0),
(52573, 52, 'Puerres', 0),
(52585, 52, 'Pupiales', 0),
(52612, 52, 'Ricaurte', 0),
(52621, 52, 'Roberto payan', 0),
(52678, 52, 'Samaniego', 0),
(52683, 52, 'Sandoná', 0),
(52685, 52, 'San bernardo', 0),
(52687, 52, 'San lorenzo', 0),
(52693, 52, 'San pablo', 0),
(52694, 52, 'San pedro de cartago', 0),
(52696, 52, 'Santa barbara', 0),
(52699, 52, 'Santa cruz', 0),
(52720, 52, 'Sapuyes', 0),
(52786, 52, 'Taminango', 0),
(52788, 52, 'Tangua', 0),
(52835, 52, 'Tumaco', 0),
(52838, 52, 'Tuquerres', 0),
(52885, 52, 'Yacuanquer', 0),
(54001, 54, 'Cúcuta', 0),
(54003, 54, 'Abrego', 0),
(54051, 54, 'Arboledas', 0),
(54099, 54, 'Bochalema', 0),
(54109, 54, 'Bucarasica', 0),
(54125, 54, 'Cácota', 0),
(54128, 54, 'Cachirá', 0),
(54172, 54, 'Chinácota', 0),
(54174, 54, 'Chitagá', 0),
(54206, 54, 'Convención', 0),
(54223, 54, 'Cucutilla', 0),
(54239, 54, 'Durania', 0),
(54245, 54, 'El carmen', 0),
(54250, 54, 'El tarra', 0),
(54261, 54, 'El zulia', 0),
(54313, 54, 'Gramalote', 0),
(54344, 54, 'Hacarí', 0),
(54347, 54, 'Herrán', 0),
(54377, 54, 'Labateca', 0),
(54385, 54, 'La esperanza', 0),
(54398, 54, 'La playa', 0),
(54405, 54, 'Los patios', 0),
(54418, 54, 'Lourdes', 0),
(54480, 54, 'Mutiscua', 0),
(54498, 54, 'Ocaña', 0),
(54518, 54, 'Pamplona', 0),
(54520, 54, 'Pamplonita', 0),
(54553, 54, 'Puerto santander', 0),
(54599, 54, 'Ragonvalia', 0),
(54660, 54, 'Salazar', 0),
(54670, 54, 'San calixto', 0),
(54673, 54, 'San cayetano', 0),
(54680, 54, 'Santiago', 0),
(54720, 54, 'Sardinata', 0),
(54743, 54, 'Silos', 0),
(54800, 54, 'Teorama', 0),
(54810, 54, 'Tibú', 0),
(54820, 54, 'Toledo', 0),
(54871, 54, 'Villa caro', 0),
(54874, 54, 'Villa del rosario', 0),
(63001, 63, 'Armenia', 0),
(63111, 63, 'Buenavista', 0),
(63130, 63, 'Calarca', 0),
(63190, 63, 'Circasia', 0),
(63212, 63, 'Cordoba', 0),
(63272, 63, 'Filandia', 0),
(63302, 63, 'Genova', 0),
(63401, 63, 'La tebaida', 0),
(63470, 63, 'Montengro', 0),
(63548, 63, 'Pijao', 0),
(63594, 63, 'Quimbaya', 0),
(63690, 63, 'Salento', 0),
(66001, 66, 'Pereira', 0),
(66045, 66, 'Apía', 0),
(66075, 66, 'Balboa', 0),
(66088, 66, 'Belén de umbría', 0),
(66170, 66, 'Dosquebradas', 0),
(66318, 66, 'Guática', 0),
(66383, 66, 'La celia', 0),
(66400, 66, 'La virginia', 0),
(66440, 66, 'Marsella', 0),
(66456, 66, 'Mistrató', 0),
(66572, 66, 'Pueblo rico', 0),
(66594, 66, 'Quinchia', 0),
(66682, 66, 'Santa rosa de cabal', 0),
(66687, 66, 'Santuario', 0),
(68001, 68, 'Bucaramanga', 0),
(68013, 68, 'Aguada', 0),
(68020, 68, 'Albania', 0),
(68051, 68, 'Aratoca', 0),
(68077, 68, 'Barbosa', 0),
(68079, 68, 'Barichara', 0),
(68081, 68, 'Barrancabermeja', 0),
(68092, 68, 'Betulia', 0),
(68101, 68, 'Bolívar', 0),
(68121, 68, 'Cabrera', 0),
(68132, 68, 'California', 0),
(68147, 68, 'Capitanejo', 0),
(68152, 68, 'Carcasí', 0),
(68160, 68, 'Cepitá', 0),
(68162, 68, 'Cerrito', 0),
(68167, 68, 'Charalá', 0),
(68169, 68, 'Charta', 0),
(68176, 68, 'Chima', 0),
(68179, 68, 'Chipatá', 0),
(68190, 68, 'Cimitarra', 0),
(68207, 68, 'Concepción', 0),
(68209, 68, 'Confines', 0),
(68211, 68, 'Contratación', 0),
(68217, 68, 'Coromoro', 0),
(68229, 68, 'Curití', 0),
(68235, 68, 'El carmen de chucurí', 0),
(68245, 68, 'El guacamayo', 0),
(68250, 68, 'El peñón', 0),
(68255, 68, 'El playón', 0),
(68264, 68, 'Encino', 0),
(68266, 68, 'Enciso', 0),
(68271, 68, 'Florián', 0),
(68276, 68, 'Floridablanca', 0),
(68296, 68, 'Galán', 0),
(68298, 68, 'Gambita', 0),
(68307, 68, 'Girón', 0),
(68318, 68, 'Guaca', 0),
(68320, 68, 'Guadalupe', 0),
(68322, 68, 'Guapotá', 0),
(68324, 68, 'Guavatá', 0),
(68327, 68, 'Guepsa', 0),
(68344, 68, 'Hato', 0),
(68368, 68, 'Jesús maría', 0),
(68370, 68, 'Jordán', 0),
(68377, 68, 'La belleza', 0),
(68385, 68, 'Landázuri', 0),
(68397, 68, 'La paz', 0),
(68406, 68, 'Lebríja', 0),
(68418, 68, 'Los santos', 0),
(68425, 68, 'Macaravita', 0),
(68432, 68, 'Málaga', 0),
(68444, 68, 'Matanza', 0),
(68464, 68, 'Mogotes', 0),
(68468, 68, 'Molagavita', 0),
(68498, 68, 'Ocamonte', 0),
(68500, 68, 'Oiba', 0),
(68502, 68, 'Onzaga', 0),
(68522, 68, 'Palmar', 0),
(68524, 68, 'Palmas del socorro', 0),
(68533, 68, 'Páramo', 0),
(68547, 68, 'Piedecuesta', 0),
(68549, 68, 'Pinchote', 0),
(68572, 68, 'Puente nacional', 0),
(68573, 68, 'Puerto parra', 0),
(68575, 68, 'Puerto wilches', 0),
(68615, 68, 'Rionegro', 0),
(68655, 68, 'Sabana de torres', 0),
(68669, 68, 'San andrés', 0),
(68673, 68, 'San benito', 0),
(68679, 68, 'San gil', 0),
(68682, 68, 'San joaquín', 0),
(68684, 68, 'San josé de miranda', 0),
(68686, 68, 'San miguel', 0),
(68689, 68, 'San vicente de chucurí', 0),
(68705, 68, 'Santa bárbara', 0),
(68720, 68, 'Santa helena del opón', 0),
(68745, 68, 'Simacota', 0),
(68755, 68, 'Socorro', 0),
(68770, 68, 'Suaita', 0),
(68773, 68, 'Sucre', 0),
(68780, 68, 'Surata', 0),
(68820, 68, 'Tona', 0),
(68855, 68, 'Valle de san josé', 0),
(68861, 68, 'Vélez', 0),
(68867, 68, 'Vetas', 0),
(68872, 68, 'Villanueva', 0),
(68895, 68, 'Zapatoca', 0),
(70001, 70, 'Sincelejo', 0),
(70110, 70, 'Buenavista', 0),
(70124, 70, 'Caimito', 0),
(70204, 70, 'Coloso', 0),
(70215, 70, 'Corozal', 0),
(70221, 70, 'Coveñas', 0),
(70230, 70, 'Chalán', 0),
(70233, 70, 'El roble', 0),
(70235, 70, 'Galeras', 0),
(70265, 70, 'Guaranda', 0),
(70400, 70, 'La unión', 0),
(70418, 70, 'Los palmitos', 0),
(70429, 70, 'Majagual', 0),
(70473, 70, 'Morroa', 0),
(70508, 70, 'Ovejas', 0),
(70523, 70, 'Palmito', 0),
(70670, 70, 'Sampués', 0),
(70678, 70, 'San benito abad', 0),
(70702, 70, 'San juan betulia', 0),
(70708, 70, 'San marcos', 0),
(70713, 70, 'San onofre', 0),
(70717, 70, 'San pedro', 0),
(70742, 70, 'Sincé', 0),
(70771, 70, 'Sucre', 0),
(70820, 70, 'Santiago de tolú', 0),
(70823, 70, 'Tolú viejo', 0),
(73001, 73, 'Ibague', 0),
(73024, 73, 'Alpujarra', 0),
(73026, 73, 'Alvarado', 0),
(73030, 73, 'Ambalema', 0),
(73043, 73, 'Anzoátegui', 0),
(73055, 73, 'Armero', 0),
(73067, 73, 'Ataco', 0),
(73124, 73, 'Cajamarca', 0),
(73148, 73, 'Carmen de apicalá', 0),
(73152, 73, 'Casabianca', 0),
(73168, 73, 'Chaparral', 0),
(73200, 73, 'Coello', 0),
(73217, 73, 'Coyaima', 0),
(73226, 73, 'Cunday', 0),
(73236, 73, 'Dolores', 0),
(73268, 73, 'Espinal', 0),
(73270, 73, 'Falan', 0),
(73275, 73, 'Flandes', 0),
(73283, 73, 'Fresno', 0),
(73319, 73, 'Guamo', 0),
(73347, 73, 'Herveo', 0),
(73349, 73, 'Honda', 0),
(73352, 73, 'Icononzo', 0),
(73408, 73, 'Lerida', 0),
(73411, 73, 'Libano', 0),
(73443, 73, 'Mariquita', 0),
(73449, 73, 'Melgar', 0),
(73461, 73, 'Murillo', 0),
(73483, 73, 'Natagaima', 0),
(73504, 73, 'Ortega', 0),
(73520, 73, 'Palocabildo', 0),
(73547, 73, 'Piedras', 0),
(73555, 73, 'Planadas', 0),
(73563, 73, 'Prado', 0),
(73585, 73, 'Purificación', 0),
(73616, 73, 'Rioblanco', 0),
(73622, 73, 'Roncesvalles', 0),
(73624, 73, 'Rovira', 0),
(73671, 73, 'Saldaña', 0),
(73675, 73, 'San antonio', 0),
(73678, 73, 'San luis', 0),
(73686, 73, 'Santa isabel', 0),
(73770, 73, 'Suárez', 0),
(73854, 73, 'Valle de san juan', 0),
(73861, 73, 'Venadillo', 0),
(73870, 73, 'Villahermosa', 0),
(73873, 73, 'Villarrica', 0),
(76001, 76, 'Cali', 0),
(76020, 76, 'Alcala', 0),
(76036, 76, 'Andalucía', 0),
(76041, 76, 'Ansermanuevo', 0),
(76054, 76, 'Argelia', 0),
(76100, 76, 'Bolívar', 0),
(76109, 76, 'Buenaventura', 0),
(76111, 76, 'Buga', 0),
(76113, 76, 'Bugalagrande', 0),
(76122, 76, 'Caicedonia', 0),
(76126, 76, 'Calima', 0),
(76130, 76, 'Candelaria', 0),
(76147, 76, 'Cartago', 0),
(76233, 76, 'Dagua', 0),
(76243, 76, 'El águila', 0),
(76246, 76, 'El cairo', 0),
(76248, 76, 'El cerrito', 0),
(76250, 76, 'El dovio', 0),
(76275, 76, 'Florida', 0),
(76306, 76, 'Ginebra', 0),
(76318, 76, 'Guacarí', 0),
(76364, 76, 'Jamundí', 0),
(76377, 76, 'La cumbre', 0),
(76400, 76, 'La unión', 0),
(76403, 76, 'La victoria', 0),
(76497, 76, 'Obando', 0),
(76520, 76, 'Palmira', 0),
(76563, 76, 'Pradera', 0),
(76606, 76, 'Restrepo', 0),
(76616, 76, 'Riofrio', 0),
(76622, 76, 'Roldanillo', 0),
(76670, 76, 'San pedro', 0),
(76736, 76, 'Sevilla', 0),
(76823, 76, 'Toro', 0),
(76828, 76, 'Trujillo', 0),
(76834, 76, 'Tuluá', 0),
(76845, 76, 'Ulloa', 0),
(76863, 76, 'Versalles', 0),
(76869, 76, 'Vijes', 0),
(76890, 76, 'Yotoco', 0),
(76892, 76, 'Yumbo', 0),
(76895, 76, 'Zarzal', 0),
(81001, 81, 'Arauca', 0),
(81065, 81, 'Arauquita', 0),
(81220, 81, 'Cravo norte', 0),
(81300, 81, 'Fortul', 0),
(81591, 81, 'Puerto rondón', 0),
(81736, 81, 'Saravena', 0),
(81794, 81, 'Tame', 0),
(85001, 85, 'Yopal', 0),
(85010, 85, 'Aguazul', 0),
(85015, 85, 'Chameza', 0),
(85125, 85, 'Hato corozal', 0),
(85136, 85, 'La salina', 0),
(85139, 85, 'Maní', 0),
(85162, 85, 'Monterrey', 0),
(85225, 85, 'Nunchía', 0),
(85230, 85, 'Orocué', 0),
(85250, 85, 'Paz de ariporo', 0),
(85263, 85, 'Pore', 0),
(85279, 85, 'Recetor', 0),
(85300, 85, 'Sabanalarga', 0),
(85315, 85, 'Sácama', 0),
(85325, 85, 'San luis de palenque', 0),
(85400, 85, 'Támara', 0),
(85410, 85, 'Tauramena', 0),
(85430, 85, 'Trinidad', 0),
(85440, 85, 'Villanueva', 0),
(86001, 86, 'Mocoa', 0),
(86219, 86, 'Colón', 0),
(86320, 86, 'Orito', 0),
(86568, 86, 'Puerto asis', 0),
(86569, 86, 'Puerto caicedo', 0),
(86571, 86, 'Puerto guzman', 0),
(86573, 86, 'Puerto leguizamo', 0),
(86749, 86, 'Sibundoy', 0),
(86755, 86, 'San francisco', 0),
(86757, 86, 'San miguel', 0),
(86760, 86, 'Santiago', 0),
(86865, 86, 'Valle del guamuez', 0),
(86885, 86, 'Villa garzon', 0),
(88001, 88, 'San andres', 0),
(88564, 88, 'Providencia y santa catalina', 0),
(91001, 91, 'Leticia', 0),
(91263, 91, 'El encanto', 0),
(91405, 91, 'La chorrera', 0),
(91407, 91, 'La pedrera', 0),
(91430, 91, 'La victoria', 0),
(91460, 91, 'Miriti - paraná', 0),
(91530, 91, 'Puerto alegria', 0),
(91536, 91, 'Puerto arica', 0),
(91540, 91, 'Puerto nariño', 0),
(91669, 91, 'Puerto santander', 0),
(91798, 91, 'Tarapacá', 0),
(94001, 94, 'Inírida', 0),
(94343, 94, 'Barranco mina', 0),
(94663, 94, 'Mapiripan', 0),
(94883, 94, 'San felipe', 0),
(94884, 94, 'Puerto colombia', 0),
(94885, 94, 'La guadalupe', 0),
(94886, 94, 'Cacahual', 0),
(94887, 94, 'Pana pana', 0),
(94888, 94, 'Morichal', 0),
(95001, 95, 'San josé del guaviare', 0),
(95015, 95, 'Calamar', 0),
(95025, 95, 'El retorno', 0),
(95200, 95, 'Miraflores', 0),
(97001, 97, 'Mitú', 0),
(97161, 97, 'Caruru', 0),
(97511, 97, 'Pacoa', 0),
(97666, 97, 'Taraira', 0),
(97777, 97, 'Papunahua', 0),
(97889, 97, 'Yavaraté', 0),
(99001, 99, 'Puerto carreño', 0),
(99524, 99, 'La primavera', 0),
(99624, 99, 'Santa rosalía', 0),
(99773, 99, 'Cumaribo', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(11) NOT NULL,
  `nom_nivel` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `nom_nivel`) VALUES
(1, 'Complementario Virtual'),
(2, 'Curso Especial'),
(3, 'Especialización Tecnológico'),
(4, 'Operario'),
(5, 'Profundización Técnica'),
(6, 'Técnico'),
(7, 'Tecnólogo'),
(8, 'Auxiliar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id` int(11) NOT NULL,
  `perfil` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `perfil`) VALUES
(65, 'Requisitos Académicos:\nTÍTULO PROFESIONAL EN ÁREAS DE LA SALUD CON POSTGRADO EN AUDITORIA EN SALUD O GESTIÓN DE LA\nCALIDAD O GERENCIA DE LA CALIDAD.\nExperiencia laboral y/o especialización:\nMÍNIMO 12 MESES DE EXPERIENCIA EN PROCESOS DE ASEGURAMIENTO DE LA CALIDAD O AUDITORIA EN\nSALUD.'),
(66, 'Requisitos academicos: TÍTULO PROFESIONAL EN ÁREAS DE LA SALUD CON POSTGRADO EN AUDITORIA EN SALUD O GESTIÓN DE LA CALIDAD O GERENCIA DE LA CALIDAD. Experiencia Laboral;MÍNIMO 12 MESES DE EXPERIENCIA EN PROCESOS DE ASEGURAMIENTO DE LA CALIDAD O AUDITORIA EN SALUD.\n\nMÍNIMO 12 MESES DE EXPERIENCIA DOCENTE.'),
(67, 'Requisitos academicos: TÍTULO PROFESIONAL EN EL ÁREA DE SALUD O ADMINISTRACIÓN DE EMPRESAS CON POSTGRADO EN ADMINISTRACIÓN EN SALUD O ÁREAS AFINES A LA ADMINISTRACIÓN. Experiencia Laboral;MÍNIMO 12 MESES DE EXPERIENCIA EN EL MANEJO DE RECURSOS FÍSICOS EN INSTITUCIONES DE SALUD.\n\nMÍNIMO 12 MESES DE EXPERIENCIA DOCENTE.'),
(68, 'Requisitos academicos: TÍTULO PROFESIONAL EN ÁREAS DE LA SALUD, CON POSTGRADO EN EPIDEMIOLOGÍA O SALUD PÚBLICA. Experiencia Laboral;MÍNIMO 12 MESES DE EXPERIENCIA EN SALUD PÚBLICA Y/O EPIDEMIOLOGÍA\n\nMÍNIMO 12 MESES EXPERIENCIA DOCENTE.'),
(69, 'Requisitos academicos: TÍTULO PROFESIONAL EN ÁREAS DE LA SALUD O ADMINISTRACIÓN EN SALUD O ADMINISTRACIÓN CON POSTGRADO EN GERENCIA DE SERVICIOS EN SALUD O ADMINISTRACIÓN EN SALUD O TALENTO HUMANO Y/O GERENCIA DE RECURSOS HUMANOS. Experiencia Laboral;MÍNIMO 12 MESES DE EXPERIENCIA EN PROCESOS ADMINISTRATIVOS  DEL  TALENTO HUMANO EN SALUD\n\nMÍNIMO 12 MESES DE EXPERIENCIA DOCENTE.'),
(70, 'Requisitos academicos: TÍTULO PROFESIONAL EN ÁREAS DE LA SALUD O ADMINISTRACIÓN EN SALUD, CON POSGRADO EN ADMINISTRACIÓN EN SALUD O  AUDITORIA EN SALUD O GERENCIA EN SALUD. Experiencia Laboral;MÍNIMO 12 MESES DE EXPERIENCIA EN GESTIÓN DE PROCESOS ADMINISTRATIVOS DE SALUD.\n\nMÍNIMO 12 MESES EXPERIENCIA DOCENTE.'),
(71, 'Requisitos academicos: TÍTULO PROFESIONAL EN ADMINISTRACIÓN DE SALUD O  ADMINISTRACIÓN DE EMPRESAS CON POSTGRADO EN GERENCIA DE MERCADEO O ÁREAS AFINES. Experiencia Laboral;MÍNIMO 12 MESES DE EXPERIENCIA EN GESTIÓN DE PROCESOS ADMINISTRATIVOS DE SALUD.\n\nMÍNIMO 12 MESES EXPERIENCIA DOCENTE.'),
(72, 'Requisitos académicos: Profesional especializado en seguridad y salud en el trabajo con formación en gestión ambiental o educación ambiental. Ingeniero ambiental, ecólogo o profesiones afines con formación en seguridad y salud en el trabajo. Profesional con especialización en gestión ambiental y seguridad y salud en el trabajo. Profesional en salud ocupacional, en seguridad y salud en el trabajo, en administración de riesgo y seguridad y salud en el trabajo, administración de la seguridad y salud ocupacional o ingeniero en seguridad y salud en el trabajo.  Título profesional universitario en núcleos básicos de conocimiento de biología, microbiología y afines; o ingeniería sanitaria y afines; o educación; o ingeniería industrial y afines. Tecnólogo en control ambiental con formación demostrada en seguridad y salud en el trabajo. Tecnólogo en salud ocupacional o seguridad y salud en el trabajo con formación en gestión ambiental.   Tecnólogo en gestión de la seguridad y salud en el trabajo, gestión de calidad, seguridad en el trabajo y ambiente, gestión ambiental o en gestión integrada de la calidad, medio ambiente, seguridad y salud ocupacional.  título de tecnólogo en el núcleo básico de conocimiento de salud pública; o ingeniería civil y afines; ver anexos(n. B. C. ), (titulos sena) con licencia en salud ocupacional,  Título profesional universitario en el núcleo básico de conocimiento de salud pública; o ingeniería química y afines; o ingeniería de minas, metalurgia y afines; o medicina; o terapias; o enfermería; o sociología, trabajo social y afines; o administración (ver anexo n. B. C) con licencia en salud ocupacional. Licenciado en educación física profesional en ciencias del deporte. Tecnólogo en actividad física o entrenamiento deportivo con especialización tecnológica relacionada con el área de conocimiento. Experiencia laboral: mínimo 12 meses de experiencia laboral en el área objeto del desempeño. Tecnólogo en salud ocupacional, tecnólogo en gestión integrada de la calidad, medio ambiente, seguridad y salud ocupacional, tecnólogo en control integrado de la calidad, medio ambiente, seguridad y salud ocupacional, tecnólogo en gestión en salud ocupacional, o tecnólogo en gestión de salud ocupacional, seguridad y medio ambiente.  Profesional en salud ocupacional o administración de la seguridad y salud ocupacional, profesional en cualquier área del conocimiento con posgrado en seguridad y salud en el trabajo, en higiene y salud ocupacional, gerencia en salud ocupacional, en salud ocupacional e higiene del trabajo, en administración de salud ocupacional, en salud ocupacional y ambiental, salud ocupacional y riesgos laborales, en salud ocupacional, gerencia y control de riesgos, en hseq sistemas integrados de seguridad y salud ocupacional ambiental y calidad, en higiene, seguridad y salud en el trabajo, en sistemas integrados de gestión, seguridad y salud en el trabajo o en gestión integrada de la seguridad y salud en el trabajo, calidad y medio ambiente. \nExperiencia laboral: veinticuatro (24) meses de los cuales dieciocho (18) meses estarán relacionados con el ejercicio de la profesión u oficio objeto de la formación profesional y seis (6) meses en labores de docencia.   Certificar cursos de formación en pedagogía de mínimo 40 horas o presentar certificación de competencia laboral vigente en orientación de procesos formativos presenciales'),
(73, 'Requisitos académicos: Certificado de Aptitud Profesional – SENA, o certificado por autoridad competente en cualquiera de las nueve áreas de desempeño de la CNO y en el nivel ocupacional 2,3 o 4 (Ver anexo C. N.O). Opción 1: Certificado de técnico, o certificado por autoridad competente en cualquiera de las nueve áreas de desempeño de la CNO y en el nivel ocupacional 3 o 4 (Ver anexo C. N.O). Opción 2:  Título de Técnico Profesional en cualquiera de los 55 núcleos básicos de conocimiento, o en NULL o Sin clasificar. Ver anexos: (N.B.C.), (TITULOS SENA).  Opción 3: Título de Tecnólogo en cualquiera de los 55 núcleos básicos de conocimiento, o en NULL o Sin clasificar. Ver anexos: (N.B.C.), (TITULOS SENA).  Opción 4: Título Profesional universitario en cualquiera de los 55 núcleos básicos de conocimiento, o en NULL o Sin clasificar. (Ver anexo N.B.C) Tarjeta profesional en los casos exigidos por la Ley \n \nExperiencia laboral:  Cuarenta y ocho (48) meses de experiencia relacionada distribuida así:  Treinta y seis (36) meses de experiencia relacionada con el ejercicio de los derechos humanos y fundamentales del trabajo y doce (12) meses en docencia o instrucción certificada por entidad legalmente reconocida.  \n \nOpción 1: Cuarenta y dos (42) meses de experiencia relacionada distribuida así:  Treinta (30) meses de experiencia relacionada con el ejercicio de los derechos humanos y fundamentales del trabajo y Doce (12) meses en docencia o instrucción certificada por entidad legalmente reconocida.  \nOpción 2: Treinta y seis (36) meses de experiencia relacionada distribuida así: Veinticuatro (24) meses de experiencia relacionada con el ejercicio de los derechos humanos y fundamentales del trabajo y doce (12) meses en docencia o instrucción certificada por entidad legalmente reconocida. \nOpción 3: Treinta (30) meses de experiencia relacionada distribuida así:  Dieciocho (18) meses de experiencia relacionada con el ejercicio de los derechos humanos y fundamentales del trabajo y doce (12) meses en docencia o instrucción certificada por entidad legalmente reconocida  \nOpción 4: Veinticuatro (24) meses de experiencia relacionada distribuida así: Doce (12) meses de experiencia relacionada con el ejercicio de los derechos humanos y fundamentales del trabajo y doce (12) meses en docencia o instrucción certificada por entidad legalmente reconocida. \n \nCompetencias:\n\n1. Crea espacios pedagógicos de reflexión y apropiación para la valoración de los derechos y deberes en el trabajo   \n2. Interpreta la relación entre el trabajo y el desarrollo humano.  \n3. Identifica la naturaleza de los derechos humanos y del trabajo.  \n4. Genera procesos de interacción social interacciones en el marco de los derechos humanos y laborales para el desarrollo social para el desarrollo de con autonomía y dignidad.  \n5. Implementa acciones para la elaboración el diligenciamiento de documentos relacionados con la política pública, de salarios y los acuerdos internacionales de la OIT y los derechos económicos, sociales y de bienestar derivadas de las acciones laborales.  \n6. Argumenta los derechos el ejercicio de los derechos fundamentales del trabajo y los mecanismos de protección como ejercicio de la ciudadanía laboral.  \n7. Organiza acciones pedagógicas para la aplicación de los principios de los derechos de asociación.  \n8. Integra acciones de solidaridad para la defensa del ser humano, la naturaleza y la cultura de la paz. y los valores de la convivencia la paz y la ciudadana.'),
(74, 'Requisitos académicos: Opción 1: profesionales en ciencias sociales, filosofía, o antropología, o psicología, o trabajo social, o sociología o teología, ciencia política, relaciones internacionales o afines. Opción 2: Profesional con estudios relacionados en ética, o bioética, o deontología o humanismo, formación en pedagogía de mínimo 40 horas.\nExperiencia laboral: veinticuatro (24) meses de experiencia de los cuales dieciocho (18) meses estarán relacionados con el ejercicio de la profesión u oficio objeto de la formación profesional y seis (6) meses en labores de docencia y/o trabajo comunitario.'),
(75, 'Requisitos académicos: Licenciado en educación física.  Tecnólogo en el núcleo básico de conocimiento dedeportes, educación física y recreación alternativa, Profesional en ciencias del deporte.  Título profesional universitario el núcleo básico de conocimiento dedeportes, educación física y recreación; o educación física y afines; o educación, Tecnólogo en actividad física o entrenamiento deportivo con especialización tecnológica relacionada con el área de conocimiento.   Experiencia laboral: Opción 1: treinta (30) meses de experiencia relacionada distribuida así dieciocho (18) meses de experiencia relacionada con el ejercicio de cultura física y doce (12) meses en docencia, Opción 2: veinticuatro (24) meses de experiencia relacionada distribuida asídoce (12) meses de experiencia relacionada con el ejercicio de la cultura física y doce (12) meses en docencia, adicionalmente certificar cursos de formación en pedagogía de mínimo 40 horas o presentar certificación de competencia laboral vigente en orientación de procesos formativos presenciales.\n'),
(76, 'Requisitos académicos: Profesional en ciencias económicas o financieras, profesional en administración de empresas, profesional en mercadeo, contaduría pública, ingeniería administrativa y afines, profesional en ingeniería industrial o afines, profesional en filosofía, antropología, psicología, trabajo social, sociología o afines, profesional con estudios relacionados en ética, o bioética, o de ontología o humanismo, certificar cursos de formación en pedagogía de mínimo 40 horas.\nExperiencia laboral: veinticuatro (24) meses de experiencia de los cuales doce (12) meses estarán relacionados con el ejercicio de la profesión u oficio objeto de la formación profesional y doce (12) meses en labores de docencia.'),
(77, 'Requisitos academicos: PROFESIONAL EN ÁREAS DE SALUD, CON ESPECIALIZACIÓN EN EPIDEMIOLOGÍA. Experiencia Laboral;MÍNIMO 24 MESES DE EXPERIENCIA EN EL ÁREA.\n\nMÍNIMO 6 MESES DE EXPERIENCIA DOCENTE.'),
(78, 'Requisitos académicos: Licenciado en matemáticas, título profesional en núcleos básicos de conocimiento de educación matemáticas, estadística y afines o ingeniero afín al programa de formación, profesional en ciencias económicas o afines profesional en administración de empresas o afine profesional en mercadeo o afines profesional en ingeniería industrial o afines, certificar cursos de formación en pedagogía de mínimo 40 horas. Experiencia laboral: veinticuatro (24) meses de experiencia distribuida así: doce (12) meses de experiencia relacionada con el ejercicio de matemáticas y doce (12) meses en docencia.'),
(79, 'Requisitos academicos: INSTRUCTOR TÉCNICO DEL PROGRAMA\n\nINSTRUCTORES COMPETENCIAS CLAVES, TRANSVERSALES\n\nEQUIPO DE BIENESTAR  Y LIDERAZGO AL APRENDIZ\n\nRELACIONES CORPORATIVAS\n\nADMINISTRACIÓN EDUCATIVA\n\nCOORDINADORES MISIONALES Y ACADÉMICOS\n\nSUBDIRECTOR DE CENTRO Experiencia Laboral;MÍNIMO 24 MESES DE EXPERIENCIA RELACIONADA , DISTRIBUIDA ASÍ: 12 MESES DE EXPERIENCIA RELACIONADA CON EL EJERCICIO DE SUS FUNCIONES,  Y \n\nMÍNIMO12 MESES DE EXPERIENCIA DOCENTE'),
(80, 'Requisitos academicos: TECNÓLOGO O PROFESIONAL EN ÁREAS AFINES CON TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN Experiencia Laboral;MÍNIMO, DIECIOCHO (18) MESES DE EXPERIENCIA LABORAL, DE LOS CUALES DOCE (12) MESES ESTARÁN RELACIONADOS CON EL EJERCICIO DE LA PROFESIÓN U OFICIO OBJETO DE LA FORMACIÓN PROFESIONAL Y SEIS (6) MESES EN LABORES DE DOCENCIA EN EL ÁREA.'),
(81, 'Requisitos academicos: El Programa Requiere De Un Equipo De Instructores Técnicos, Conformado Por Profesionales Formados En Alguna De Las Siguientes Áreas\nCiencias Económicas O Afines\nFormación Profesional En Áreas De Administración Empresarial, Pública, O Negocios,Psicología, Sociología, Comunicacoón Social Y Áreas De La Salud Ingeniería Industrial O Afines\nAlternativa 1. \nTítulo De Tecnólogo O Cuatro (4) Años Estudios Universitarios Enciencias Económicas, Ingeniería Industrial, Admininsitración Pública, De Empresas O Negocios, Psicología O Áreas Afines, Comunicación Social, Sociología Y Ciencias De La Salud. Experiencia Laboral Preferiblemente Con Especialización En Gerencia Del Talento Humano, Salud Ocupacional O Áreas Afines\nAlternativa 1\nVeinticuatro (24) Meses De ExperienciaDe Los Cuales Dieciocho (18) Meses Estarán Relacionados Con El Ejercicio De La Profesión U Oficio Objeto De La Formación Profesional Y Seis (6) Meses En Labores De Docencia\nAlternativa 2\nTreinta Y Seis (36) Meses De ExperienciaDe Los Cuales Treinta (30) Meses Estarán Relacionados Con El Ejercicio De La Profesión U Oficio Objeto De La Formación Profesional Y Seis (6) Meses En Labores De Docencia'),
(82, 'Requisitos Académicos: Para el desarrollo integral de esta competencia se requiere la participación de diferentes profesionales asociados a perfiles académicos relacionados con los resultados de aprendizajes específicos, así: - Opción 1: Certificación en formación basada en competencias laborales y/o en aprendizaje por proyectos o relacionadas. - Opción 2: Profesional que tenga competencias humanísticas y formación en Ciencias Humanas. - Opción 3: Profesional educación física, recreación y deportes. - Opción 4: Profesional ciencias de la salud ocupacional. - Experiencia Laboral: - Tener experiencia mínima en procesos de formación o actividades laborales de 2 años en el área de desarrollo humano con el enfoque basado en competencias laborales. - Competencias: - Gestionar procesos de desarrollo humano según las particularidades de los contextos sociales y productivos.  - Interactuar idóneamente consigo mismo con los demás y con la naturaleza según los contextos sociales y productivos.  - Promover el desarrollo de las actividades físicas que posibiliten el desempeño laboral seguro y eficaz, un estilo de vida saludable y el mejoramiento de  la calidad de vida  - Trabajar interdisciplinariamente en la planeación - ejecución y evaluación y mejoramiento del proceso de inducción. - Propiciar la integración y participación de los aprendices en el proceso de aprendizaje. - Orientar las actividades de aprendizaje para el logro de los resultados de aprendizaje del proceso de inducción motivando la actuación protagónica de los aprendices. - Integrar a los procesos de la inducción los recursos tecnológicos disponibles.'),
(83, 'Requisitos Academicos: El programa requiere de un equipo de instructores técnicos, conformado por Profesionales formados en alguna de las siguientes áreas: \n\n-	Contador Publico\n\n-	Economista\n\n-	Administrador de empresas\n\n-	Ingeniero Industrial\n\n-	Ingeniero Financiero\n\nAlternativa 1. \n\nTítulo de Tecnólogo o cuatro (4) años estudios universitarios en: ciencias económicas, ingeniería financiera o afines.\n\nAlternativa 2. \n\nTítulo de Técnico Profesional o Tres (3) años estudios universitarios en: ciencias económicas, ingeniería financiera o afines. Experiencia Laboral: Preferiblemente con especialización en finanzas o afines.\n\nPreferiblemente con experiencia laboral en el desarrollo de actividades relacionadas con las áreas de mercado de capitales, administración y planeación financiera.\n\n\n\nAlternativa 1. \n\nVeinticuatro (24) meses de experiencia: de los cuales dieciocho (18) meses estarán relacionados con el ejercicio de la profesión u oficio objeto de la formación profesional y seis (6) meses en labores de docencia. \n\nAlternativa 2: \n\nTreinta y seis (36) meses de experiencia: de los cuales treinta (30) meses estarán relacionados con el ejercicio de la profesión u oficio objeto de la formación profesional y seis (6) meses en labores de docencia.'),
(84, 'Opción 1: Título profesional universitario en cualquier núcleo básico de conocimiento. Nivel de lengua certificado* de mínimo B2 de acuerdo con el MCER en cada una de las 4 habilidades de dominio de lengua (Comprensión oral, Comprensión escrita, Producción oral, Producción escrita). Veinticuatro (24) meses de experiencia en la instrucción/docencia de la lengua extranjera a impartir. Opción 2: Título tecnólogo en cualquier núcleo básico de conocimiento. Nivel de lengua certificado* de mínimo B2 de acuerdo con el MCER en cada una de las 4 habilidades de dominio de lengua (Comprensión oral, Comprensión escrita, Producción oral, Producción escrita). Treinta (30) meses de experiencia en la instrucción/docencia de la lengua extranjera a impartir.\n\nLos instructores para programas de formación complementaria virtual, incluyendo bilingüismo, deberán acreditar capacitación relacionada con tutoría virtual, no inferior a 40 horas, además de cumplir los requisitos del perfil establecido en los diseños curriculares de cada programa como perfiles de instructor (en el caso de bilingüismo, el perfil está definido en el numeral 8 de la presente circular).\nLos instructores que se contraten para orientar programas de formación titulada virtual o titulada a distancia, deberán acreditar capacitación relacionada con tutoría virtual, no inferior a 40 horas; tener experiencia certificada de mínimo seis (6) meses como tutor virtual, además de cumplir los requisitos del perfil establecido en los diseños curriculares de cada programa.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_instructor`
--

CREATE TABLE `perfil_instructor` (
  `id` int(11) NOT NULL,
  `nDocPerfil` int(11) NOT NULL,
  `Titulo` char(100) NOT NULL,
  `fechaRegistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfil_instructor`
--

INSERT INTO `perfil_instructor` (`id`, `nDocPerfil`, `Titulo`, `fechaRegistro`) VALUES
(44, 1313343433, 'Ingeniero En Sistemas', '2023-11-17 04:32:35'),
(62, 10, 'Programador', '2023-11-20 12:57:12'),
(70, 1007418534, 'Analista De Datos', '2023-11-30 11:12:32'),
(72, 1028881072, 'Ingeniero En Sistemas', '2023-11-30 11:19:31'),
(73, 1079232134, 'Ingenieria En Sistemas', '2023-11-30 11:23:10'),
(74, 1079232134, 'Maestria En Implementacion De Tecnologias (tic)', '2023-11-30 11:23:10'),
(75, 1010171759, 'Ingeniera En Sistemas', '2023-11-30 11:26:06'),
(76, 1077967749, 'Ingeniero Mecatrónico', '2023-11-30 11:29:12'),
(77, 1077967201, 'Profesional En Análisis De Datos, E Ingeniero En Sistema', '2023-11-30 11:31:03'),
(78, 1077966218, 'Ingeniero En Sistemas', '2023-12-01 06:37:29'),
(79, 1023865952, 'Analisata Y Desarrollador De Software', '2023-12-01 06:39:29'),
(80, 1072744835, 'Análisis Y Desarrollo De Software', '2023-12-01 06:41:48'),
(81, 1003567420, 'Especialista En Idiomas', '2023-12-01 06:45:22'),
(82, 1003567420, 'Ingeniero De Obras', '2023-12-01 06:45:22'),
(83, 1003533479, 'Ingeniero Agrónomo', '2023-12-01 06:48:32'),
(84, 1003533479, 'Ingeniero Civil', '2023-12-01 06:48:32'),
(85, 1022929659, 'Ingeniero De Software', '2023-12-01 06:52:39'),
(88, 1016944233, 'Contador Publico', '2023-12-01 08:32:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perf_competencias`
--

CREATE TABLE `perf_competencias` (
  `id` int(11) NOT NULL,
  `codigoCurso` int(11) NOT NULL,
  `codifoCompetencia` int(11) NOT NULL,
  `Tipocompetencia` int(11) NOT NULL,
  `perfilInstructor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perf_competencias`
--

INSERT INTO `perf_competencias` (`id`, `codigoCurso`, `codifoCompetencia`, `Tipocompetencia`, `perfilInstructor`) VALUES
(10, 2, 8790, 3, 82);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `T_doc` int(11) NOT NULL,
  `num_doc` int(11) NOT NULL,
  `genero` int(11) NOT NULL,
  `rol` int(11) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `Telefono` double NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `departamento` int(11) NOT NULL,
  `municipio` int(11) NOT NULL,
  `foto` varchar(150) NOT NULL DEFAULT 'undraw_profile.png',
  `fechaRegistro` datetime NOT NULL,
  `fechaSession` datetime NOT NULL,
  `fechaFinContrato` date NOT NULL,
  `supervisor` int(11) DEFAULT NULL,
  `estado` int(1) NOT NULL DEFAULT 1,
  `editadoUltimaVez` int(11) DEFAULT NULL,
  `registradoPor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id`, `T_doc`, `num_doc`, `genero`, `rol`, `Correo`, `nombres`, `apellidos`, `Telefono`, `fechaNacimiento`, `contrasena`, `departamento`, `municipio`, `foto`, `fechaRegistro`, `fechaSession`, `fechaFinContrato`, `supervisor`, `estado`, `editadoUltimaVez`, `registradoPor`) VALUES
(1, 1, 10, 2, 4, 'jonatan@gmail.com', 'Jonatan Stiven', 'Gutierrez Nieto', 3142975647, '2003-09-10', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 25, 25402, 'Sena_10.jpg', '2023-11-17 21:56:52', '2023-12-18 11:48:19', '2023-12-31', NULL, 1, NULL, NULL),
(2, 1, 1313343433, 2, 1, 'emerson@gmail.com', 'Emerson', 'Galeano', 3120204411, '2000-07-06', 'c64e8cb12c4f08e6b2b522119d657aee71de0c27', 25, 25875, 'undraw_profile.png', '2023-11-17 04:32:35', '2023-12-04 08:28:38', '2023-12-31', NULL, 1, 10, 10),
(20, 1, 1007418534, 2, 2, 'jonatanbecerra7@gmail.com', 'Jonatan Andres', 'Becerra Sanchez', 3192588638, '2000-08-20', 'a22d7cd2be6a1923997f10a4b1fb60c2f44c557e', 25, 25875, 'undraw_profile.png', '2023-11-30 11:12:32', '2023-12-04 04:09:16', '2024-06-13', 1313343433, 1, 10, 10),
(21, 1, 1016944233, 2, 2, 'julianemirog@gmail.com', 'Julian Esteban', 'González Pérez', 3229520366, '2004-05-14', 'da8e89e1c74e0c24f4d51db03079dc0b85c81793', 25, 25491, 'undraw_profile.png', '2023-11-30 11:16:34', '2023-11-30 11:16:34', '2023-12-25', 1313343433, 1, 1313343433, 10),
(22, 1, 1028881072, 2, 4, 'diegofer.robayo2005@gmail.com', 'Diego Fernando', 'Robayo Rodriguez', 3214615499, '2005-09-07', '5dbd21e3bd1e1a30c694d4ebb1884288565af297', 25, 25875, 'undraw_profile.png', '2023-11-30 11:19:31', '2023-12-04 08:43:26', '2023-12-31', NULL, 1, 10, 10),
(23, 1, 1079232134, 2, 2, 'calamjr.3619@gmail.com', 'Andrés Felipe', 'Peña Castro', 3224726204, '2004-09-15', '875876309a978f49ef42cf54adf477f99f61cbaf', 25, 25777, 'undraw_profile.png', '2023-11-30 11:23:10', '2023-12-04 08:38:38', '2023-12-31', 1313343433, 1, 10, 10),
(24, 1, 1010171759, 1, 3, 'danielaromero2005.06@gmail.com', 'Laura Daniela', 'Romero Aguirre', 3143435811, '2005-05-06', '39ba083e90de38ac3c5dbaa0d40feba592f13c46', 25, 25875, 'undraw_profile.png', '2023-11-30 11:26:06', '2023-11-30 11:26:06', '2023-12-31', 1016944233, 1, 10, 10),
(25, 1, 1077967749, 2, 3, 'camilocepeda1308@gmail.com', 'Cristian Camilo', 'Cepeda Lozano', 3142905652, '2005-08-13', '0ca9396b31b825713a99dad131e3df23fcc2e578', 25, 25875, 'undraw_profile.png', '2023-11-30 11:29:12', '2023-11-30 11:29:12', '2023-12-31', 1016944233, 1, 10, 10),
(26, 1, 1077967201, 2, 3, 'alejandrobarajastriana@gmail.com', 'Alejandro', 'Barajas Triana', 3203495911, '2005-04-18', '9608d309a2fa6f07d1e8141d44a6a2f030435a0f', 25, 25875, 'undraw_profile.png', '2023-11-30 11:31:03', '2023-11-30 11:31:03', '2023-12-31', 1007418534, 1, 10, 10),
(27, 1, 1077966218, 2, 3, 'fredyalexr12@gmail.com', 'Fredy Alexander', 'Romero Correal', 3203710877, '2004-03-21', 'a8641ac6df3cc471292badd338b6ab9689d56d95', 25, 25875, 'undraw_profile.png', '2023-12-01 06:37:29', '2023-12-01 06:37:29', '2023-12-31', 1016944233, 1, 10, 10),
(28, 1, 1023865952, 2, 3, 'dannyurquijo4@gmail.com', 'Danny Jahir', 'Urquijo Vargas', 3102818362, '2004-09-24', '6a7ee045c12d425c58cfdcc11f8eeb15e32ff59a', 11, 11001, 'undraw_profile.png', '2023-12-01 06:39:29', '2023-12-01 06:39:29', '2023-12-31', 1079232134, 1, 10, 10),
(29, 1, 1072744835, 2, 3, 'astridzulemajo0611@gmail.com', 'Julian David', 'Sanchez Vargas', 3114346064, '2005-01-31', '59192169d53556df5d6ce09b9cd596c3a58e4315', 25, 25875, 'undraw_profile.png', '2023-12-01 06:41:48', '2023-12-04 08:41:25', '2024-12-01', 1007418534, 1, 10, 10),
(30, 1, 1003567420, 2, 3, 'espinosac908@gmail.com', 'Carlos Arturo', 'Espinosa Gutierrez', 3106879966, '2003-08-18', '829e48b3835450af53a5f3d4b1e5de6cbe67c751', 25, 25875, 'undraw_profile.png', '2023-12-01 06:45:22', '2023-12-04 08:40:32', '2023-12-31', 1007418534, 1, 10, 10),
(31, 1, 1003533479, 2, 3, 'edis0n0rtega021@gmail.com', 'Edison Alberto', 'Ortega Gutierrez', 3204844710, '2002-10-31', '6f7db17fe7fe6f6faa8655ec491c2b45cacce9f4', 25, 25875, 'undraw_profile.png', '2023-12-01 06:48:32', '2023-12-01 06:48:32', '2023-12-31', 1007418534, 1, 10, 10),
(32, 1, 1022929659, 2, 3, 'avilaesteban191@gmail.com', 'Jfferson Esteban', 'Ávila Olaya', 3124912587, '2004-12-07', 'cf1c96efe3b0e165349e8451b455eba0bd0a991c', 25, 25875, 'undraw_profile.png', '2023-12-01 06:52:39', '2023-12-01 06:52:39', '2023-12-31', 1007418534, 1, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red_conocimiento`
--

CREATE TABLE `red_conocimiento` (
  `id` int(11) NOT NULL,
  `red_conocimiento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `red_conocimiento`
--

INSERT INTO `red_conocimiento` (`id`, `red_conocimiento`) VALUES
(1, 'Salud'),
(2, 'Gestión Administrativa Y Financiera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `Nom_regiones` varchar(11) NOT NULL,
  `id_depar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `Nom_regiones`, `id_depar`) VALUES
(0, 'Otra', 1),
(1, 'Magdalena C', 25),
(2, 'Gualivá ', 25),
(3, 'Rio Negro', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `Nombre` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `Nombre`) VALUES
(4, 'Administrador'),
(2, 'Coordinador'),
(1, 'Coordinador Misional'),
(3, 'Instructor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdocumento`
--

CREATE TABLE `tdocumento` (
  `id` int(11) NOT NULL,
  `Nombre` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tdocumento`
--

INSERT INTO `tdocumento` (`id`, `Nombre`) VALUES
(1, 'Cedula Ciudadania'),
(2, 'Cedula Extranjera'),
(3, 'Tarjeta de Extranjeria'),
(4, 'Nit'),
(5, 'Pasaporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomensaje`
--

CREATE TABLE `tipomensaje` (
  `id` int(11) NOT NULL,
  `importancia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipomensaje`
--

INSERT INTO `tipomensaje` (`id`, `importancia`) VALUES
(1, 'Normal'),
(2, 'Media'),
(3, 'Urgente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_competencia`
--

CREATE TABLE `tipo_competencia` (
  `id` int(11) NOT NULL,
  `tipo` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_competencia`
--

INSERT INTO `tipo_competencia` (`id`, `tipo`) VALUES
(1, 'Básica'),
(2, 'Técnica'),
(3, 'Etapa Productiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transversales`
--

CREATE TABLE `transversales` (
  `id` int(11) NOT NULL,
  `id_programa` int(11) NOT NULL,
  `PRF_CODIGO` varchar(11) NOT NULL,
  `PRF_DENOMINACION` varchar(100) NOT NULL,
  `PRF_DURACION_MAXIMA` int(5) NOT NULL,
  `CMP_TIPO_COMPETENCIA` varchar(100) NOT NULL,
  `CMP_PERFIL_INSTRUCTOR` varchar(1000) NOT NULL,
  `PRF_EXPERIENCIA_LABORAL_INST` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transversales`
--

INSERT INTO `transversales` (`id`, `id_programa`, `PRF_CODIGO`, `PRF_DENOMINACION`, `PRF_DURACION_MAXIMA`, `CMP_TIPO_COMPETENCIA`, `CMP_PERFIL_INSTRUCTOR`, `PRF_EXPERIENCIA_LABORAL_INST`) VALUES
(7, 134135, '0T06', 'Institucional de Pedagogía - Ciencias Naturales', 48, 'Ciencias Naturales', 'Título profesional en los núcleos de conocimiento de Biología, microbiología y afines, o Ingeniería química y afines, o Educación Tarjeta Profesional en los Casos Exigidos por la Ley', 'Veinticuatro (24) meses de experiencia distribuida así: Doce (12) meses de experiencia laboral relacionada con el desempeño en el área y doce (12) meses en docencia o instrucción.'),
(10, 228106, '0T09', 'Institucional de Pedagogía - Emprendimiento', 48, 'Emprendimiento', 'Título profesional en los núcleos de conocimiento de Contaduría pública, o Economía, o Ingeniería industrial y afines, o Administración. Tarjeta Profesional en los Casos Exigidos por la\nLey ', 'Veinticuatro (24) meses de experiencia distribuida así: Doce (12) meses de experiencia laboral relacionada con el desempeño en el área y doce (12) meses en docencia o instrucción.'),
(13, 134135, '0T12', 'Institucional de Pedagogía - Matemáticas', 48, 'Matemáticas', 'Título de Tecnólogo en núcleos básicos de conocimiento de: Educación; (SOLO TITULOS SENA). o Título Profesional universitario en núcleos básicos de conocimiento de: Educación; o Matemáticas, Estadística y Afines; o Física. (Ver anexo N.B.C). Tarjeta Profesional en los Casos Exigidos por la Ley.', 'Tecnólogo: Treinta (30) meses de experiencia distribuida así: Dieciocho (18) meses de experiencia laboral relacionada con el desempeño en el área y doce (12) meses en docencia o instrucción o instrucción, para Profesional: Veinticuatro (24) meses de experiencia distribuida así: Doce (12) meses de experiencia laboral relacionada con el desempeño en el área y doce (12) meses en docencia o instrucción.'),
(17, 228106, '0T16', 'Institucional de la Enseñanza de Idiomas - Ingles Virtual', 48, 'Ingles Virtual', 'Titulo de profesional o Tecnólogo en cualquier núcleo de conocimiento con Nivel de lengua certificado de mínimo B2 de acuerdo con el MCER en cada una de las cuatro (4) habilidades de dominio de lengua (Comprensión oral, Comprensión escrita, Producción oral, Producción escrita). El Servicio Nacional de Aprendizaje SENA acepta para la contratación de instructores de lenguas los\nexámenes internacionales enlistados en la Resolución 12730 del 28 de junio de 2017 del MEN con una vigencia máxima de 2 años.\nNo se aceptan aquellos exámenes catalogados en esta Resolución como “Clasificación (Placement)”, “Niños de 7 a 12 años (Young\nLearners)” y “Jóvenes (Teenagers)”). Ver al final de este documento en Anexo 1 la lista de exámenes admitidos por el SENA para tales fines. ', 'Para tecnólogo mínimo 24 meses en la orientación de procesos de capacitación o formación en la lengua extranjera en modalidad virtual - ingles. Para profesional 12 meses en la orientación de procesos de capacitación o formación en la lengua extranjera en modalidad virtual - ingles'),
(18, 134135, '0T17', 'Institucional de la Enseñanza de Idiomas - Ingles Presencial', 48, 'Ingles Presencial', 'Titulo de profesional o Tecnólogo en cualquier núcleo de conocimiento con Nivel de lengua certificado de mínimo B2 de acuerdo con el MCER en cada una de las cuatro (4) habilidades de dominio de lengua (Comprensión oral, Comprensión escrita, Producción oral, Producción escrita). El Servicio Nacional de Aprendizaje SENA acepta para la contratación de instructores de lenguas los\nexámenes internacionales enlistados en la Resolución 12730 del 28 de junio de 2017 del MEN con una vigencia máxima de 2 años.\nNo se aceptan aquellos exámenes catalogados en esta Resolución como “Clasificación (Placement)”, “Niños de 7 a 12 años (Young\nLearners)” y “Jóvenes (Teenagers)”). Ver al final de este documento en Anexo 1 la lista de exámenes admitidos por el SENA para tales fines. ', 'Para tecnólogo mínimo 24 meses en la orientación de procesos de capacitación o formación en la lengua extranjera en inglés, para profesional 12 meses de experiencia en procesos de capacitación en idioma ingles');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignacion_instructor`
--
ALTER TABLE `asignacion_instructor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competencia` (`nom_titulacion`),
  ADD KEY `num_doc` (`nDocInstructor`),
  ADD KEY `id_instructor` (`nDocInstructor`),
  ADD KEY `nivel` (`nivel`),
  ADD KEY `tipocompetencia` (`tipocompetencia`),
  ADD KEY `competencia_2` (`competencia`),
  ADD KEY `nDocRegistradoPor` (`nDocRegistradoPor`);

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `competencia`
--
ALTER TABLE `competencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_competencia` (`cod_competencia`),
  ADD KEY `tipoCompetencia` (`tipoCompetencia`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`iddpar`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estructura_curricular`
--
ALTER TABLE `estructura_curricular`
  ADD PRIMARY KEY (`codigo_prog`),
  ADD KEY `nivel` (`nivel`),
  ADD KEY `jornada` (`jornada`),
  ADD KEY `region` (`region`),
  ADD KEY `municipio` (`municipio`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `iniciosession`
--
ALTER TABLE `iniciosession`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nDocFecha` (`nDocFecha`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jornadas` (`Nombre`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo` (`tipo`),
  ADD KEY `num_doc_emisor` (`num_doc_emisor`),
  ADD KEY `num_doc_receptor` (`num_doc_receptor`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddepar` (`iddepar`),
  ADD KEY `id_region` (`id_region`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil_instructor`
--
ALTER TABLE `perfil_instructor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Cedula_inst` (`nDocPerfil`);

--
-- Indices de la tabla `perf_competencias`
--
ALTER TABLE `perf_competencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PRF_CODIGO` (`codigoCurso`),
  ADD KEY `Tipocompetencio` (`Tipocompetencia`),
  ADD KEY `PERFIL_INSTRUCTOR` (`perfilInstructor`),
  ADD KEY `codifoCompetencia` (`codifoCompetencia`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `num_doc` (`num_doc`),
  ADD UNIQUE KEY `Correo` (`Correo`),
  ADD UNIQUE KEY `Telefono` (`Telefono`),
  ADD KEY `Rol` (`rol`),
  ADD KEY `municipio` (`municipio`),
  ADD KEY `T_doc` (`T_doc`),
  ADD KEY `departamento` (`departamento`),
  ADD KEY `genero` (`genero`),
  ADD KEY `supervisor` (`supervisor`),
  ADD KEY `registradoPor` (`registradoPor`),
  ADD KEY `editadoUltimaVez` (`editadoUltimaVez`);

--
-- Indices de la tabla `red_conocimiento`
--
ALTER TABLE `red_conocimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_depar` (`id_depar`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Rol` (`Nombre`);

--
-- Indices de la tabla `tdocumento`
--
ALTER TABLE `tdocumento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipomensaje`
--
ALTER TABLE `tipomensaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_competencia`
--
ALTER TABLE `tipo_competencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transversales`
--
ALTER TABLE `transversales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignacion_instructor`
--
ALTER TABLE `asignacion_instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `calendario`
--
ALTER TABLE `calendario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `competencia`
--
ALTER TABLE `competencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `iniciosession`
--
ALTER TABLE `iniciosession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99774;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `perfil_instructor`
--
ALTER TABLE `perfil_instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `perf_competencias`
--
ALTER TABLE `perf_competencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `red_conocimiento`
--
ALTER TABLE `red_conocimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tdocumento`
--
ALTER TABLE `tdocumento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipomensaje`
--
ALTER TABLE `tipomensaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_competencia`
--
ALTER TABLE `tipo_competencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transversales`
--
ALTER TABLE `transversales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacion_instructor`
--
ALTER TABLE `asignacion_instructor`
  ADD CONSTRAINT `asignacion_instructor_ibfk_12` FOREIGN KEY (`nom_titulacion`) REFERENCES `estructura_curricular` (`codigo_prog`),
  ADD CONSTRAINT `asignacion_instructor_ibfk_14` FOREIGN KEY (`nivel`) REFERENCES `nivel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_instructor_ibfk_18` FOREIGN KEY (`tipocompetencia`) REFERENCES `tipo_competencia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_instructor_ibfk_20` FOREIGN KEY (`nDocInstructor`) REFERENCES `person` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_instructor_ibfk_22` FOREIGN KEY (`competencia`) REFERENCES `competencia` (`cod_competencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_instructor_ibfk_23` FOREIGN KEY (`nDocRegistradoPor`) REFERENCES `person` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `competencia`
--
ALTER TABLE `competencia`
  ADD CONSTRAINT `competencia_ibfk_1` FOREIGN KEY (`tipoCompetencia`) REFERENCES `tipo_competencia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estructura_curricular`
--
ALTER TABLE `estructura_curricular`
  ADD CONSTRAINT `estructura_curricular_ibfk_1` FOREIGN KEY (`nivel`) REFERENCES `nivel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estructura_curricular_ibfk_2` FOREIGN KEY (`jornada`) REFERENCES `jornada` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estructura_curricular_ibfk_3` FOREIGN KEY (`region`) REFERENCES `regiones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estructura_curricular_ibfk_4` FOREIGN KEY (`municipio`) REFERENCES `municipios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `iniciosession`
--
ALTER TABLE `iniciosession`
  ADD CONSTRAINT `iniciosession_ibfk_1` FOREIGN KEY (`nDocFecha`) REFERENCES `person` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`num_doc_emisor`) REFERENCES `person` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mensaje_ibfk_2` FOREIGN KEY (`num_doc_receptor`) REFERENCES `person` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mensaje_ibfk_3` FOREIGN KEY (`tipo`) REFERENCES `tipomensaje` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`iddepar`) REFERENCES `departamentos` (`iddpar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perfil_instructor`
--
ALTER TABLE `perfil_instructor`
  ADD CONSTRAINT `perfil_instructor_ibfk_1` FOREIGN KEY (`nDocPerfil`) REFERENCES `person` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perf_competencias`
--
ALTER TABLE `perf_competencias`
  ADD CONSTRAINT `perf_competencias_ibfk_1` FOREIGN KEY (`codigoCurso`) REFERENCES `estructura_curricular` (`codigo_prog`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `perf_competencias_ibfk_2` FOREIGN KEY (`codifoCompetencia`) REFERENCES `competencia` (`cod_competencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `perf_competencias_ibfk_3` FOREIGN KEY (`perfilInstructor`) REFERENCES `perfiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `perf_competencias_ibfk_4` FOREIGN KEY (`Tipocompetencia`) REFERENCES `tipo_competencia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`T_doc`) REFERENCES `tdocumento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `person_ibfk_3` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `person_ibfk_4` FOREIGN KEY (`municipio`) REFERENCES `municipios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `person_ibfk_5` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`iddpar`) ON UPDATE CASCADE,
  ADD CONSTRAINT `person_ibfk_6` FOREIGN KEY (`genero`) REFERENCES `genero` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `person_ibfk_7` FOREIGN KEY (`supervisor`) REFERENCES `person` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `person_ibfk_8` FOREIGN KEY (`editadoUltimaVez`) REFERENCES `person` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `person_ibfk_9` FOREIGN KEY (`registradoPor`) REFERENCES `person` (`num_doc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD CONSTRAINT `regiones_ibfk_1` FOREIGN KEY (`id_depar`) REFERENCES `departamentos` (`iddpar`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
