-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2021 a las 22:22:28
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `randm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `idCancion` int(11) NOT NULL,
  `nombreCancion` varchar(40) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `urlFoto` varchar(30) NOT NULL,
  `urlCancion` varchar(30) NOT NULL,
  `genero` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`idCancion`, `nombreCancion`, `autor`, `urlFoto`, `urlCancion`, `genero`) VALUES
(1, 'Get Schwifty', 'Rick Sánchez, Morty Smith', 'https://bit.ly/3lmA2at', 'https://spoti.fi/3xymVba', 'EDM / Hip Hop'),
(2, 'Goodbye Moonmen', 'Fart', 'https://bit.ly/315dJzj', 'https://spoti.fi/3rpO4vN', 'Acoustic'),
(3, 'For The Damaged Coda', 'Blonde Redhead', 'https://bit.ly/3p9yC4h', 'https://spoti.fi/3xJRACw', 'Piano / Orchesta'),
(4, 'Do You Feel It?', 'Chaos Chaos', 'https://bit.ly/3D4kwpS', 'https://spoti.fi/3o3Q7n3', 'Pop'),
(5, 'Let Me Out', 'Justin Roiland', 'https://bit.ly/3xPjtct', 'https://spoti.fi/3o1PoD4', 'Rock Garage'),
(6, 'Head Bent Over', 'Justin Roiland', 'https://bit.ly/3xziMDT', 'https://spoti.fi/2ZCIw5N', 'Hip Hop'),
(7, 'Dont Look Back', 'Lauren Culjak', 'https://bit.ly/3o56iR4', 'https://spoti.fi/3E7KbiG', 'Pop'),
(8, 'Glory to Glorzo', 'Daniel James Harmon', 'https://bit.ly/32KuT5I', 'https://spoti.fi/3pgwisp', 'Alternative Christian Rock'),
(9, 'Two Crows Theme', 'Cecilia Gault', 'https://bit.ly/3D6524C', 'https://spoti.fi/3pfaPQf', 'Jpop'),
(10, 'Human Music', 'Zigerions', 'https://bit.ly/3rpOAtI', 'https://spoti.fi/3E6Kom1', 'Pop'),
(11, 'Main Theme', 'Ryan Elder', 'https://bit.ly/3xCXTHM', 'https://spoti.fi/3EcbFn8', 'OST'),
(12, 'Jerrys Rick', 'Ryan Elder', 'https://bit.ly/3xCXTHM', 'https://spoti.fi/3I0ryiW', 'OST'),
(13, 'Small intestine song', 'Justin Roiland', 'https://bit.ly/3xCXTHM', 'https://spoti.fi/3d2JGuj', 'OST'),
(14, 'Flu Hatin Rap', 'Ryan Elder', 'https://bit.ly/3xCXTHM', 'https://spoti.fi/3Ia8xdW', 'OST'),
(15, 'Rick Dance', 'Lauren Hillman', 'https://bit.ly/3xCXTHM', 'https://spoti.fi/3pwVICf', 'OST');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episodio`
--

CREATE TABLE `episodio` (
  `idEpisodio` int(11) NOT NULL,
  `temporada` int(1) NOT NULL,
  `nombreEpisodio` varchar(40) NOT NULL,
  `fechaEstreno` date DEFAULT NULL,
  `viewer` double(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `episodio`
--

INSERT INTO `episodio` (`idEpisodio`, `temporada`, `nombreEpisodio`, `fechaEstreno`, `viewer`) VALUES
(1, 1, 'Pilot', '2013-12-02', 1.10),
(2, 1, 'Lawnmower Dog', '2013-12-09', 1.51),
(3, 1, 'Anatomy Park', '2013-12-16', 1.30),
(4, 1, 'M. Night Shaym-Aliens!', '2014-01-13', 1.32),
(5, 1, 'Meeseeks and Destroy', '2014-01-20', 1.61),
(6, 1, 'Rick Potion #9', '2014-01-27', 1.75),
(7, 1, 'Raising Gazorpazorp', '2014-03-10', 1.76),
(8, 1, 'Rixty Minutes', '2014-03-17', 1.48),
(9, 1, 'Something Ricked This Way Comes', '2014-03-24', 1.54),
(10, 1, 'Close Rick-counters of the Rick Kind', '2014-04-07', 1.75),
(11, 1, 'Ricksy business', '2014-04-14', 2.13),
(12, 2, 'A Rickle in Time', '2015-07-26', 2.12),
(13, 2, 'Mortynight Run', '2015-08-02', 2.19),
(14, 2, 'Auto Erotic Assimilation', '2015-08-09', 1.94),
(15, 2, 'Total Rickall', '2015-08-16', 1.96);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

CREATE TABLE `localizacion` (
  `idLocalizacion` int(11) NOT NULL,
  `planeta` varchar(40) DEFAULT NULL,
  `dim` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localizacion`
--

INSERT INTO `localizacion` (`idLocalizacion`, `planeta`, `dim`) VALUES
(1, 'Tierra', 'C-137'),
(2, 'Central Finite Curve', 'Multiverse'),
(3, 'The Citadel', 'Multiverse'),
(4, 'Tierra C-131', 'Cronenberged'),
(5, 'Boob World', 'C-137'),
(6, 'Blips and Chitz', 'Replacement'),
(7, 'Mortytown', 'Unknown'),
(8, 'Nuptia 4', 'Replacement'),
(9, 'Galactic Federation', 'Replacement'),
(10, 'Shoneys', 'Unknown'),
(11, 'Tierra', 'C-36'),
(12, 'Unknown', 'Unknown');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje`
--

CREATE TABLE `personaje` (
  `idPersonaje` int(11) NOT NULL,
  `nombrePersonaje` varchar(50) NOT NULL,
  `actorDoblaje` varchar(50) NOT NULL,
  `epAparicion` varchar(6) NOT NULL,
  `ultAparicion` varchar(6) DEFAULT NULL,
  `estatura` double(6,3) DEFAULT NULL,
  `peso` double(6,3) DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  `urlFoto` varchar(30) NOT NULL,
  `idLocalizacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personaje`
--

INSERT INTO `personaje` (`idPersonaje`, `nombrePersonaje`, `actorDoblaje`, `epAparicion`, `ultAparicion`, `estatura`, `peso`, `edad`, `urlFoto`, `idLocalizacion`) VALUES
(1, 'Morty Smith', 'Justin Roiland', 'S1 E3', 'S5 E10', 1.600, 54.000, 15, 'https://bit.ly/3G4OHiF', 1),
(2, 'Rick Sánchez', 'Justin Roiland', 'S1 E3', 'S5 E10', 1.980, 86.000, 70, 'https://bit.ly/3D7lr90', 1),
(3, 'Beth Smith', 'Sarah Chalke', 'S1 E6', 'S5 E10', 1.740, 62.000, 38, 'https://bit.ly/3E8REOn', 1),
(4, 'Summer Smith', 'Spencer Grammer', 'S1 E6', 'S5 E10', 1.700, 60.000, 18, 'https://bit.ly/3G288Iy', 1),
(5, 'Jerry Smith', 'Chris Parnell', 'S1 E6', 'S5 E10', 1.780, 68.000, 35, 'https://bit.ly/3o4VvGN', 1),
(6, 'Jessica', 'Kari Wahlgren', 'S1 E1', 'S5 E1', 1.600, 55.000, 14, 'https://bit.ly/3rn5B85', 1),
(7, 'Mr. Goldenfold', 'Brandon Johnson', 'S1 E1', 'S4 E8', 1.700, 85.000, 48, 'https://bit.ly/3I1nu20', 1),
(8, 'Director Vagina', 'Phil Hendrie', 'S1 E1', 'S3 E9', 1.720, 86.000, 65, 'https://bit.ly/3D2EcdI', 1),
(9, 'Brad', 'Echo Kellum', 'S1 E6', 'S5 E5', 1.700, 65.000, 15, 'https://bit.ly/3o2teRg', 1),
(10, 'Snuffles', 'Rob Paulsen', 'S1 E2', 'S1 E2', 0.500, 10.000, 1, 'https://bit.ly/3HYRdZj', 1),
(11, 'Evil Morty', 'Justin Roiland', 'S1 E10', 'S5 E10', 1.600, 54.000, 15, 'https://bit.ly/3FZTzp3', 6),
(12, 'Diane Sanchez', 'Kari Wahigren', 'S3 E1', 'S5 E10', 1.900, 70.000, 38, 'https://bit.ly/3pcD2av', 1),
(13, 'Mr Poopybutthole', 'Justin Roiland', 'S2 E4', 'S5 E10', 1.000, 38.000, 30, 'https://bit.ly/3Ih9QYT', 1),
(14, 'Planetina', 'Alison Brie', 'S5 E3', 'S5 E3', 2.000, 55.000, 16, 'https://bit.ly/3EbTUEE', 1),
(15, 'Abrodolph Lincoler', 'Maurice LaMarche', 'S1 E11', 'S1 E11', 1.000, 38.000, 30, 'https://bit.ly/3G2oMIq', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`idCancion`);

--
-- Indices de la tabla `episodio`
--
ALTER TABLE `episodio`
  ADD PRIMARY KEY (`idEpisodio`);

--
-- Indices de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD PRIMARY KEY (`idLocalizacion`);

--
-- Indices de la tabla `personaje`
--
ALTER TABLE `personaje`
  ADD PRIMARY KEY (`idPersonaje`),
  ADD KEY `idLocalizacion` (`idLocalizacion`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personaje`
--
ALTER TABLE `personaje`
  ADD CONSTRAINT `personaje_ibfk_1` FOREIGN KEY (`idLocalizacion`) REFERENCES `localizacion` (`idLocalizacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
