-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2023 a las 03:08:57
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ccih_db`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultaMatriculas` ()   select m.IdMatricula, m.Cedula, k.Nombre, k.Apellido, m.FechaMatricula, m.Mensualidad, m.Materiales, m.FechaPago, c.Nombre as Idioma, c.Nivel, c.Modalidad, m.FechaInicio, s.Nombre as Status

from matricula as m,
	cursos as c,
    clientes as k,
    status as s
    
where m.Cedula = k.Cedula
and m.IdCurso = c.IdCurso
and m.IdStatus = s.IdStatus$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarStatus` ()   Select Nombre
from status$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCliente` (IN `_Cedula` INT(20), IN `_Nombre` VARCHAR(20), IN `_Apellido` VARCHAR(20), IN `_Telefono` VARCHAR(20), IN `_Correo` VARCHAR(50), IN `_Status` INT(2), IN `_FechaNacimiento` DATE, IN `_IdModificacion` INT(20), IN `_Edad` INT(10))   insert into clientes (Cedula, Nombre, Apellido, Telefono, Correo, IdStatus, FechaNacimiento, IdModificacion, Edad) VALUES
				(_Cedula, _Nombre, _Apellido, _Telefono, _Correo, _Status, _FechaNacimiento, _IdModificacion, _Edad)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCurso` (IN `_Nombre` VARCHAR(50), IN `_Nivel` VARCHAR(50), IN `_Modalidad` VARCHAR(50), IN `_IdHorario` VARCHAR(10), IN `_IdModificacion` INT(20))   Insert into cursos (Nombre, Nivel, Modalidad, IdHorario, IdModificacion)VALUES
			(_Nombre, _Nivel, _Modalidad, _IdHorario, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertGrupo` (IN `_IdCurso` INT(20), IN `_IdHorario` INT(20), IN `_NumGrupo` INT(20), IN `_IdProfesor` INT(20), IN `_CedEstudiante` INT(20), IN `_Cupos` INT(20), IN `_IdModificacion` INT(20))   insert into grupos (IdCurso, IdHorario, NumGrupo, IdProfesor, CedEstudiante, Cupos, CuposDisponibles, IdModificacion)VALUES
		(_IdCurso, _IdHorario, _NumGrupo, _IdProfesor, _CedEstudiante, _Cupos, _CuposDisponibles, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertHorario` (IN `_Dia` VARCHAR(20), IN `_HoraInicio` VARCHAR(20), IN `_HoraFin` VARCHAR(20), IN `_IdModificacion` INT(10))   insert into horarios (Dia, HoraInicio, HoraFin, IdModificacion)VALUES
			(_Dia, _HoraInicio, _HoraFin, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertMatricula` (IN `_Cedula` INT(20), IN `_IdCurso` INT(5), IN `_Mensualidad` DECIMAL, IN `_FechaPago` DATE, IN `_IdGrupo` INT(5), IN `_IdStatus` INT(5), IN `_IdModificacion` INT(5), IN `_FechaInicio` DATE, IN `_Materiales` DECIMAL(8,2))   Insert into matricula (Cedula, IdCurso, Mensualidad, FechaPago, IdGrupo, IdStatus, IdModificacion, FechaInicio, Materiales) VALUES
		(_Cedula, _IdCurso, _Mensualidad, _FechaPago, _IdGrupo, _IdStatus, _IdModificacion, _FechaInicio, _Materiales)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertNotas` (IN `_CedEstudiante` INT(20), IN `_IdTipoAsignacion` INT(10), IN `_Nota` DECIMAL(5,2), IN `_IdGrupo` INT(1), IN `_IdModificacion` INT(1))   insert into notas (CedEstudiante, IdTipoAsignacion, Nota, IdGrupo, IdModificacion)VALUES
				(_CedEstudiante, _IdTipoAsignacion, _Nota, _IdGrupo, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPago` (IN `_IdTipoPago` INT(10), IN `_Monto` DECIMAL(10,2), IN `_Comentario` VARCHAR(100), IN `_CedCliente` INT(20), IN `_IdModificacion` INT(20))   insert into pagos (IdTipoPago, Monto, Comentario, CedCliente, IdModificacion) VALUES
		(_IdTipoPago, _Monto, _Comentario, _CedCliente, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertProfesor` (IN `_Cedula` INT(20), IN `_Nombre` VARCHAR(20), IN `_Apellido` VARCHAR(20), IN `_Correo` VARCHAR(50), IN `_Telefono` VARCHAR(20), IN `_IdStatus` INT(2), IN `_IdModificacion` INT(255))   Insert into profesores (Cedula, Nombre, Apellido, Correo, Telefono, IdStatus, IdModificacion) VALUES
					(_Cedula, _Nombre, _Apellido, _Correo, _Telefono, _IdStatus, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertRoles` (IN `_Nombre` VARCHAR(15))   INSERT into roles (Nombre) VALUES
		(_Nombre)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertStatus` (IN `_Nombre` VARCHAR(15), IN `_IdModificacion` INT(10))   insert into status (Nombre, IdModificacion)VALUES
		(_Nombre, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertTipoAsignacion` (IN `_Nombre` VARCHAR(15), IN `_IdModificacion` INT(10))   insert into tipoasignacion (Nombre, IdModificacion)VALUES
		(_Nombre, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertTipoPago` (IN `_Nombre` VARCHAR(15), IN `_IdModificacion` INT(10))   insert into tipopago (Nombre, IdModificacion)VALUES
			(_Nombre, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertUsuario` (IN `_Cedula` INT(20), IN `_Usuario` VARCHAR(20), IN `_PwUsuario` VARCHAR(20), IN `_IdRol` INT(20), IN `_IdStatus` INT(20), IN `_IdModificacion` INT(20))   insert into usuarios (Cedula, Usuario, PwUsuario, IdRol, IdStatus, IdModificacion) VALUES
				(_Cedula, _Usuario, _PwUsuario, _IdRol, _IdStatus, _IdModificacion)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `validarIngresoLogin` (IN `_Nombre` VARCHAR(20), IN `_PwUsuario` VARCHAR(20))   select u.Usuario, r.Nombre as Rol
from usuarios as u, roles as r
where u.Usuario = _Nombre
and u.PwUsuario = _PwUsuario
and u.IdRol = r.IdRol$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IdCliente` int(255) NOT NULL,
  `Cedula` int(20) DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellido` varchar(20) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `IdStatus` int(255) DEFAULT NULL,
  `FechaCreacion` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT current_timestamp(),
  `Edad` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IdCliente`, `Cedula`, `Nombre`, `Apellido`, `Telefono`, `Correo`, `IdStatus`, `FechaCreacion`, `FechaModificacion`, `IdModificacion`, `FechaNacimiento`, `Edad`) VALUES
(1, 12345678, 'Juan', 'Leon', '474577754', 'Prueba@Prueba.com', 1, '2023-02-22', '2023-02-22', 1, '1997-01-30', 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `IdCurso` int(255) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Nivel` varchar(20) DEFAULT NULL,
  `Modalidad` varchar(20) DEFAULT NULL,
  `IdHorario` int(255) DEFAULT NULL,
  `FechaCreacion` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`IdCurso`, `Nombre`, `Nivel`, `Modalidad`, `IdHorario`, `FechaCreacion`, `FechaModificacion`, `IdModificacion`) VALUES
(1, 'Ingles', 'Intensivo', 'Virtual', 1, '2023-02-22', '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `IdGrupo` int(255) NOT NULL,
  `IdCurso` int(255) DEFAULT NULL,
  `IdHorario` int(255) DEFAULT NULL,
  `NumGrupo` int(255) DEFAULT NULL,
  `IdProfesor` int(255) DEFAULT NULL,
  `CedEstudiante` int(20) DEFAULT NULL,
  `Cupos` int(255) DEFAULT NULL,
  `CuposDisponibles` int(255) DEFAULT NULL,
  `FechaCreacion` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`IdGrupo`, `IdCurso`, `IdHorario`, `NumGrupo`, `IdProfesor`, `CedEstudiante`, `Cupos`, `CuposDisponibles`, `FechaCreacion`, `FechaModificacion`, `IdModificacion`) VALUES
(1, 1, 1, 1, 1, 12345678, 5, 5, '2023-02-22', '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `IdHorario` int(255) NOT NULL,
  `Dia` varchar(10) DEFAULT NULL,
  `HoraInicio` varchar(5) DEFAULT NULL,
  `HoraFin` varchar(5) DEFAULT NULL,
  `FechaCreacion` date NOT NULL DEFAULT current_timestamp(),
  `FechaModificacion` date NOT NULL DEFAULT current_timestamp(),
  `IdModificacion` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`IdHorario`, `Dia`, `HoraInicio`, `HoraFin`, `FechaCreacion`, `FechaModificacion`, `IdModificacion`) VALUES
(1, 'Lunes', '8am', '11am', '2023-02-22', '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `IdMatricula` int(255) NOT NULL,
  `Cedula` int(255) DEFAULT NULL,
  `IdCurso` int(255) DEFAULT NULL,
  `Mensualidad` decimal(10,2) DEFAULT NULL,
  `FechaPago` date DEFAULT NULL,
  `IdStatus` int(255) DEFAULT NULL,
  `IdGrupo` int(255) DEFAULT NULL,
  `FechaMatricula` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `Materiales` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`IdMatricula`, `Cedula`, `IdCurso`, `Mensualidad`, `FechaPago`, `IdStatus`, `IdGrupo`, `FechaMatricula`, `FechaModificacion`, `IdModificacion`, `FechaInicio`, `Materiales`) VALUES
(1, 12345678, 1, '54000.00', '2023-02-23', 1, 1, '2023-02-22', '2023-02-22', 1, '2023-04-12', '34245.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `IdNota` int(255) NOT NULL,
  `CedEstudiante` int(20) DEFAULT NULL,
  `IdTipoAsignacion` int(255) DEFAULT NULL,
  `Nota` decimal(5,2) DEFAULT NULL,
  `IdGrupo` int(255) DEFAULT NULL,
  `FechaCreacion` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`IdNota`, `CedEstudiante`, `IdTipoAsignacion`, `Nota`, `IdGrupo`, `FechaCreacion`, `FechaModificacion`, `IdModificacion`) VALUES
(1, 12345678, 1, '80.00', 1, '2023-02-22', '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `IdPago` int(255) NOT NULL,
  `IdTipoPago` int(255) DEFAULT NULL,
  `Monto` decimal(10,2) DEFAULT NULL,
  `Comentario` varchar(200) DEFAULT NULL,
  `CedCliente` int(20) DEFAULT NULL,
  `FechaPago` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`IdPago`, `IdTipoPago`, `Monto`, `Comentario`, `CedCliente`, `FechaPago`, `FechaModificacion`, `IdModificacion`) VALUES
(1, 1, '25000.00', 'Pago completo', 12345678, '2023-02-22', '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `IdProfesor` int(255) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `IdStatus` int(255) DEFAULT NULL,
  `FechaCreacion` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL,
  `Cedula` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`IdProfesor`, `Nombre`, `Apellido`, `Correo`, `Telefono`, `IdStatus`, `FechaCreacion`, `FechaModificacion`, `IdModificacion`, `Cedula`) VALUES
(1, 'Maribel', 'Gomez', 'Profesor@prueba.com', '96587412', 1, '2023-02-22', '2023-02-22', 1, 478965478);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `IdRol` int(255) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `FechaCreacion` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`IdRol`, `Nombre`, `FechaCreacion`, `FechaModificacion`) VALUES
(1, 'Admin', '2023-02-22', '2023-02-22'),
(2, 'Estudiante', '2023-02-22', '2023-02-22'),
(3, 'Profesor', '2023-02-22', '2023-02-22'),
(4, 'Oficina', '2023-02-22', '2023-02-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `IdStatus` int(255) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `FechaCreacion` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`IdStatus`, `Nombre`, `FechaCreacion`, `FechaModificacion`, `IdModificacion`) VALUES
(1, 'Activo', '2023-02-22', '2023-02-22', 1),
(2, 'Inactivo', '2023-02-22', '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoasignacion`
--

CREATE TABLE `tipoasignacion` (
  `IdTipoAsignacion` int(255) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `FechaCreacion` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoasignacion`
--

INSERT INTO `tipoasignacion` (`IdTipoAsignacion`, `Nombre`, `FechaCreacion`, `FechaModificacion`, `IdModificacion`) VALUES
(1, 'Examen', '2023-02-22', '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `IdTipoPago` int(255) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `FechaCreacion` date DEFAULT current_timestamp(),
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`IdTipoPago`, `Nombre`, `FechaCreacion`, `FechaModificacion`, `IdModificacion`) VALUES
(1, 'Matricula', '2023-02-22', '2023-02-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` int(255) NOT NULL,
  `Cedula` int(20) DEFAULT NULL,
  `Usuario` varchar(20) DEFAULT NULL,
  `PwUsuario` varchar(20) DEFAULT NULL,
  `UltimaActividad` date DEFAULT current_timestamp(),
  `IdRol` int(255) DEFAULT NULL,
  `FechaModificacion` date DEFAULT current_timestamp(),
  `IdModificacion` int(255) DEFAULT NULL,
  `IdStatus` int(255) DEFAULT NULL,
  `FechaCreacion` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `Cedula`, `Usuario`, `PwUsuario`, `UltimaActividad`, `IdRol`, `FechaModificacion`, `IdModificacion`, `IdStatus`, `FechaCreacion`) VALUES
(1, 116810507, 'emoreira', 'Temporal', '2023-02-22', 1, '2023-02-22', 1, 1, '2023-02-22'),
(2, 12345678, 'jleon', 'Temporal', '2023-02-22', 3, '2023-02-22', 1, 1, '2023-02-22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`IdCurso`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`IdGrupo`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`IdHorario`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`IdMatricula`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`IdNota`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`IdPago`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`IdProfesor`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`IdRol`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`IdStatus`);

--
-- Indices de la tabla `tipoasignacion`
--
ALTER TABLE `tipoasignacion`
  ADD PRIMARY KEY (`IdTipoAsignacion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`IdTipoPago`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `IdCliente` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `IdCurso` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `IdGrupo` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `IdHorario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `IdMatricula` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `IdNota` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `IdPago` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `IdProfesor` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `IdRol` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `IdStatus` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipoasignacion`
--
ALTER TABLE `tipoasignacion`
  MODIFY `IdTipoAsignacion` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `IdTipoPago` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
