-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2016 a las 19:44:14
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_proyecto1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anunci`
--

CREATE TABLE `anunci` (
  `anu_id` int(4) NOT NULL,
  `anu_titol` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anu_data_anunci` date NOT NULL,
  `anu_data_robatori` date NOT NULL,
  `anu_ubicacio_robatori` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `anu_descripcio_robatori` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `anu_marca` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `anu_model` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_color` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_antiguitat` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_descripcio` text COLLATE utf8_spanish_ci NOT NULL,
  `anu_numero_serie` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_foto` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_compensacio` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `anunci`
--

INSERT INTO `anunci` (`anu_id`, `anu_titol`, `anu_data_anunci`, `anu_data_robatori`, `anu_ubicacio_robatori`, `anu_descripcio_robatori`, `anu_marca`, `anu_model`, `anu_color`, `anu_antiguitat`, `anu_descripcio`, `anu_numero_serie`, `anu_foto`, `anu_compensacio`) VALUES
(1, 'Bici robada', '2016-10-17', '2016-10-16', 'Barcelona', 'Me la quitaron a punta de navaja', 'BH', ' SPIKE 27,5 FSX', 'Verde y negro', '1 año', 'Bici negra y verde pistacho', 'F2349021', 'bici1.jpg', '50.00'),
(2, 'He perdido mi bicicleta', '2016-10-13', '2016-10-11', 'Tarragona', 'Entré al trabajo y cuando volví ya no estaba.', 'Orbea', 'MX 20 TEAM', 'Negro y líneas amarillas', '3 años', 'Bici Orbea MX 20 TEAM de color negro y con líneas amarillas.', 'HJ897432091', 'bici2.jpg', NULL),
(3, 'Me han quitado una bicicleta CANNONDALE', '2016-10-10', '2016-10-09', 'Girona', 'Estaba aparcada en la calle con un candando y me ha desaparecido', 'CANNONDALE', 'S6 EVO ULT 3', 'Rojo y Blanco', '2 años', 'Bici CANNONDALE S6 EVO ULT 3 de color roja y blanca', 'AK2345642', 'bici3.jpg', '80.00'),
(4, 'Bici CANNONDALE robada en Girona', '2016-10-04', '2016-10-04', 'Girona', 'Me han agredido físicamente y después se han llevado mi bicicleta ', 'CANNONDALE', 'S6 EVO RED', 'Amarillo y Blanco', '1 año', 'Bici CANNONDALE de color amarillo y blanco', 'KW3456809772', 'bici4.jpg', '25.00'),
(5, 'Bici TREK robada en Lleida', '2016-10-06', '2016-10-04', 'Lleida', 'Un hombre encapuchado me la robó la noche del día 6 de sepiembre', 'TREK', 'CROSSRIP COMP SL T-52', 'Plateado', '2 años', 'Bici Trek con cuadro Aluminio Alpha Serie 100 de color plateado', 'AV23575790', 'bici5.jpg', '35.00'),
(6, 'Ha desaparecido mi bici Specialized', '2016-10-04', '2016-10-03', 'Barcelona', 'La dejé 5 minutos en la calle mientras desayunaba en un bar y cuando volví ya no estaba. Unos vecinos me dijeron que habían visto a un hombre llevárselo.', 'Specialized', 'ALLEZ E5', 'Negro y naranja', '4 años', 'Bici Specialized de color negro y naranja.', 'LO67589432', 'bici6.jpg', '10.00'),
(7, 'Robo de bicicleta SCOTT en Tarragona', '2016-09-27', '2016-09-27', 'Tarragona', 'Dos chavales jóvenes me han robado una bicicleta SCOTT en Tarragona', 'SCOTT', 'ADDICT CX 20', 'Blanco y naranja', '5 meses', 'Bicicleta SCOTT ADDICT CX 20 de color blanco y naranja', 'HT567893', 'bici7.jpg', '60.00'),
(8, 'Me robaron una bici GIANT el día 29/09/16', '2016-09-27', '2016-09-25', 'Barcelona', 'Me bajé un momento de la bici y una mujer aprovecho para cogerla e irse con ella', 'GIANT', 'LOURISH FS 2', 'Azul', '3 años', 'Bici GIANT LOURISH de color azul muy bien mantenida y con ruedas Giant GX-02 Alloy', 'HJ23682917', 'bici8.jpg', NULL),
(9, 'Robo de bici BROMPTON', '2016-09-28', '2016-09-21', 'Barcelona', 'Estaba aparcada en la calle con candando durante la noche y a la mañana siguiente había de desaparecido', 'BROMPTON', 'M 3 VEL', 'Blanco', '9 meses', 'Bici plegable Brompton con cuadro de acero totalmente blanco.', 'CFY6862577', 'bici9.jpg', '55.00'),
(10, 'Desaparición de bici GIANT ', '2016-09-19', '2016-09-08', 'Lleida', 'La dejé en la baca de coche y cuando volví a los 5 minutos ya no estaba', 'GIANT ', 'TRANCE 3', 'Negro y azul', '1 año', 'BICI MTB DOBLE 27.5 GIANT TRANCE 3 con cuadro ALUXX SL-Grade Aluminum de color azul y negro.', 'ET653782', 'bici10.jpg', '70.00'),
(11, 'Giant talon1', '2016-06-16', '2016-06-13', 'Barcelona', 'robada de un balcon de un primer piso por varios individuos.', 'MTB', 'Giant Talon 1', 'Verde y negro', '3 meses', 'Bicicleta MTB de color verde y modelo Giant Telon', 'F042R016016GI01', 'bici11.jpg', '70.00'),
(12, 'BICI ROBADA', '2016-09-15', '2016-09-13', 'Madrid', 'Fue Hurtada de un garaje comunitario por alguien que entró al edificio y la tomó en algún momento del martes 13 de septiembre de 2016 rompiendo el candado.', 'LAPIERRE', 'RAID 229 ', 'Verde y negro', '3 años', 'Bici rigida 29 de aluminio, color verde, de la marca LA`PIERRE', 'LP4408159', 'bici12.jpg', '80.00'),
(13, 'Robada: Qüer Q00.Al 650 26 Dona [2014]', '2016-08-15', '2016-08-10', 'Zaragoza', 'Robada entre las 10:45h de la mañana del 3/9/16 y las 23h del 4/9/16', 'Qüer', 'Q00.Al 650 26', 'Rosa y negro', '2 años', 'Cinta del Pilar con rallas amarillas y rojas en manillar. Pegatina de la tienda Ciclos Martín de Pamplona con número identificador en la zona del cuadro', 'LT7754959', 'bici13.jpg', '60.00'),
(14, 'Robada: TREK FUEL EX-9', '2016-08-07', '2016-08-05', 'Madrid', 'Robada por un grupo de individuos', 'TREK', 'FUEL EX-9', 'Negra', '2 años', 'NEGRA CON PUÑOS VERDES, PERSONALIZADA , POTENCIA CORTA, CUBRE PLATOS PARA DOS PLATOS.', '98JGDJO59', 'bici14.jpg', '55.00'),
(15, 'Robada: Merida Matts tfs 100-D', '2016-10-08', '2016-10-06', 'Guadalajara', 'Robada en trastero', 'Merida', 'Matts tfs 100-D', 'Blanco y rojo', '4 años', 'Blanca y roja, talla 20", ruedas 26", con triángulo con cámara y herramientas, con punteras y cuentakilometros inalámbrico', 'F042R016016GIL1', 'bici15.jpg', '70.00'),
(16, 'Specialized Sirrus 2008', '2016-07-21', '2016-07-20', 'Barcelona', 'Robada en la calle mientras estaba estacionada con candado', 'Specialized', 'Sirrus 2008', 'Negro', '6 años', 'Negra, talla 28", ruedas 26" y cuentakilometros inalámbrico', 'F042R34FHU6G', 'bici16.jpg', '40.00'),
(17, 'Robada: Scott Genius 750', '2016-07-10', '2016-07-10', 'Málaga', 'Robada en el entorno de la Calle Victoria, Jardín de los Monos', 'Scott', 'Genius 750', 'Negro y naranja', '1 año', 'En el momento del robo llevaba acoplada un portabultos Thule específico para bicicletas de doble suspensión y una silla de bebe marca Decathlon.', 'HJTR986FHU6G', 'bici17.jpg', '90.00'),
(18, 'Robada: Conor WRC Road Ride', '2016-06-20', '2016-06-19', 'Madrid', 'Robada de un trastero por la noche a finales de Marzo del 2016 en el barrio de Montecarmelo', 'Conor', 'WRC Road Ride', 'Negro', '6 años', 'Bici de carretera negra y roja con el grupo 105', '196966', 'bici18.jpg', '30.00'),
(19, 'BTWIN Nueva Azul MTB 520 C2 ROBADA', '2016-08-20', '2016-08-19', 'Barcelona', 'Robada en CC la maquinista, azul marino rockrider 520 C2', 'BTWIN ', 'MTB 520 C2', 'Azul', '1 año', 'Frenos de disco, suspensión delantera', 'TH456L66', 'bici19.jpg', '20.00'),
(20, 'Robada: Wilier GTR 2015', '2016-10-08', '2016-10-07', 'Madrid', 'Bici de carretera robada en Madrid en febrero 2016', 'Wilier', 'GTR 2015', 'Negro y verde', '1 año', 'Modelo Wilier GTR 2015, color negro, verde y amarillo fluo. Montaje ultegra completo, 52/36, talla XS', '87120030', 'bici20.jpg', '50.00'),
(21, 'Robada: ORBEA ORCA TPB CT 11 54 CARB-RED', '2016-07-30', '2016-07-29', 'Navarra', 'Robada de un trastero entre el 29/07 y el 30/07/2015 en TAFALLA-NAVARRA.', 'ORBEA', 'ORCA TPB CT 11 54 CARB-RE', 'Blanco y rojo', '2 años', 'Bici de carbono de carretera. Componentes SHIMANO ULTEGRA, manillar plano de carbono marca NESS blanco, rojo y negro.', '12340976FR', 'bici21.jpg', '80.00'),
(23, 'Robada: CONOR ENEMY', '2016-06-22', '2016-06-21', 'Barcelona', 'Robada por un individuo a la fuerza', 'CONOR', 'ENEMY', 'Verde', '3 años', 'Bici para niño', 'YQ11F120233', 'bici22.jpg', '30.00'),
(24, 'Robada: NISHIKI 422', '2016-08-11', '2016-08-09', 'Madrid', 'Robada Parking ext. Alcampo Pío XII', 'NISHIKI ', '422', 'Plateado', '2 años', '24V, SHIMANO DEORE,V-BRAKE, 28"', 'WS675TK23', 'bici23.jpg', '60.00'),
(25, 'Robada: TREK MARLIN 7 17.5 29 RED-WT', '2016-10-03', '2016-10-01', 'Madrid', 'Robada en la calle Santa Hotensia 26 Madrid\r\nen el mismo EDIFICIO DE IBM', 'TREK', 'MARLIN 7 17.5 29 RED-WT', 'Rojo', '1 año', 'Cuadro de aluminio de color rojo', 'WTU093C1531J', 'bici24.jpg', '40.00'),
(26, 'Robada: Sporty 1.2. sporty 1.2 [2013]', '2016-10-18', '2016-10-16', 'Madrid', 'El miércoles  me robaron la bici que muestro en la foto. Es bastante común, pero si alguien se la encuentra que me avise.', 'Sporty', '1.2', 'Blanco', '3 años', 'Bici común de color rosa y blanco', 'GGBD5658K', 'bici25.jpg', '55.00'),
(27, 'Robada: Specialized Myka 2014 29"', '2016-10-05', '2016-10-04', 'Barcelona', 'La robaron por estar impecable. Una más vieja la dejaron.', 'Specialized', 'Myka 2014', 'Blanco', '2 años', 'La bicicleta estaba como nueva, con cuentakilometros y portabidón. Blanca con detalles verdes.', 'G45DR29K', 'bici26.jpg', '30.00'),
(28, 'Robada: WEED 26 MTBSTACK t18', '2016-06-19', '2016-06-16', 'Córdoba', 'Robada en Palma del Río (Córdoba)', 'WEED', '26 MTBSTACK t18', 'Blanco', '2 años', 'Color blanca con letras WEED roja con bordes negros y sillín predomina blanco', 'HJ543WSS', 'bici27.jpg', '50.00'),
(29, 'Robada: Jamis Dakar XCT 2.0', '2016-08-19', '2016-08-16', 'Madrid', 'La robaron al descuido con forcejeo,me rompieron el hombro en el intento. en la calle Camilo Jose Cela 9 en Alcobendas.', 'Jamis', 'Dakar XCT 2.0', 'Rojo', '2 años', 'Totalmente de color rojo', '76TGD32', 'bici28.jpg', '90.00'),
(30, 'Robada: Arena', '2016-10-21', '2016-10-20', 'Madrid', 'Robada en zona Barrio del Pilar, en el aparca coches de la piscina Vicente del Bosque, justo a la salida de la piscina descubierta.', 'BH', 'Arena', 'Azul', '6 años', 'Bici BH azul de chica con ruedas desmontables, de alumnio, con marchas, comprada en el 2010.', '125743739', 'bici29.jpg', '40.00'),
(31, 'Robada: CANNONDALE RZ XLR2 2013', '2016-09-05', '2016-09-04', 'Valencia', 'Robada en Valencia', 'CANNONDALE', 'RZ XLR2 2013', 'Blanco y azul', '3 años', 'CANNONDALE RZ XLR2 2013 de color azul y blanco con SOPORTE GARMIN FRONTAL Y PUÑOS RITCHEY GRIS-NEGRO', 'LO573GSFF3', 'bici30.jpg', '75.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anunci`
--
ALTER TABLE `anunci`
  ADD PRIMARY KEY (`anu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anunci`
--
ALTER TABLE `anunci`
  MODIFY `anu_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
