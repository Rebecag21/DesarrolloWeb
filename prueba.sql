-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2023 a las 07:18:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biografías`
--

CREATE TABLE `biografías` (
  `id_Biografias` varchar(10) NOT NULL,
  `Nombre` text DEFAULT NULL,
  `Anio_Nac` date DEFAULT NULL,
  `Ciudad_Nac` text DEFAULT NULL,
  `Estudios` text DEFAULT NULL,
  `Obras` text DEFAULT NULL,
  `Caracteristicas_Obra` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificaciones`
--

CREATE TABLE `edificaciones` (
  `id_Edificaciones` varchar(10) NOT NULL,
  `Nombre_Edificio` text DEFAULT NULL,
  `Anio` date DEFAULT NULL,
  `Genero` text DEFAULT NULL,
  `UsoActual` text DEFAULT NULL,
  `Biografia_Arquitecto` text DEFAULT NULL,
  `Ubicacion` text DEFAULT NULL,
  `Contexto_Historico` text DEFAULT NULL,
  `Descripcion_Espacio_Arq` text DEFAULT NULL,
  `Corriente_Estilistica` text DEFAULT NULL,
  `Materiales` text DEFAULT NULL,
  `Contexto_Urbano` text DEFAULT NULL,
  `Tranformaciones` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `urbanismo`
--

CREATE TABLE `urbanismo` (
  `id_Urbanismo` int(10) NOT NULL,
  `Nombre_Urbanismo` text DEFAULT NULL,
  `Anio_Urb` date DEFAULT NULL,
  `Función` text DEFAULT NULL,
  `Biografía_Arquitecto` text DEFAULT NULL,
  `Ubicación` text DEFAULT NULL,
  `Contexto_Historico` text DEFAULT NULL,
  `PlanUrb_PoliticaUrb` text DEFAULT NULL,
  `CaracteristicasParticulares` text DEFAULT NULL,
  `Transformaciones` text DEFAULT NULL,
  `Orientacion` text DEFAULT NULL,
  `Dimensiones` text DEFAULT NULL,
  `Secciones` text DEFAULT NULL,
  `Elementos_Img_Urb` text DEFAULT NULL,
  `Tipos_Edific` text DEFAULT NULL,
  `Principios_Diseño` text DEFAULT NULL,
  `Importancia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `biografías`
--
ALTER TABLE `biografías`
  ADD PRIMARY KEY (`id_Biografias`);

--
-- Indices de la tabla `edificaciones`
--
ALTER TABLE `edificaciones`
  ADD PRIMARY KEY (`id_Edificaciones`);

--
-- Indices de la tabla `urbanismo`
--
ALTER TABLE `urbanismo`
  ADD PRIMARY KEY (`id_Urbanismo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
