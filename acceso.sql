-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2024 a las 17:32:45
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
(1, 'administrador'),
(2, 'cliente'),
(3, 'lector'),
(4, 'ponente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_nombre` varchar(20) DEFAULT NULL,
  `cat_estado` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `dep_id` int(11) NOT NULL,
  `dep_nombre` varchar(20) DEFAULT NULL,
  `dep_estado` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eje`
--

CREATE TABLE `eje` (
  `id_eje` int(11) NOT NULL,
  `resumen_eje` varchar(250) NOT NULL,
  `trabajo_eje` longblob NOT NULL,
  `fechaentrega_eje` date NOT NULL,
  `estado_eje` varchar(45) NOT NULL,
  `id_po` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eje`
--

INSERT INTO `eje` (`id_eje`, `resumen_eje`, `trabajo_eje`, `fechaentrega_eje`, `estado_eje`, `id_po`) VALUES
(1, 'trabajo de investigacón', 0x61637469762e506466, '2012-12-12', 'Aprobado', 1),
(2, 'Resumen de trabajo investigación', 0x656a652e706466, '2024-04-18', 'rechazado', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empre_id` int(11) NOT NULL,
  `empre_nombre` varchar(20) DEFAULT NULL,
  `empre_ruc` int(11) DEFAULT NULL,
  `empre_estado` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponencias`
--

CREATE TABLE `ponencias` (
  `id_po` int(11) NOT NULL,
  `nombre_po` varchar(45) NOT NULL,
  `apellido_po` varchar(45) NOT NULL,
  `cedula_po` int(11) NOT NULL,
  `celular_po` int(11) NOT NULL,
  `correo_po` varchar(45) NOT NULL,
  `institucion_po` varchar(45) NOT NULL,
  `titulo_po` varchar(45) NOT NULL,
  `estado_po` varchar(45) NOT NULL,
  `id_rev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ponencias`
--

INSERT INTO `ponencias` (`id_po`, `nombre_po`, `apellido_po`, `cedula_po`, `celular_po`, `correo_po`, `institucion_po`, `titulo_po`, `estado_po`, `id_rev`) VALUES
(1, 'Juan', 'Chasi', 1708984220, 998957504, 'juanch@itsjapon.edu.ec', 'Instituto Japon', '', 'Aprobado', 1),
(2, 'Adrian', 'Alvarez', 1719215856, 98565254, 'adal@gmail.com', 'Japon', 'Investigación', 'Rechazado', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `prod_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `mant_id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL,
  `prod_detalle` varchar(20) DEFAULT NULL,
  `prod_estado` varchar(20) DEFAULT NULL,
  `prod_fecha_ingreso` varchar(20) DEFAULT NULL,
  `prod_fecha_salida` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisores`
--

CREATE TABLE `revisores` (
  `id_rev` int(11) NOT NULL,
  `nombres_rev` varchar(45) NOT NULL,
  `apellidos_rev` varchar(45) NOT NULL,
  `cedula_rev` varchar(45) NOT NULL,
  `celular_rev` varchar(45) NOT NULL,
  `correo_rev` varchar(45) NOT NULL,
  `areaconocimiento` varchar(45) NOT NULL,
  `estado_rev` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `revisores`
--

INSERT INTO `revisores` (`id_rev`, `nombres_rev`, `apellidos_rev`, `cedula_rev`, `celular_rev`, `correo_rev`, `areaconocimiento`, `estado_rev`) VALUES
(1, 'Ricardo', 'Arias', '1719213108', '0991408984', 'riariasq@itsjapon.edu.ec', 'Desarrollo', 'Activo'),
(2, 'Juan', 'Chasi', '1789563248', '0658952658', 'jchasi@itsjapon.edu.ec', 'Investigación', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `usu_id` int(11) NOT NULL,
  `usu_nom` varchar(45) DEFAULT NULL,
  `usu_apell` varchar(45) DEFAULT NULL,
  `usu_mail` varchar(45) DEFAULT NULL,
  `usu_telf` int(11) DEFAULT NULL,
  `usu_estado` char(20) DEFAULT NULL,
  `empre_id` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`usu_id`, `usu_nom`, `usu_apell`, `usu_mail`, `usu_telf`, `usu_estado`, `empre_id`, `dep_id`, `cargo_id`) VALUES
(7, 'fdfgf', 'dfg', 'riv@gmail.com', 435345, 'activo', 0, 0, 0),
(8, 'dsadasd', 'asdsads', 'dasds@gmail.com', 12321321, 'activo', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contrasenia`, `id_cargo`) VALUES
(1, '1719213108', '12345', 1),
(2, 'invitado', '12345', 2),
(3, 'rarias', '12345', 3),
(4, 'gsopa', '12345', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indices de la tabla `eje`
--
ALTER TABLE `eje`
  ADD PRIMARY KEY (`id_eje`),
  ADD KEY `id_po` (`id_po`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empre_id`);

--
-- Indices de la tabla `ponencias`
--
ALTER TABLE `ponencias`
  ADD PRIMARY KEY (`id_po`),
  ADD KEY `id_rev` (`id_rev`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indices de la tabla `revisores`
--
ALTER TABLE `revisores`
  ADD PRIMARY KEY (`id_rev`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usu_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id_eje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ponencias`
--
ALTER TABLE `ponencias`
  MODIFY `id_po` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `revisores`
--
ALTER TABLE `revisores`
  MODIFY `id_rev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eje`
--
ALTER TABLE `eje`
  ADD CONSTRAINT `eje_ibfk_1` FOREIGN KEY (`id_po`) REFERENCES `ponencias` (`id_po`);

--
-- Filtros para la tabla `ponencias`
--
ALTER TABLE `ponencias`
  ADD CONSTRAINT `ponencias_ibfk_1` FOREIGN KEY (`id_rev`) REFERENCES `revisores` (`id_rev`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
