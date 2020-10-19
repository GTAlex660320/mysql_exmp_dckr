-- phpMyAdmin SQL Dump
-- Base de datos: `democreds`



create database `democreds`;

CREATE USER credusr IDENTIFIED BY 'secret';

GRANT ALL PRIVILEGES ON democreds.* TO credusr;

use `democreds`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `clientes` (
  `id_cliente` bigint(20) NOT NULL,
  `n_cliente` varchar(100) NOT NULL,
  `rfc` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `clientes` (`id_cliente`, `n_cliente`, `rfc`) VALUES
(1, 'Bruce Wynne', 'WYBB380510BTM'),
(2, 'HALL JORDAN', 'GATA660320'),
(3, 'CLARK KEN', 'KECS360710SPM'),
(5, 'Dianna Prince', 'PRDN380510WWM');



CREATE TABLE `creditos` (
  `id_credito` bigint(20) NOT NULL,
  `id_cliente` bigint(20) NOT NULL,
  `tp_credito` varchar(2) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `fch_solc` date NOT NULL,
  `fch_inic` date NOT NULL,
  `fch_fin` date NOT NULL,
  `plazo` int(11) NOT NULL,
  `tasa` float NOT NULL,
  `monto_solc` float NOT NULL,
  `monto_capt` float NOT NULL,
  `monto_intrs` float NOT NULL,
  `saldo_capt` float NOT NULL,
  `saldo_intrs` float NOT NULL,
  `saldo_penal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `creditos` (`id_credito`, `id_cliente`, `tp_credito`, `estado`, `fch_solc`, `fch_inic`, `fch_fin`, `plazo`, `tasa`, `monto_solc`, `monto_capt`, `monto_intrs`, `saldo_capt`, `saldo_intrs`, `saldo_penal`) VALUES
(1, 1, '01', '01', '2020-08-05', '2020-08-26', '2021-10-21', 12, 1, 5000000, 5000000, 250000, 0, 0, 0);


CREATE TABLE `cuentas` (
  `id_cuenta` bigint(20) NOT NULL,
  `tp_cuenta` varchar(2) NOT NULL,
  `id_cliente` bigint(20) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `fch_alta` date NOT NULL,
  `Saldo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `cuentas` (`id_cuenta`, `tp_cuenta`, `id_cliente`, `estado`, `fch_alta`, `Saldo`) VALUES
(1204523, 'DB', 1, '01', '3920-11-03', 1000),
(12000213, 'DB', 1, '01', '2016-04-30', 10000),
(1012501235, 'IN', 1, '01', '2020-10-08', 250000000);


CREATE TABLE `movimientos` (
  `folio` bigint(20) NOT NULL,
  `id_cuenta` bigint(20) NOT NULL,
  `id_credito` bigint(20) NOT NULL,
  `tp_movimiento` varchar(2) NOT NULL,
  `monto_capt` float NOT NULL,
  `monto_ints` float NOT NULL,
  `fch_movimiento` date NOT NULL,
  `estado` varchar(2) NOT NULL,
  `id_motivo` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `movimientos` (`folio`, `id_cuenta`, `id_credito`, `tp_movimiento`, `monto_capt`, `monto_ints`, `fch_movimiento`, `estado`, `id_motivo`) VALUES
(1010000001, 1012501235, 0, 'DB', 100000, 120, '2020-10-01', '01', '00'),
(1010000002, 1012501235, 0, 'DB', 120000, 12, '2020-10-05', '01', '00'),
(1010000003, 1012501235, 0, 'HB', 12000, 1.2, '2020-10-07', '02', '01');

--
-- Índices para tablas volcadas
--

ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

ALTER TABLE `creditos`
  ADD PRIMARY KEY (`id_credito`);

ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id_cuenta`);

ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`folio`);

COMMIT;
