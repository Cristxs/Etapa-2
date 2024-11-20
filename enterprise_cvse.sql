-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 05:29:18
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
-- Base de datos: `enterprise_cvse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ClienteID` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ClienteID`, `Nombre`, `Direccion`, `Telefono`, `Email`) VALUES
(1, 'Antonio Mendoza', 'Av. Siempre Viva 123, Ciudad de México', '5551234567', 'antonio.mendoza@example.com'),
(2, 'Verónica Salas', 'Calle del Río 456, Guadalajara', '5552345678', 'veronica.salas@example.com'),
(3, 'Ricardo Fernández', 'Calle Luna 789, Monterrey', '5553456789', 'ricardo.fernandez@example.com'),
(4, 'Laura Castillo', 'Calle Mar 321, Puebla', '5554567890', 'laura.castillo@example.com'),
(5, 'Jorge López', 'Calle Primavera 654, León', '5555678901', 'jorge.lopez@example.com'),
(6, 'Patricia Ruiz', 'Calle Sol 987, Cancún', '5556789012', 'patricia.ruiz@example.com'),
(7, 'Eduardo Jiménez', 'Calle Bosque 543, Mérida', '5557890123', 'eduardo.jimenez@example.com'),
(8, 'Ana Martínez', 'Calle Cielo 210, Tijuana', '5558901234', 'ana.martinez@example.com'),
(9, 'Manuel Torres', 'Calle Estrella 135, Querétaro', '5559012345', 'manuel.torres@example.com'),
(10, 'Claudia González', 'Calle Nieve 246, San Luis Potosí', '5550123456', 'claudia.gonzalez@example.com'),
(11, 'Sergio Morales', 'Calle Océano 357, Veracruz', '5551234560', 'sergio.morales@example.com'),
(12, 'Gabriela Herrera', 'Calle Viento 468, Chihuahua', '5552345671', 'gabriela.herrera@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `FacturaID` int(11) NOT NULL,
  `PedidoID` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Monto` decimal(10,2) DEFAULT NULL,
  `Impuesto` decimal(10,2) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `MetodoPago` varchar(50) DEFAULT NULL,
  `Comentario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`FacturaID`, `PedidoID`, `Fecha`, `Monto`, `Impuesto`, `Total`, `Estado`, `MetodoPago`, `Comentario`) VALUES
(1, 1, '2024-02-16', 450.00, 45.00, 495.00, 'Pagado', 'Tarjeta', 'Factura del Pedido 1'),
(2, 2, '2024-02-17', 600.50, 60.05, 660.55, 'Pendiente', 'Transferencia', 'Factura del Pedido 2'),
(3, 3, '2024-02-18', 320.75, 32.08, 352.83, 'Pagado', 'Efectivo', 'Factura del Pedido 3'),
(4, 4, '2024-02-19', 200.00, 20.00, 220.00, 'Pagado', 'Tarjeta', 'Factura del Pedido 4'),
(5, 5, '2024-02-20', 150.25, 15.03, 165.28, 'Pagado', 'Efectivo', 'Factura del Pedido 5'),
(6, 6, '2024-02-21', 580.90, 58.09, 638.99, 'Pendiente', 'Transferencia', 'Factura del Pedido 6'),
(7, 7, '2024-02-22', 370.00, 37.00, 407.00, 'Pagado', 'Tarjeta', 'Factura del Pedido 7'),
(8, 8, '2024-02-23', 820.00, 82.00, 902.00, 'Pagado', 'Transferencia', 'Factura del Pedido 8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `PedidoID` int(11) NOT NULL,
  `ClienteID` int(11) DEFAULT NULL,
  `ProveedorID` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`PedidoID`, `ClienteID`, `ProveedorID`, `Fecha`, `Total`) VALUES
(1, 1, 1, '2024-02-15', 450.00),
(2, 2, 2, '2024-02-16', 600.50),
(3, 3, 3, '2024-02-17', 320.75),
(4, 4, 4, '2024-02-18', 200.00),
(5, 5, 5, '2024-02-19', 150.25),
(6, 6, 6, '2024-02-20', 580.90),
(7, 7, 1, '2024-02-21', 370.00),
(8, 8, 2, '2024-02-22', 820.00),
(9, 9, 3, '2024-02-23', 290.00),
(10, 10, 4, '2024-02-24', 470.50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ProveedorID` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Contacto` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ProveedorID`, `Nombre`, `Contacto`, `Telefono`, `Email`) VALUES
(1, 'Transporte Express', 'Carlos Sánchez', '5551112233', 'info@transporteexpress.com'),
(2, 'Logística Global', 'Marta López', '5552223344', 'contacto@logisticaglobal.com'),
(3, 'Rápido Envío', 'Luis Pérez', '5553334455', 'ventas@rapidoenvio.com'),
(4, 'Envios Rápidos', 'Ana Martínez', '5554445566', 'atencion@enviosrapidos.com'),
(5, 'Transportes Unidos', 'José Ramírez', '5555556677', 'soporte@transportesunidos.com'),
(6, 'Distribuciones Ágiles', 'Patricia Vargas', '5556667788', 'servicio@distribucionesagiles.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ClienteID`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`FacturaID`),
  ADD KEY `PedidoID` (`PedidoID`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`PedidoID`),
  ADD KEY `ClienteID` (`ClienteID`),
  ADD KEY `ProveedorID` (`ProveedorID`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ProveedorID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ClienteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `FacturaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `PedidoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ProveedorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`PedidoID`) REFERENCES `pedidos` (`PedidoID`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ClienteID`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`ProveedorID`) REFERENCES `proveedores` (`ProveedorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
