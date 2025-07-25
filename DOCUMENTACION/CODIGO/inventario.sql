-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2025 a las 14:50:05
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
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `catergoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `catergoria`) VALUES
(1, 'Bebidas'),
(2, 'Enlatado'),
(5, 'Perecibles'),
(8, 'congelados'),
(9, 'limpieza'),
(10, 'otro'),
(21, 'abarroteslb'),
(22, 'Arroces'),
(24, 'Bebidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `documento` varchar(12) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombre`, `apellido`, `documento`, `direccion`, `telefono`, `correo`) VALUES
(1, 'susana', 'torrez damian', '1', 'av los angeles 12', '963258741', 'susana@gmail.com'),
(3, 'julio', 'dominguex damian', '85217785', 'av los programadores 12', '952369874', 'julio@gmail.com'),
(4, 'sofias', 'gonzales gutierrez', '8521478', 'av las flores 25', '963258745', 'sofi.g@gmail.com'),
(8, 'Robinson', 'Estrella', '1752363273', 'la victoria', '0961219881', 'rmestrella1@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesalida`
--

CREATE TABLE `detallesalida` (
  `id` int(11) NOT NULL,
  `idSalida` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallesalida`
--

INSERT INTO `detallesalida` (`id`, `idSalida`, `idproducto`, `cantidad`, `importe`) VALUES
(1, 2, 1, 2, 20.00),
(2, 2, 2, 1, 25.00),
(3, 3, 4, 5, 27.50),
(4, 3, 3, 5, 32.50),
(5, 4, 1, 40, 440.00),
(9, 12, 4, 2, 11.00),
(10, 12, 4, 2, 11.00),
(11, 12, 4, 2, 11.00),
(12, 17, 4, 1, 5.50),
(13, 18, 10, 1, 12.00),
(14, 19, 4, 5, 27.50),
(15, 19, 10, 5, 60.00),
(16, 19, 10, 5, 60.00),
(17, 21, 10, 3, 36.00),
(18, 22, 2, 2, 50.00),
(19, 22, 10, 2, 24.00),
(20, 23, 4, 2, 11.00),
(21, 24, 2, 1, 25.00),
(22, 25, 3, 1, 6.50),
(23, 26, 4, 2, 11.00),
(24, 26, 4, 2, 11.00),
(25, 26, 2, 2, 50.00),
(26, 26, 4, 2, 11.00),
(27, 26, 2, 1, 25.00),
(28, 29, 4, 2, 11.00),
(29, 29, 10, 4, 48.00),
(30, 30, 10, 3, 36.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `identrada` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `precioE` decimal(10,2) NOT NULL,
  `precioV` decimal(10,2) NOT NULL,
  `total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`identrada`, `idproducto`, `stock`, `fecha`, `idproveedor`, `precioE`, `precioV`, `total`) VALUES
(24, 10, 2, '2025-07-11', 3, 8.00, 12.00, 16.00),
(25, 2, 6, '2025-07-11', 3, 78.00, 25.00, 469.00),
(26, 3, 2, '2025-07-11', 3, 23.00, 6.50, 46.00),
(27, 4, 20, '2025-07-17', 2, 3.00, 5.50, 60.00),
(28, 10, 29, '2025-07-17', 7, 4.00, 12.00, 116.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproducto` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `stock` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `precioV` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproducto`, `nombre`, `stock`, `idCategoria`, `precioV`) VALUES
(1, 'inka cola 3L', 0, 1, 11.00),
(2, 'arroz 5k costeña', 2, 1, 25.00),
(3, 'Coca cola 1L', 6, 1, 6.50),
(4, 'Atun', 5, 2, 5.50),
(8, 'pastel', 0, 7, 0.00),
(9, 'galletas', 0, 5, 0.00),
(10, 'lentejas 1k', 10, 5, 12.00),
(11, 'Gaseosa sprite 1l', 0, 1, 0.00),
(12, 'Pan', 0, 3, 0.00),
(13, 'arroz', 0, 7, 0.00),
(14, 'POLLO', 0, 8, 0.00),
(15, 'carne', 0, 5, 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `documento` varchar(12) NOT NULL,
  `Rsocial` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `nombre`, `apellido`, `documento`, `Rsocial`, `direccion`, `telefono`, `correo`) VALUES
(1, 'julio', 'ramirez', '85214785698', 'golosinas sac', 'av los girasoles 25', '963258741', 'julio@gmail.com'),
(2, 'rosa', 'muñoz dominguez', '96325874125', 'enlatados sac', 'av los girasoles 25', '963258741', 'rosa.m@gmail.com'),
(3, 'daniel', 'torres miranda', '852147856987', 'golosinas 1', 'av los rosales', '963258741', 'daniel.T@gmail.com'),
(4, 'Enriquegdgfdgf', 'Dominguez Torres', '963258741257', 'Alicorp', 'av girasoles 20', '963258740', 'alicorP@gmail.com'),
(7, 'rosa', 'asdaasd', '96325874125', 'enlatados sac', 'av los girasoles 25', '963258741', 'rosa.m@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `idSalida` int(11) NOT NULL,
  `numSalida` varchar(10) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `estado` varchar(8) NOT NULL DEFAULT 'Pagada'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`idSalida`, `numSalida`, `idCliente`, `fecha`, `subtotal`, `igv`, `total`, `estado`) VALUES
(1, '001', 4, '2024-05-28', 25.83, 5.67, 31.50, ''),
(2, '002', 4, '2024-05-28', 36.90, 8.10, 45.00, ''),
(3, '003', 4, '2024-06-24', 49.20, 10.80, 60.00, 'Anulada'),
(4, '004', 1, '2025-06-30', 360.80, 79.20, 440.00, ''),
(11, '005', 1, '2025-06-30', 1184.90, 260.10, 1445.00, ''),
(12, '0012', 4, '2025-07-22', 9.02, 1.98, 11.00, ''),
(13, '0012', 4, '2025-07-22', 9.02, 1.98, 11.00, ''),
(14, '0012', 4, '2025-07-22', 41.00, 9.00, 50.00, ''),
(15, '0012', 4, '2025-07-22', 41.00, 9.00, 50.00, ''),
(16, '0012', 4, '2025-07-22', 9.02, 1.98, 11.00, ''),
(17, '0017', 1, '2025-07-22', 4.51, 0.99, 5.50, ''),
(18, '0018', 1, '2025-07-22', 9.84, 2.16, 12.00, ''),
(19, '0019', 1, '2025-07-22', 71.75, 15.75, 87.50, ''),
(20, '0019', 1, '2025-07-22', 49.20, 10.80, 60.00, ''),
(21, '0021', 1, '2025-07-22', 29.52, 6.48, 36.00, ''),
(22, '0022', 1, '2025-07-22', 60.68, 13.32, 74.00, 'Anulada'),
(23, '0023', 3, '2025-07-22', 9.02, 1.98, 11.00, 'Pagada'),
(24, '0024', 1, '2025-07-22', 20.50, 4.50, 25.00, 'Pagada'),
(25, '0025', 1, '2025-07-22', 5.33, 1.17, 6.50, 'Pagada'),
(26, '0026', 8, '2025-07-23', 9.02, 1.98, 11.00, 'Pagada'),
(27, '0026', 8, '2025-07-23', 50.02, 10.98, 61.00, 'Pagada'),
(28, '0026', 8, '2025-07-23', 29.52, 6.48, 36.00, 'Pagada'),
(29, '0029', 1, '2025-08-20', 48.38, 10.62, 59.00, 'Pagada'),
(30, '0030', 1, '2025-07-23', 29.52, 6.48, 36.00, 'Pagada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `documento` varchar(12) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `tipoUsuario` varchar(20) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `pass` varbinary(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `documento`, `direccion`, `telefono`, `correo`, `tipoUsuario`, `usuario`, `pass`) VALUES
(5, 'Robinson', 'Estrella', '1752363273', 'La victoria', '0966219881', 'rmestrella1@espe.edu.ec', 'Administrador', 'robi', 0xb8883bb4a6546ce1fbb8cfc5fd1f6b76),
(6, 'admin', 'asd', '21312sad', 'asdasd', '213123', 'asdasdn', 'Administrador', 'admin', 0xb8883bb4a6546ce1fbb8cfc5fd1f6b76),
(7, 'Fenix', 'Toapanta', '1752363275', 'puente 7', '096219885', 'fenixleonardo@gmail.com', 'Administrador', 'FenixT', 0xb8883bb4a6546ce1fbb8cfc5fd1f6b76),
(8, 'almacenero', 'prueba', '1763827594', 'la victoria', '0972389232', 'vendedor@gmail.com', 'Administrador', 'almacenero', 0xb8883bb4a6546ce1fbb8cfc5fd1f6b76),
(9, 'almacenero', 'prueba', '1763827594', 'la victoria', '0972389232', 'vendedor@gmail.com', 'Vendedor', 'vendedor', 0xb8883bb4a6546ce1fbb8cfc5fd1f6b76),
(16, 'Melany', 'Torres', '175645326', 'Sangolqui', '0987182743', 'torresmelany090@gmail.com', 'Vendedor', 'mela', 0x8bcb2b4f913813f8ac9caf48d6df2008);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `detallesalida`
--
ALTER TABLE `detallesalida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_salida` (`idSalida`),
  ADD KEY `fk_productos` (`idproducto`);

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`identrada`),
  ADD KEY `fk_proveedor` (`idproveedor`),
  ADD KEY `fk_producto` (`idproducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`idSalida`),
  ADD KEY `fk_cliente` (`idCliente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detallesalida`
--
ALTER TABLE `detallesalida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `identrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `idSalida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallesalida`
--
ALTER TABLE `detallesalida`
  ADD CONSTRAINT `fk_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`),
  ADD CONSTRAINT `fk_salida` FOREIGN KEY (`idSalida`) REFERENCES `salidas` (`idSalida`);

--
-- Filtros para la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`),
  ADD CONSTRAINT `fk_proveedor` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`);

--
-- Filtros para la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
