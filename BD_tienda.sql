-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2024 a las 04:26:16
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`, `descripcion`, `fecha_creacion`) VALUES
(1, 'Computadoras', 'Equipos de cómputo y accesorios', '2024-02-10 15:34:57'),
(2, 'Smartphones', 'Teléfonos inteligentes y accesorios', '2024-02-10 15:34:57'),
(3, 'Tabletas', 'Tabletas electrónicas y accesorios', '2024-02-10 15:34:57'),
(4, 'Audio', 'Equipos de audio, auriculares y altavoces', '2024-02-10 15:34:57'),
(5, 'Videojuegos', 'Consolas y videojuegos', '2024-02-10 15:34:57'),
(6, 'Fotografía', 'Cámaras y accesorios fotográficos', '2024-02-10 15:34:57'),
(7, 'Drones', 'Drones y accesorios', '2024-02-10 15:34:57'),
(8, 'Wearables', 'Dispositivos vestibles y relojes inteligentes', '2024-02-10 15:34:57'),
(9, 'Redes', 'Equipos de red y conectividad', '2024-02-10 15:34:57'),
(10, 'Almacenamiento', 'Soluciones de almacenamiento de datos', '2024-02-10 15:34:57'),
(11, 'Componentes', 'Componentes de computadora', '2024-02-10 15:34:57'),
(12, 'Impresión', 'Impresoras y consumibles', '2024-02-10 15:34:57'),
(13, 'Software', 'Software y licencias', '2024-02-10 15:34:57'),
(14, 'Seguridad', 'Sistemas de seguridad y vigilancia', '2024-02-10 15:34:57'),
(15, 'Iluminación', 'Soluciones de iluminación inteligente', '2024-02-10 15:34:57'),
(16, 'Cables', 'Cables y conectores', '2024-02-10 15:34:57'),
(17, 'Energía', 'Fuentes de alimentación y protectores', '2024-02-10 15:34:57'),
(18, 'Refrigeración', 'Sistemas de refrigeración para computadoras', '2024-02-10 15:34:57'),
(19, 'Oficina', 'Accesorios y suministros de oficina', '2024-02-10 15:34:57'),
(20, 'Limpieza', 'Productos de limpieza para equipos', '2024-02-10 15:34:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre_marca` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `sitio_web` varchar(255) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre_marca`, `descripcion`, `sitio_web`, `fecha_creacion`) VALUES
(1, 'Apple', 'Tecnología y dispositivos electrónicos', 'https://www.apple.com', '2024-02-10 15:39:03'),
(2, 'Samsung', 'Electrónica de consumo y electrodomésticos', 'https://www.samsung.com', '2024-02-10 15:39:03'),
(3, 'Xiaomi', 'Productos electrónicos y de consumo inteligente', 'https://www.mi.com', '2024-02-10 15:39:03'),
(4, 'Sony', 'Electrónica, juegos y entretenimiento', 'https://www.sony.com', '2024-02-10 15:39:03'),
(5, 'Microsoft', 'Software, dispositivos y servicios', 'https://www.microsoft.com', '2024-02-10 15:39:03'),
(6, 'Huawei', 'Tecnología de información y comunicación', 'https://www.huawei.com', '2024-02-10 15:39:04'),
(7, 'Dell', 'Computadoras y tecnología', 'https://www.dell.com', '2024-02-10 15:39:04'),
(8, 'HP', 'Tecnología de impresión y computación', 'https://www.hp.com', '2024-02-10 15:39:04'),
(9, 'Lenovo', 'Computadoras y dispositivos inteligentes', 'https://www.lenovo.com', '2024-02-10 15:39:04'),
(10, 'Asus', 'Computadoras, teléfonos y hardware electrónico', 'https://www.asus.com', '2024-02-10 15:39:04'),
(11, 'Acer', 'Electrónica y hardware', 'https://www.acer.com', '2024-02-10 15:39:04'),
(12, 'Logitech', 'Periféricos de computadora y accesorios', 'https://www.logitech.com', '2024-02-10 15:39:04'),
(13, 'Razer', 'Dispositivos y software para gamers', 'https://www.razer.com', '2024-02-10 15:39:04'),
(14, 'Nvidia', 'Tecnología de computación gráfica', 'https://www.nvidia.com', '2024-02-10 15:39:04'),
(15, 'AMD', 'Semiconductores, microprocesadores y tarjetas gráficas', 'https://www.amd.com', '2024-02-10 15:39:04'),
(16, 'Intel', 'Tecnología y fabricación de semiconductores', 'https://www.intel.com', '2024-02-10 15:39:04'),
(17, 'Kingston', 'Memoria y soluciones tecnológicas', 'https://www.kingston.com', '2024-02-10 15:39:04'),
(18, 'Western Digital', 'Almacenamiento de datos y soluciones de memoria', 'https://www.westerndigital.com', '2024-02-10 15:39:04'),
(19, 'Seagate', 'Soluciones de almacenamiento de datos', 'https://www.seagate.com', '2024-02-10 15:39:04'),
(20, 'Corsair', 'Componentes y periféricos de alto rendimiento', 'https://www.corsair.com', '2024-02-10 15:39:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idmarca` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `pvp` decimal(10,2) NOT NULL,
  `impuesto` decimal(5,2) NOT NULL,
  `foto` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `idcategoria`, `idmarca`, `descripcion`, `precio`, `pvp`, `impuesto`, `foto`) VALUES
(1, 1, 1, 'MacBook Pro 14\"', 1999.99, 2399.99, 20.00, 'logoproducto.jpg'),
(2, 2, 2, 'Galaxy S21', 799.99, 959.99, 20.00, 'logoproducto.jpg'),
(3, 3, 3, 'Mi Pad 5', 399.99, 479.99, 20.00, 'logoproducto.jpg'),
(4, 4, 4, 'PlayStation 5', 499.99, 599.99, 20.00, 'logoproducto.jpg'),
(5, 5, 5, 'Xbox Series X', 499.99, 599.99, 20.00, 'logoproducto.jpg'),
(6, 6, 1, 'iPhone 12', 699.99, 839.99, 20.00, 'logoproducto.jpg'),
(7, 7, 6, 'Huawei P40', 599.99, 719.99, 20.00, 'logoproducto.jpg'),
(8, 8, 7, 'Dell XPS 13', 999.99, 1199.99, 20.00, 'logoproducto.jpg'),
(9, 9, 8, 'HP Spectre x360', 1099.99, 1319.99, 20.00, 'logoproducto.jpg'),
(10, 10, 9, 'Lenovo ThinkPad X1 Carbon', 1299.99, 1559.99, 20.00, 'logoproducto.jpg'),
(11, 11, 10, 'ASUS ROG Zephyrus G14', 1349.99, 1619.99, 20.00, 'logoproducto.jpg'),
(12, 12, 11, 'Acer Predator Helios 300', 1199.99, 1439.99, 20.00, 'logoproducto.jpg'),
(13, 13, 12, 'Logitech G Pro Wireless Mouse', 129.99, 155.99, 20.00, 'logoproducto.jpg'),
(14, 14, 13, 'Razer BlackWidow V3 Keyboard', 139.99, 167.99, 20.00, 'logoproducto.jpg'),
(15, 15, 14, 'Nvidia RTX 3080', 699.99, 839.99, 20.00, 'logoproducto.jpg'),
(16, 16, 15, 'AMD Ryzen 9 5900X', 499.99, 599.99, 20.00, 'logoproducto.jpg'),
(17, 17, 16, 'Intel Core i9-11900K', 539.99, 647.99, 20.00, 'logoproducto.jpg'),
(18, 18, 17, 'Kingston A400 SSD 480GB', 54.99, 65.99, 20.00, 'logoproducto.jpg'),
(19, 19, 18, 'Western Digital WD Blue 1TB', 44.99, 53.99, 20.00, 'logoproducto.jpg'),
(20, 20, 19, 'Seagate Barracuda 2TB', 59.99, 71.99, 20.00, 'logoproducto.jpg'),
(21, 1, 1, 'MacBook Pro 14', 1999.99, 2399.99, 20.00, 'logoproducto.jpg'),
(22, 2, 2, 'Galaxy S21', 799.99, 959.99, 20.00, 'logoproducto.jpg'),
(23, 3, 3, 'Mi Pad 5', 399.99, 479.99, 20.00, 'logoproducto.jpg'),
(24, 4, 4, 'PlayStation 5', 499.99, 599.99, 20.00, 'logoproducto.jpg'),
(25, 5, 5, 'Xbox Series X', 499.99, 599.99, 20.00, 'logoproducto.jpg'),
(26, 6, 1, 'iPhone 12', 699.99, 839.99, 20.00, 'logoproducto.jpg'),
(27, 7, 6, 'Huawei P40', 599.99, 719.99, 20.00, 'logoproducto.jpg'),
(28, 8, 7, 'Dell XPS 13', 999.99, 1199.99, 20.00, 'logoproducto.jpg'),
(29, 9, 8, 'HP Spectre x360', 1099.99, 1319.99, 20.00, 'logoproducto.jpg'),
(30, 10, 9, 'Lenovo ThinkPad X1 Carbon', 1299.99, 1559.99, 20.00, 'logoproducto.jpg'),
(31, 11, 10, 'ASUS ROG Zephyrus G14', 1349.99, 1619.99, 20.00, 'logoproducto.jpg'),
(32, 12, 11, 'Acer Predator Helios 300', 1199.99, 1439.99, 20.00, 'logoproducto.jpg'),
(33, 13, 12, 'Logitech G Pro Wireless Mouse', 129.99, 155.99, 20.00, 'logoproducto.jpg'),
(34, 14, 13, 'Razer BlackWidow V3 Keyboard', 139.99, 167.99, 20.00, 'logoproducto.jpg'),
(35, 15, 14, 'Nvidia RTX 3080', 699.99, 839.99, 20.00, 'logoproducto.jpg'),
(36, 16, 15, 'AMD Ryzen 9 5900X', 499.99, 599.99, 20.00, 'logoproducto.jpg'),
(37, 17, 16, 'Intel Core i9-11900K', 539.99, 647.99, 20.00, 'logoproducto.jpg'),
(38, 18, 17, 'Kingston A400 SSD 480GB', 54.99, 65.99, 20.00, 'logoproducto.jpg'),
(39, 19, 18, 'Western Digital WD Blue 1TB', 44.99, 53.99, 20.00, 'logoproducto.jpg'),
(40, 20, 19, 'Seagate Barracuda 2TB', 59.99, 71.99, 20.00, 'logoproducto.jpg'),
(41, 1, 1, 'MacBook Pro 14', 1999.99, 2399.99, 20.00, 'logoproducto.jpg'),
(42, 2, 2, 'Galaxy S21', 799.99, 959.99, 20.00, 'logoproducto.jpg'),
(43, 3, 3, 'Mi Pad 5', 399.99, 479.99, 20.00, 'logoproducto.jpg'),
(44, 4, 4, 'PlayStation 5', 499.99, 599.99, 20.00, 'logoproducto.jpg'),
(45, 5, 5, 'Xbox Series X', 499.99, 599.99, 20.00, 'logoproducto.jpg'),
(46, 6, 1, 'iPhone 12', 699.99, 839.99, 20.00, 'logoproducto.jpg'),
(47, 7, 6, 'Huawei P40', 599.99, 719.99, 20.00, 'logoproducto.jpg'),
(48, 8, 7, 'Dell XPS 13', 999.99, 1199.99, 20.00, 'logoproducto.jpg'),
(49, 9, 8, 'HP Spectre x360', 1099.99, 1319.99, 20.00, 'logoproducto.jpg'),
(50, 10, 9, 'Lenovo ThinkPad X1 Carbon', 1299.99, 1559.99, 20.00, 'logoproducto.jpg'),
(51, 11, 10, 'ASUS ROG Zephyrus G14', 1349.99, 1619.99, 20.00, 'logoproducto.jpg'),
(52, 12, 11, 'Acer Predator Helios 300', 1199.99, 1439.99, 20.00, 'logoproducto.jpg'),
(53, 13, 12, 'Logitech G Pro Wireless Mouse', 129.99, 155.99, 20.00, 'logoproducto.jpg'),
(54, 14, 13, 'Razer BlackWidow V3 Keyboard', 139.99, 167.99, 20.00, 'logoproducto.jpg'),
(55, 15, 14, 'Nvidia RTX 3080', 699.99, 839.99, 20.00, 'logoproducto.jpg'),
(56, 16, 15, 'AMD Ryzen 9 5900X', 499.99, 599.99, 20.00, 'logoproducto.jpg'),
(57, 17, 16, 'Intel Core i9-11900K', 539.99, 647.99, 20.00, 'logoproducto.jpg'),
(58, 18, 17, 'Kingston A400 SSD 480GB', 54.99, 65.99, 20.00, 'logoproducto.jpg'),
(59, 19, 18, 'Western Digital WD Blue 1TB', 44.99, 53.99, 20.00, 'logoproducto.jpg'),
(60, 20, 19, 'Seagate Barracuda 2TB', 59.99, 71.99, 20.00, 'logoproducto.jpg'),
(79, 3, 4, 'Tablet 16\' Sony Modelo 365', 100.00, 120.00, 10.00, 'logoproducto.jpg'),
(88, 10, 9, 'PRODUCTO NUEVO 3', 100.00, 120.00, 10.00, 'logoproducto.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `clave` varchar(500) NOT NULL,
  `nombres` varchar(300) NOT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `nombres`, `rol`) VALUES
(1, 'cristian', '$2y$10$CIHwTzuPyI/briidfXI08ehqR5og9oFyYpSb6Xg15Sj2d8Ql7ek16', 'CRISTIAN ZAMBRANO', 1),
(2, 'jose', '$2y$10$CIHwTzuPyI/briidfXI08ehqR5og9oFyYpSb6Xg15Sj2d8Ql7ek16', 'JOSÉ MORALES', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcategoria` (`idcategoria`),
  ADD KEY `idmarca` (`idmarca`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idmarca`) REFERENCES `marcas` (`id_marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
