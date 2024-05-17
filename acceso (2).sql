-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2024 a las 18:24:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acceso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(3, 'Revisor'),
(4, 'Ponente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eje`
--

CREATE TABLE `eje` (
  `id_eje` int(11) NOT NULL,
  `nombre_eje` varchar(100) NOT NULL,
  `tema_eje` varchar(250) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `filesize` int(11) NOT NULL,
  `filetype` varchar(100) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `resumen_eje` varchar(250) NOT NULL,
  `fechaentrega_eje` date NOT NULL,
  `estado_eje` varchar(100) NOT NULL,
  `observa_eje` varchar(250) NOT NULL,
  `filenamer` varchar(100) NOT NULL,
  `filesizer` int(11) NOT NULL,
  `filetyper` varchar(100) NOT NULL,
  `upload_dater` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cedula_po` int(11) NOT NULL,
  `cedula_rev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eje`
--

INSERT INTO `eje` (`id_eje`, `nombre_eje`, `tema_eje`, `filename`, `filesize`, `filetype`, `upload_date`, `resumen_eje`, `fechaentrega_eje`, `estado_eje`, `observa_eje`, `filenamer`, `filesizer`, `filetyper`, `upload_dater`, `cedula_po`, `cedula_rev`) VALUES
(33, 'Desarrollo Sostenible', 'INVESTIGACION', 'INVENTARIO ITSJAPON.pdf', 133527, 'application/pdf', '2024-05-17 14:58:35', 'Proyecto', '2024-05-17', 'Aceptado', 'sddsfgdfgdfg', 'N/A', 0, 'N/A', '2024-05-17 14:58:35', 1719213150, 1719213104);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id`, `descripcion`) VALUES
(1, 'CONSERVATORIO SUPERIOR DE MÚSICA JOSÉ MARÍA RODRÍGUEZ'),
(2, 'INSTITUTO SUPERIOR TECNOLÓGICO DEL AZUAY'),
(3, 'INSTITUTO SUPERIOR TECNOLÓGICO EL LIBERTADOR'),
(4, 'INSTITUTO SUPERIOR TECNOLÓGICO ALFONSO HERRERA'),
(5, 'INSTITUTO SUPERIOR TECNOLÓGICO VICENTE FIERRO'),
(6, 'INSTITUTO SUPERIOR TECNOLÓGICO LA TRONCAL'),
(7, 'INSTITUTO SUPERIOR TECNOLÓGICO DEL AUSTRO'),
(8, 'INSTITUTO SUPERIOR PEDAGÓGICO INTERCULTURAL BILINGÜE QUILLOAC'),
(9, 'INSTITUTO SUPERIOR TECNOLÓGICO CARLOS CISNEROS'),
(10, 'INSTITUTO SUPERIOR TECNOLÓGICO RIOBAMBA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponencias`
--

CREATE TABLE `ponencias` (
  `ced_po` int(11) NOT NULL,
  `nom_po` varchar(250) NOT NULL,
  `apell_po` varchar(250) NOT NULL,
  `cel_po` varchar(10) NOT NULL,
  `mail_po` varchar(250) NOT NULL,
  `tit_po` varchar(250) NOT NULL,
  `id_institucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ponencias`
--

INSERT INTO `ponencias` (`ced_po`, `nom_po`, `apell_po`, `cel_po`, `mail_po`, `tit_po`, `id_institucion`) VALUES
(1719213150, 'Luis', 'Marcillo', '1523658987', 'lalvarez@gmail.com', '12345HA', 2),
(1719213151, 'Ricardo', 'Arias', '0998957504', 'rarias@itsjapon.edu.ec', 'Marketing', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `orcid` int(16) NOT NULL,
  `tema` varchar(250) NOT NULL,
  `autor` varchar(250) NOT NULL,
  `ced_ponencias` int(10) NOT NULL,
  `id_institucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`orcid`, `tema`, `autor`, `ced_ponencias`, `id_institucion`) VALUES
(1235454, 'MARKETING', 'ERAS LUIS', 1719213151, 3),
(2147483647, 'Desarrollo', 'Juan', 1719213150, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisores`
--

CREATE TABLE `revisores` (
  `ced_rev` int(11) NOT NULL,
  `nom_rev` varchar(250) NOT NULL,
  `apell_rev` varchar(250) NOT NULL,
  `correo_rev` varchar(250) NOT NULL,
  `cel_rev` varchar(10) NOT NULL,
  `area` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `revisores`
--

INSERT INTO `revisores` (`ced_rev`, `nom_rev`, `apell_rev`, `correo_rev`, `cel_rev`, `area`) VALUES
(1715256325, 'Pedro', 'Alvarez', 'lbegnini@itsjapon.edu.ec', '0895265214', 'Desarrollo e Investigación'),
(1719213104, 'NA', 'NA', 'NA@gmail.com', '0998545416', 'NA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `cedula` int(11) NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`cedula`, `contrasenia`, `id_cargo`) VALUES
(1719213103, '12345', 3),
(1719213108, '12345', 1),
(1719213150, '12345', 4),
(1719213151, '12345', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eje`
--
ALTER TABLE `eje`
  ADD PRIMARY KEY (`id_eje`),
  ADD KEY `cedula_rev` (`cedula_rev`),
  ADD KEY `cedula_po` (`cedula_po`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ponencias`
--
ALTER TABLE `ponencias`
  ADD PRIMARY KEY (`ced_po`),
  ADD KEY `id_institucion` (`id_institucion`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`orcid`),
  ADD KEY `ced_ponencias` (`ced_ponencias`),
  ADD KEY `id_institucion` (`id_institucion`);

--
-- Indices de la tabla `revisores`
--
ALTER TABLE `revisores`
  ADD PRIMARY KEY (`ced_rev`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `eje`
--
ALTER TABLE `eje`
  MODIFY `id_eje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eje`
--
ALTER TABLE `eje`
  ADD CONSTRAINT `eje_ibfk_2` FOREIGN KEY (`cedula_rev`) REFERENCES `revisores` (`ced_rev`),
  ADD CONSTRAINT `eje_ibfk_3` FOREIGN KEY (`cedula_po`) REFERENCES `ponencias` (`ced_po`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ponencias`
--
ALTER TABLE `ponencias`
  ADD CONSTRAINT `ponencias_ibfk_1` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proyecto_ibfk_2` FOREIGN KEY (`ced_ponencias`) REFERENCES `ponencias` (`ced_po`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
