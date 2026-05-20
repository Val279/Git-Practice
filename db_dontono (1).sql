-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2026 at 12:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dontono`
--

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `categoria`, `stock`, `imagen`, `imagen2`) VALUES
(1, 'Martillo', 'Martillo de acero resistente', 10.50, 'Herramientas', 20, 'hammer.png', NULL),
(2, 'Tornillo', 'Tornillo para madera', 0.25, 'Construcción', 200, 'screw.png', NULL),
(3, 'Llave Spanner', 'Llave ajustable', 15.00, 'Herramientas', 15, 'spanner.png', NULL),
(4, 'Woodburning Pen', 'Herramienta para grabado en madera', 25.00, 'Herramientas', 10, 'woodburning pen.jpg', NULL),
(5, 'Llave Wrench', 'Llave inglesa resistente', 18.00, 'Herramientas', 12, 'wrench.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sucursales`
--

CREATE TABLE `sucursales` (
  `sucursalID` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `Lugar` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sucursales`
--

INSERT INTO `sucursales` (`sucursalID`, `nombre`, `descripcion`, `Lugar`, `img`) VALUES
(1, 'Ferretería Don Toño', 'Nuestra sucursal principal. Vende de todo product', 'San Salvador', 'dontono.png'),
(2, 'Ferretería Asusena', 'Especializada en productos de pintura', 'Apopa', 'Asusena.png'),
(3, 'CALOLO', 'Especializada en productos domesticos', 'Sierra Morena', 'CALOLO.png'),
(4, 'Jerusalen', 'Especializada en herramientas', 'Chinameca', 'Jerusalen.png'),
(5, 'BIVI', 'Especializada en muebles y electrodomesticos', 'Santa Lucía', 'bivi.png'),
(6, 'Niña Mirian', 'Especializada en láminas', 'Bosques del Río', 'niñamirian.png');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarioID` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `correo` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','usuario') DEFAULT 'usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`usuarioID`, `nombre`, `correo`, `password`, `rol`) VALUES
(2, 'Valeria', 'valeRivas21@gmail.com', '$2y$10$bBr0jF7VGbSyjHbwcXvqpOZ7Sz7h5hVyomA4fGuvZc82tUbRiWPwa', 'usuario'),
(4, '', 'admin@gmail.com', '$2y$10$bBr0jF7VGbSyjHbwcXvqpOZ7Sz7h5hVyomA4fGuvZc82tUbRiWPwa', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`sucursalID`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarioID`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `sucursalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
