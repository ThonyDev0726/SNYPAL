-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 10:04 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snypal`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_DATOS_GENERALES` (IN `FK_USUARIO_V` INT, IN `DAT_NOMBRES_V` VARCHAR(155), IN `DAT_APELLIDOS_V` VARCHAR(500), IN `DAT_FOTO_PERFIL_V` VARCHAR(500), IN `DAT_TELEFONO_V` VARCHAR(15), IN `DAT_DIRECCION_V` VARCHAR(15), IN `DAT_CIUDAD_V` VARCHAR(15), IN `DAT_PAIS_V` VARCHAR(15), IN `DAT_POSTAL_V` VARCHAR(15))   BEGIN
    INSERT INTO DATOS_GENERALES (
        FK_USUARIO,
        DAT_NOMBRES,
        DAT_APELLIDOS,
        DAT_FOTO_PERFIL,
        DAT_TELEFONO,
        DAT_DIRECCION,
        DAT_CIUDAD,
        DAT_PAIS,
        DAT_POSTAL
    ) VALUES (
        FK_USUARIO_V,
        DAT_NOMBRES_V,
        DAT_APELLIDOS_V,
        DAT_FOTO_PERFIL_V,
        DAT_TELEFONO_V,
        DAT_DIRECCION_V,
        DAT_CIUDAD_V,
        DAT_PAIS_V,
        DAT_POSTAL_V
    );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_USUARIO` (IN `USU_USUARIO_V` VARCHAR(155), IN `USU_CLAVE_V` VARCHAR(500), IN `USU_EMAIL_V` VARCHAR(500), IN `USU_CREACION_V` DATE, IN `USU_ESTADO_V` VARCHAR(15), IN `USU_TIPO_V` VARCHAR(15))   BEGIN
    INSERT INTO USUARIO (
        USU_USUARIO,
        USU_CLAVE,
        USU_EMAIL,
        USU_CREACION,
        USU_ESTADO,
        USU_TIPO
    ) VALUES (
        USU_USUARIO_V,
        USU_CLAVE_V,
        USU_EMAIL_V,
        USU_CREACION_V,
        USU_ESTADO_V,
        USU_TIPO_V
    );
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SELECT_DATO_USUARIO_ID` (IN `ID_USUARIO_V` INT)   BEGIN
	SELECT * FROM DATOS_GENERALES WHERE DATOS_GENERALES.FK_USUARIO = ID_USUARIO_V;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_CLAVE` (IN `ID_USUARIO_V` INT, IN `USU_CLAVE_V` VARCHAR(255))   BEGIN
	UPDATE USUARIO SET 
        USU_CLAVE = USU_CLAVE_V
    WHERE ID_USUARIO = ID_USUARIO_V;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_DATA_USU` (IN `FK_USUARIO_V` INT, IN `DAT_FOTO_PERFIL_V` VARCHAR(500), IN `DAT_TELEFONO_V` VARCHAR(15), IN `DAT_CUIDAD_V` VARCHAR(50), IN `DAT_PAIS_V` VARCHAR(50), IN `DAT_POSTAL_V` VARCHAR(20))   BEGIN
    UPDATE DATOS_GENERALES
    SET
        DAT_FOTO_PERFIL = DAT_FOTO_PERFIL_V,
        DAT_TELEFONO = DAT_TELEFONO_V,
        DAT_CUIDAD = DAT_CUIDAD_V,
        DAT_PAIS = DAT_PAIS_V,
        DAT_POSTAL = DAT_POSTAL
    WHERE
        FK_USUARIO = FK_USUARIO_V;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_FOTO_PERFIL` (IN `FK_USUARIO_V` INT, IN `DAT_FOTO_PERFIL_V` VARCHAR(500))   BEGIN
    UPDATE DATOS_GENERALES
    SET
        DAT_FOTO_PERFIL = DAT_FOTO_PERFIL_V
    WHERE
        FK_USUARIO = FK_USUARIO_V;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_USUARIO_ESTADO` (IN `ID_USUARIO_V` INT, IN `USU_ESTADO_V` VARCHAR(15))   BEGIN
    UPDATE USUARIO SET 
        USU_ESTADO = USU_ESTADO_V
        WHERE ID_USUARIO = ID_USUARIO_V;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_USU_ESTADO` (IN `ID_USUARIO_V` INT, IN `USU_ESTADO_V` VARCHAR(255))   BEGIN
	UPDATE USUARIO SET 
        USU_ESTADO = USU_ESTADO_V
    WHERE ID_USUARIO = ID_USUARIO_V;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `U_S_ID_USUARIO` (IN `USU_USUARIO_V` VARCHAR(155))   BEGIN 
	SELECT ID_USUARIO FROM USUARIO WHERE USU_USUARIO = USU_USUARIO_V;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `U_S_USU_CLAVE` (IN `ID_USUARIO_V` INT)   BEGIN 
	SELECT USU_CLAVE FROM USUARIO WHERE ID_USUARIO = ID_USUARIO_V;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `U_S_USU_ESTADO` (IN `ID_USUARIO_V` INT)   BEGIN 
	SELECT USU_ESTADO FROM USUARIO WHERE ID_USUARIO = ID_USUARIO_V;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `U_S_USU_PARAMETRO` (IN `ID_USUARIO_V` INT)   BEGIN 
	SELECT USU_TIPO FROM USUARIO WHERE ID_USUARIO = ID_USUARIO_V;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `auditoria`
--

CREATE TABLE `auditoria` (
  `ID_AUDITORIA` int(11) NOT NULL,
  `FK_USUARIO` int(11) NOT NULL,
  `AUD_IP` varchar(20) NOT NULL,
  `AUD_ACCION` varchar(50) NOT NULL,
  `AUD_DESCRIPCION` longtext NOT NULL,
  `AUD_RUTA_PDF` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `datos_generales`
--

CREATE TABLE `datos_generales` (
  `ID_DATO` int(11) NOT NULL,
  `FK_USUARIO` int(11) NOT NULL,
  `DAT_NOMBRES` varchar(155) NOT NULL,
  `DAT_APELLIDOS` varchar(155) NOT NULL,
  `DAT_FOTO_PERFIL` varchar(500) NOT NULL,
  `DAT_TELEFONO` varchar(15) NOT NULL,
  `DAT_DIRECCION` varchar(500) NOT NULL,
  `DAT_CIUDAD` varchar(50) NOT NULL,
  `DAT_PAIS` varchar(50) NOT NULL,
  `DAT_POSTAL` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datos_generales`
--

INSERT INTO `datos_generales` (`ID_DATO`, `FK_USUARIO`, `DAT_NOMBRES`, `DAT_APELLIDOS`, `DAT_FOTO_PERFIL`, `DAT_TELEFONO`, `DAT_DIRECCION`, `DAT_CIUDAD`, `DAT_PAIS`, `DAT_POSTAL`) VALUES
(1, 1, 'Richard Anthonyy', 'Perez Palacios', 'img/perfilImagen.png', '09987456321', 'N/A', 'N/A', 'N/A', 'N/A'),
(2, 2, 'RATA', 'RATA', 'img/perfilImagen.png', '0997548899', 'N/A', 'N/A', 'N/A', 'N/A'),
(3, 3, 'Sebastian', 'Garcia', 'img/perfilImagen.png', '0984741345', 'N/A', 'N/A', 'N/A', 'N/A'),
(4, 4, 'Paul', 'Garcia', 'img/perfilImagen.png', '0984741345', 'N/A', 'N/A', 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `ID_EMAIL` int(11) NOT NULL,
  `EMA_ASUNTO` varchar(100) NOT NULL,
  `EMA_DESCRIPCION` mediumtext NOT NULL,
  `EMA_ACHIVO_1` varchar(100) NOT NULL,
  `EMA_ARCHIVO_2` varchar(100) NOT NULL,
  `FK_USUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `ID_EMPRESA` int(11) NOT NULL,
  `EMP_NOMBRE` varchar(100) NOT NULL,
  `EMP_TITULO` varchar(100) NOT NULL,
  `EMP_SLOGAN` varchar(555) NOT NULL,
  `EMP_DESCRIPCION` mediumtext NOT NULL,
  `EMP_VISION` mediumtext NOT NULL,
  `EMP_MISION` mediumtext NOT NULL,
  `EMP_TIKTOK` varchar(255) NOT NULL,
  `EMP_FACEBOOK` varchar(255) NOT NULL,
  `EMP_WHATSAPP` varchar(255) NOT NULL,
  `EMP_YOUTUBE` varchar(255) NOT NULL,
  `EMP_EMAIL` varchar(255) NOT NULL,
  `EMP_UBICACION` varchar(500) NOT NULL,
  `EMP_MAPA` varchar(500) NOT NULL,
  `EMP_LOGO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `ID_FACTURA` int(11) NOT NULL,
  `FK_USUARIO` int(11) NOT NULL,
  `FAC_FECHA` date NOT NULL,
  `FAC_HORA` varchar(10) NOT NULL,
  `FAC_CODIGO` varchar(25) NOT NULL,
  `FAC_TOTAL_DESCUENTO` double(10,2) NOT NULL,
  `FAC_TOTAL` double(10,2) NOT NULL,
  `FAC_TIPO_PAGO` varchar(100) NOT NULL,
  `FAC_RUTA_PDF` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `factura_descripcion`
--

CREATE TABLE `factura_descripcion` (
  `ID_DESCRIPCION` int(11) NOT NULL,
  `FK_FACTURA` int(11) NOT NULL,
  `FK_PRODUCTO` int(11) NOT NULL,
  `DET_CANTIDAD` int(11) NOT NULL,
  `DET_PRECIO_PROD` double(10,2) NOT NULL,
  `DET_DESCUENTO` double(10,2) NOT NULL,
  `DET_TOTAL` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `PRO_CATEGORIA` varchar(50) NOT NULL,
  `PRO_NOMBRE` varchar(50) NOT NULL,
  `PRO_DESCRIPCION` mediumtext NOT NULL,
  `PRO_CODIGO` varchar(25) NOT NULL,
  `PRO_PRECIO` double(10,2) NOT NULL,
  `PRO_DESCUENTO` double(10,2) NOT NULL,
  `PRO_STOCK` int(11) NOT NULL,
  `PRO_MARCA` varchar(100) NOT NULL,
  `PRO_IMG_1` varchar(100) NOT NULL,
  `PRO_IMG_2` varchar(100) NOT NULL,
  `PRO_IMG_3` varchar(100) NOT NULL,
  `PRO_IMG_4` varchar(100) NOT NULL,
  `PRO_ESTADO` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `USU_USUARIO` varchar(155) NOT NULL,
  `USU_CLAVE` varchar(500) NOT NULL,
  `USU_EMAIL` varchar(500) NOT NULL,
  `USU_CREACION` date NOT NULL,
  `USU_ESTADO` varchar(15) NOT NULL,
  `USU_TIPO` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `USU_USUARIO`, `USU_CLAVE`, `USU_EMAIL`, `USU_CREACION`, `USU_ESTADO`, `USU_TIPO`) VALUES
(1, 'Admin', 'LFPfLv8ji08=', 'richardanto0726@gmail.com', '2023-01-16', 'EN LINEA', 'CLIENTE'),
(3, 'Paul', '+5XgvcoBGT/WWNQAGeDNlA==', 'paulgar18@hotmail.com', '2023-01-21', 'VERIFICAR', 'CLIENTE'),
(4, 'Paul22', 'CUnb5p1UfxowvnI5M/ytOQ==', 'paugar763@gmail.com', '2023-01-21', 'VERIFICAR', 'CLIENTE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`ID_AUDITORIA`);

--
-- Indexes for table `datos_generales`
--
ALTER TABLE `datos_generales`
  ADD PRIMARY KEY (`ID_DATO`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`ID_EMAIL`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`ID_EMPRESA`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_FACTURA`);

--
-- Indexes for table `factura_descripcion`
--
ALTER TABLE `factura_descripcion`
  ADD PRIMARY KEY (`ID_DESCRIPCION`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_PRODUCTO`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `ID_AUDITORIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datos_generales`
--
ALTER TABLE `datos_generales`
  MODIFY `ID_DATO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `ID_EMAIL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `ID_EMPRESA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factura_descripcion`
--
ALTER TABLE `factura_descripcion`
  MODIFY `ID_DESCRIPCION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
