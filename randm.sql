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
  `urlFoto` varchar(160) NOT NULL,
  `urlCancion` varchar(30) NOT NULL,
  `genero` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`idCancion`, `nombreCancion`, `autor`, `urlFoto`, `urlCancion`, `genero`) VALUES
(1, 'Get Schwifty', 'Rick Sánchez, Morty Smith', 'https://static.wikia.nocookie.net/rickandmorty/images/9/95/S2e5_Get_Schwifty_Song.png/revision/latest/scale-to-width-down/350?cb=20160926033022', 'https://spoti.fi/3xymVba', 'EDM / Hip Hop'),
(2, 'Goodbye Moonmen', 'Fart', 'https://static.wikia.nocookie.net/rickandmorty/images/8/88/Goodbye_Moonmen.jpg/revision/latest/scale-to-width-down/350?cb=20210919083114', 'https://spoti.fi/3rpO4vN', 'Acoustic'),
(3, 'For The Damaged Coda', 'Blonde Redhead', 'https://static.wikia.nocookie.net/rickandmorty/images/0/0a/Evilmortyblends.png/revision/latest/scale-to-width-down/350?cb=20161030092055', 'https://spoti.fi/3xJRACw', 'Piano / Orchesta'),
(4, 'Do You Feel It?', 'Chaos Chaos', 'https://static.wikia.nocookie.net/rickandmorty/images/c/c4/S2e3_t8syes.jpg/revision/latest/scale-to-width-down/350?cb=20160522150956', 'https://spoti.fi/3o3Q7n3', 'Pop'),
(5, 'Let Me Out', 'Justin Roiland', 'https://static.wikia.nocookie.net/rickandmorty/images/9/9b/LETMEOUT.jpg/revision/latest/scale-to-width-down/350?cb=20170921181141', 'https://spoti.fi/3o1PoD4', 'Rock Garage'),
(6, 'Head Bent Over', 'Justin Roiland', 'https://static.wikia.nocookie.net/rickandmorty/images/7/77/Raise_the_Posterior.png/revision/latest/scale-to-width-down/350?cb=20150829165926', 'https://spoti.fi/2ZCIw5N', 'Hip Hop'),
(7, 'Dont Look Back', 'Lauren Culjak', 'https://static.wikia.nocookie.net/rickandmorty/images/b/bd/Dont_Look_Back.png/revision/latest/scale-to-width-down/350?cb=20210919084413', 'https://spoti.fi/3E7KbiG', 'Pop'),
(8, 'Glory to Glorzo', 'Daniel James Harmon', 'https://static.wikia.nocookie.net/rickandmorty/images/2/2c/Glory_to_Glorzo.jpg/revision/latest/scale-to-width-down/350?cb=20210919074433', 'https://spoti.fi/3pgwisp', 'Alternative Christian Rock'),
(9, 'Two Crows Theme', 'Cecilia Gault', 'https://static.wikia.nocookie.net/rickandmorty/images/b/bd/Two_Crows_Theme.jpg/revision/latest/scale-to-width-down/350?cb=20210919081235', 'https://spoti.fi/3pfaPQf', 'Jpop'),
(10, 'Human Music', 'Zigerions', 'https://static.wikia.nocookie.net/rickandmorty/images/d/d3/I_like_it.PNG/revision/latest/scale-to-width-down/350?cb=20160605003949', 'https://spoti.fi/3E6Kom1', 'Pop'),
(11, 'Main Theme', 'Ryan Elder', 'https://static.wikia.nocookie.net/rickandmorty/images/9/99/A1NLo2zU4LL._AC_SL1500_.jpg/revision/latest?cb=20190918192103', 'https://spoti.fi/3EcbFn8', 'OST'),
(12, 'Jerrys Rick', 'Ryan Elder', 'https://i1.sndcdn.com/artworks-000077650602-a24byv-t500x500.jpg', 'https://spoti.fi/3I0ryiW', 'OST'),
(13, 'Small intestine song', 'Justin Roiland', 'https://static.wikia.nocookie.net/rickandmorty/images/6/63/It%27s_a_Small%2C_Small_Intestine.png/revision/latest?cb=20150814213427', 'https://spoti.fi/3d2JGuj', 'OST'),
(14, 'Flu Hatin Rap', 'Ryan Elder', 'https://static.wikia.nocookie.net/rickandmorty/images/2/2b/Flu_Hating_Rap.png/revision/latest?cb=20151004193330', 'https://spoti.fi/3Ia8xdW', 'OST'),
(15, 'Rick Dance', 'Lauren Hillman', 'https://static.wikia.nocookie.net/rickandmorty/images/0/06/The_Rick_Dance.png/revision/latest/top-crop/width/360/height/360?cb=20151004185250', 'https://spoti.fi/3pwVICf', 'OST');

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
  `urlFoto` varchar(160) NOT NULL,
  `idLocalizacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personaje`
--

INSERT INTO `personaje` (`idPersonaje`, `nombrePersonaje`, `actorDoblaje`, `epAparicion`, `ultAparicion`, `estatura`, `peso`, `edad`, `urlFoto`, `idLocalizacion`) VALUES
(1, 'Morty Smith', 'Justin Roiland', 'S1 E3', 'S5 E10', 1.600, 54.000, 15, 'https://static.wikia.nocookie.net/rickandmorty/images/e/ee/Morty501.png/revision/latest/scale-to-width-down/350?cb=20210827150137', 1),
(2, 'Rick Sánchez', 'Justin Roiland', 'S1 E3', 'S5 E10', 1.980, 86.000, 70, 'https://static.wikia.nocookie.net/characterprofile/images/a/a6/Rick_Sanchez.png/revision/latest/scale-to-width-down/153?cb=20180110031543', 1),
(3, 'Beth Smith', 'Sarah Chalke', 'S1 E6', 'S5 E10', 1.740, 62.000, 38, 'https://static.wikia.nocookie.net/rickandmorty/images/5/58/Beth_Smith.png/revision/latest/scale-to-width-down/350?cb=20191122063320', 1),
(4, 'Summer Smith', 'Spencer Grammer', 'S1 E6', 'S5 E10', 1.700, 60.000, 18, 'https://static.wikia.nocookie.net/rickandmorty/images/a/ad/Summer_is_cool.jpeg/revision/latest/scale-to-width-down/328?cb=20160919183158', 1),
(5, 'Jerry Smith', 'Chris Parnell', 'S1 E6', 'S5 E10', 1.780, 68.000, 35, 'https://static.wikia.nocookie.net/rickandmorty/images/f/f1/Jerry_Smith.png/revision/latest/scale-to-width-down/340?cb=20160923151111', 1),
(6, 'Jessica', 'Kari Wahlgren', 'S1 E1', 'S5 E1', 1.600, 55.000, 14, 'https://static.wikia.nocookie.net/rickandmorty/images/e/e8/Jessica.png/revision/latest/scale-to-width-down/350?cb=20150706222334', 1),
(7, 'Mr. Goldenfold', 'Brandon Johnson', 'S1 E1', 'S4 E8', 1.700, 85.000, 48, 'https://static.wikia.nocookie.net/rickandmorty/images/4/40/Mr._Goldenfold.png/revision/latest/scale-to-width-down/350?cb=20191212080412', 1),
(8, 'Director Vagina', 'Phil Hendrie', 'S1 E1', 'S3 E9', 1.720, 86.000, 65, 'https://static.wikia.nocookie.net/rickandmorty/images/4/4f/Principal_Vagina_S01_E09.png/revision/latest/scale-to-width-down/350?cb=20140428151355', 1),
(9, 'Brad', 'Echo Kellum', 'S1 E6', 'S5 E5', 1.700, 65.000, 15, 'https://static.wikia.nocookie.net/rickandmorty/images/a/ac/Brad.jpg/revision/latest/scale-to-width-down/200?cb=20150730222204', 1),
(10, 'Snuffles', 'Rob Paulsen', 'S1 E2', 'S1 E2', 0.500, 10.000, 1, 'https://static.wikia.nocookie.net/rickandmorty/images/7/70/Snuffles-helmet.jpg/revision/latest/scale-to-width-down/350?cb=20131212193614', 1),
(11, 'Evil Morty', 'Justin Roiland', 'S1 E10', 'S5 E10', 1.600, 54.000, 15, 'https://static.wikia.nocookie.net/rickandmorty/images/9/9c/EvilMortyInSpace.png/revision/latest?cb=20210906195457', 6),
(12, 'Diane Sanchez', 'Kari Wahigren', 'S3 E1', 'S5 E10', 1.900, 70.000, 38, 'https://static.wikia.nocookie.net/rickandmorty/images/3/3e/Diane.jpg/revision/latest?cb=20171222021619', 1),
(13, 'Mr Poopybutthole', 'Justin Roiland', 'S2 E4', 'S5 E10', 1.000, 38.000, 30, 'https://static.wikia.nocookie.net/rickandmorty/images/3/37/Mr_poopy_butthole.png/revision/latest?cb=20150819161234', 1),
(14, 'Planetina', 'Alison Brie', 'S5 E3', 'S5 E3', 2.000, 55.000, 16, 'https://static.wikia.nocookie.net/rickandmorty/images/9/90/Ek4o50s4t4971.png/revision/latest?cb=20210705144702', 1),
(15, 'Abrodolph Lincoler', 'Maurice LaMarche', 'S1 E11', 'S1 E11', 1.000, 38.000, 30, 'https://static.wikia.nocookie.net/rickandmorty/images/b/bb/Abradolf_Lincler_Angry.png/revision/latest?cb=20171214005518', 11);

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
