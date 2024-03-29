-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2018 at 12:44 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkeuanganpesantren`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `namalengkap` varchar(40) DEFAULT NULL,
  `jk` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`, `jk`) VALUES
(1, 'admin', 'admin', 'Admin Jaler', 'L'),
(3, 'adminah', 'adminah', 'Adminah Estri', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `kamar` varchar(20) NOT NULL,
  `idustadz` int(5) DEFAULT NULL,
  `kategori` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`kamar`, `idustadz`, `kategori`) VALUES
('1a', 1, 'L'),
('1b', 2, 'L'),
('1c', 3, 'L'),
('2a', 4, 'P'),
('2b', 5, 'P'),
('3a', 5, 'L'),
('3b', 4, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `santri`
--

CREATE TABLE `santri` (
  `nis` varchar(10) NOT NULL,
  `namasantri` varchar(50) DEFAULT NULL,
  `jk` enum('L','P') NOT NULL,
  `kamar` varchar(20) DEFAULT NULL,
  `tahunajaran` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `santri`
--

INSERT INTO `santri` (`nis`, `namasantri`, `jk`, `kamar`, `tahunajaran`) VALUES
('0908180001', 'Reva Pahlevi', 'L', '1b', '2017/2018'),
('0908180002', 'Roni Deandra', 'L', '1b', '2017/2018'),
('0908180003', 'Agil Bagaskara', 'L', '1c', '2017/2018'),
('0908180004', 'M. Nur Chandra  ', 'L', '1c', '2017/2018'),
('0908180005', 'Fattimah Azahra', 'P', '2a', '2017/2018'),
('0908180006', 'Rina Ayuningtyas', 'P', '2a', '2017/2018'),
('0908180007', 'Gilang Persada', 'L', '1b', '2017/2018'),
('0908180008', 'Amira Anjani', 'P', '2a', '2017/2018'),
('1308180001', 'Nur Aini', 'P', '2a', '2017/2018'),
('1308180002', 'Anita Maharani', 'P', '2a', '2017/2018');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `idsmt` int(100) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `jatuhtempo` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `nobayar` varchar(10) NOT NULL,
  `tglbayar` date NOT NULL,
  `ket` varchar(50) NOT NULL,
  `idadmin` int(5) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`idsmt`, `nis`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `ket`, `idadmin`, `jumlah`) VALUES
(15, '0908180001', '2019-02-09', 'Februari 2019', '', '0000-00-00', '', 0, 200000),
(16, '0908180001', '2019-08-09', 'Agustus 2019', '', '0000-00-00', '', 0, 200000),
(17, '0908180002', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 200000),
(18, '0908180002', '2019-09-09', 'September 2019', '', '0000-00-00', '', 0, 200000),
(19, '0908180003', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 200000),
(20, '0908180003', '2019-09-09', 'September 2019', '', '0000-00-00', '', 0, 200000),
(21, '0908180004', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 200000),
(22, '0908180004', '2019-09-09', 'September 2019', '', '0000-00-00', '', 0, 200000),
(23, '0908180005', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 250000),
(24, '0908180005', '2019-09-09', 'September 2019', '', '0000-00-00', '', 0, 250000),
(25, '0908180006', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 250000),
(26, '0908180006', '2019-09-09', 'September 2019', '', '0000-00-00', '', 0, 250000),
(27, '0908180007', '2019-02-09', 'Februari 2019', '', '0000-00-00', '', 0, 0),
(28, '0908180007', '2019-08-09', 'Agustus 2019', '', '0000-00-00', '', 0, 0),
(29, '0908180008', '2018-05-01', 'Mei 2018', '', '0000-00-00', '', 0, 0),
(30, '0908180008', '2018-11-01', 'November 2018', '', '0000-00-00', '', 0, 0),
(41, '1308180001', '2018-05-01', 'Mei 2018', '', '0000-00-00', '', 0, 680000),
(42, '1308180001', '2018-11-01', 'November 2018', '', '0000-00-00', '', 0, 680000),
(43, '1308180002', '2018-05-01', 'Mei 2018', '', '0000-00-00', '', 0, 680000),
(44, '1308180002', '2018-11-01', 'November 2018', '', '0000-00-00', '', 0, 680000);

-- --------------------------------------------------------

--
-- Table structure for table `syahriyah`
--

CREATE TABLE `syahriyah` (
  `idsyahriyah` int(100) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `jatuhtempo` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `nobayar` varchar(10) NOT NULL,
  `tglbayar` date NOT NULL,
  `ket` varchar(50) NOT NULL,
  `idadmin` int(5) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syahriyah`
--

INSERT INTO `syahriyah` (`idsyahriyah`, `nis`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `ket`, `idadmin`, `jumlah`, `status`) VALUES
(85, '0908180001', '2018-08-09', 'Agustus 2018', '1808140013', '2018-08-14', 'LUNAS', 1, 200000, 1),
(86, '0908180001', '2018-09-09', 'September 2018', '', '0000-00-00', '', 0, 200000, 0),
(87, '0908180001', '2018-10-09', 'Oktober 2018', '', '2018-08-14', '', 1, 200000, 0),
(88, '0908180001', '2018-11-09', 'November 2018', '', '2018-08-14', '', 1, 200000, 0),
(89, '0908180001', '2018-12-09', 'Desember 2018', '', '0000-00-00', '', 0, 200000, 0),
(90, '0908180001', '2019-01-09', 'Januari 2019', '', '0000-00-00', '', 0, 200000, 0),
(91, '0908180001', '2019-02-09', 'Februari 2019', '', '0000-00-00', '', 0, 200000, 0),
(92, '0908180001', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 200000, 0),
(93, '0908180001', '2019-04-09', 'April 2019', '', '0000-00-00', '', 0, 200000, 0),
(94, '0908180001', '2019-05-09', 'Mei 2019', '', '0000-00-00', '', 0, 200000, 0),
(95, '0908180001', '2019-06-09', 'Juni 2019', '', '0000-00-00', '', 0, 200000, 0),
(96, '0908180001', '2019-07-09', 'Juli 2019', '', '0000-00-00', '', 0, 200000, 0),
(97, '0908180002', '2018-09-09', 'September 2018', '1808140014', '2018-08-14', 'LUNAS', 1, 200000, 1),
(98, '0908180002', '2018-10-09', 'Oktober 2018', '1808140015', '2018-08-14', 'LUNAS', 1, 200000, 1),
(99, '0908180002', '2018-11-09', 'November 2018', '1808140016', '2018-08-14', 'LUNAS', 1, 200000, 1),
(100, '0908180002', '2018-12-09', 'Desember 2018', '1808140017', '2018-08-14', 'LUNAS', 1, 200000, 0),
(101, '0908180002', '2019-01-09', 'Januari 2019', '', '0000-00-00', '', 0, 200000, 0),
(102, '0908180002', '2019-02-09', 'Februari 2019', '', '0000-00-00', '', 0, 200000, 0),
(103, '0908180002', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 200000, 0),
(104, '0908180002', '2019-04-09', 'April 2019', '', '0000-00-00', '', 0, 200000, 0),
(105, '0908180002', '2019-05-09', 'Mei 2019', '', '0000-00-00', '', 0, 200000, 0),
(106, '0908180002', '2019-06-09', 'Juni 2019', '', '0000-00-00', '', 0, 200000, 0),
(107, '0908180002', '2019-07-09', 'Juli 2019', '', '0000-00-00', '', 0, 200000, 0),
(108, '0908180002', '2019-08-09', 'Agustus 2019', '', '0000-00-00', '', 0, 200000, 0),
(109, '0908180003', '2018-09-09', 'September 2018', '', '2018-08-14', '', 1, 200000, 0),
(110, '0908180003', '2018-10-09', 'Oktober 2018', '', '2018-08-14', '', 1, 200000, 0),
(111, '0908180003', '2018-11-09', 'November 2018', '', '2018-08-14', '', 1, 200000, 0),
(112, '0908180003', '2018-12-09', 'Desember 2018', '', '2018-08-14', '', 1, 200000, 0),
(113, '0908180003', '2019-01-09', 'Januari 2019', '', '0000-00-00', '', 0, 200000, 0),
(114, '0908180003', '2019-02-09', 'Februari 2019', '', '0000-00-00', '', 0, 200000, 0),
(115, '0908180003', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 200000, 0),
(116, '0908180003', '2019-04-09', 'April 2019', '', '0000-00-00', '', 0, 200000, 0),
(117, '0908180003', '2019-05-09', 'Mei 2019', '', '0000-00-00', '', 0, 200000, 0),
(118, '0908180003', '2019-06-09', 'Juni 2019', '', '0000-00-00', '', 0, 200000, 0),
(119, '0908180003', '2019-07-09', 'Juli 2019', '', '0000-00-00', '', 0, 200000, 0),
(120, '0908180003', '2019-08-09', 'Agustus 2019', '', '0000-00-00', '', 0, 200000, 0),
(121, '0908180004', '2018-09-09', 'September 2018', '1808140001', '2018-08-14', 'LUNAS', 1, 200000, 1),
(122, '0908180004', '2018-10-09', 'Oktober 2018', '1808140002', '2018-08-14', 'LUNAS', 1, 200000, 1),
(123, '0908180004', '2018-11-09', 'November 2018', '1808140003', '2018-08-14', 'LUNAS', 1, 200000, 1),
(124, '0908180004', '2018-12-09', 'Desember 2018', '1808140004', '2018-08-14', 'LUNAS', 1, 200000, 1),
(125, '0908180004', '2019-01-09', 'Januari 2019', '1808140005', '2018-08-14', 'LUNAS', 1, 200000, 1),
(126, '0908180004', '2019-02-09', 'Februari 2019', '1808140006', '2018-08-14', 'LUNAS', 1, 200000, 1),
(127, '0908180004', '2019-03-09', 'Maret 2019', '1808140007', '2018-08-14', 'LUNAS', 1, 200000, 1),
(128, '0908180004', '2019-04-09', 'April 2019', '1808140008', '2018-08-14', 'LUNAS', 1, 200000, 1),
(129, '0908180004', '2019-05-09', 'Mei 2019', '1808140009', '2018-08-14', 'LUNAS', 1, 200000, 1),
(130, '0908180004', '2019-06-09', 'Juni 2019', '1808140010', '2018-08-14', 'LUNAS', 1, 200000, 1),
(131, '0908180004', '2019-07-09', 'Juli 2019', '1808140011', '2018-08-14', 'LUNAS', 1, 200000, 1),
(132, '0908180004', '2019-08-09', 'Agustus 2019', '1808140012', '2018-08-14', 'LUNAS', 1, 200000, 1),
(133, '0908180005', '2018-09-09', 'September 2018', '1808130005', '2018-08-13', 'LUNAS', 3, 250000, 1),
(134, '0908180005', '2018-10-09', 'Oktober 2018', '', '0000-00-00', '', 0, 250000, 0),
(135, '0908180005', '2018-11-09', 'November 2018', '', '0000-00-00', '', 0, 250000, 0),
(136, '0908180005', '2018-12-09', 'Desember 2018', '', '0000-00-00', '', 0, 250000, 0),
(137, '0908180005', '2019-01-09', 'Januari 2019', '', '0000-00-00', '', 0, 250000, 0),
(138, '0908180005', '2019-02-09', 'Februari 2019', '', '0000-00-00', '', 0, 250000, 0),
(139, '0908180005', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 250000, 0),
(140, '0908180005', '2019-04-09', 'April 2019', '', '0000-00-00', '', 0, 250000, 0),
(141, '0908180005', '2019-05-09', 'Mei 2019', '', '0000-00-00', '', 0, 250000, 0),
(142, '0908180005', '2019-06-09', 'Juni 2019', '', '0000-00-00', '', 0, 250000, 0),
(143, '0908180005', '2019-07-09', 'Juli 2019', '', '0000-00-00', '', 0, 250000, 0),
(144, '0908180005', '2019-08-09', 'Agustus 2019', '', '0000-00-00', '', 0, 250000, 0),
(145, '0908180006', '2018-09-09', 'September 2018', '', '0000-00-00', '', 0, 250000, 0),
(146, '0908180006', '2018-10-09', 'Oktober 2018', '', '0000-00-00', '', 0, 250000, 0),
(147, '0908180006', '2018-11-09', 'November 2018', '', '0000-00-00', '', 0, 250000, 0),
(148, '0908180006', '2018-12-09', 'Desember 2018', '', '0000-00-00', '', 0, 250000, 0),
(149, '0908180006', '2019-01-09', 'Januari 2019', '', '0000-00-00', '', 0, 250000, 0),
(150, '0908180006', '2019-02-09', 'Februari 2019', '', '0000-00-00', '', 0, 250000, 0),
(151, '0908180006', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 250000, 0),
(152, '0908180006', '2019-04-09', 'April 2019', '', '0000-00-00', '', 0, 250000, 0),
(153, '0908180006', '2019-05-09', 'Mei 2019', '', '0000-00-00', '', 0, 250000, 0),
(154, '0908180006', '2019-06-09', 'Juni 2019', '', '0000-00-00', '', 0, 250000, 0),
(155, '0908180006', '2019-07-09', 'Juli 2019', '', '0000-00-00', '', 0, 250000, 0),
(156, '0908180006', '2019-08-09', 'Agustus 2019', '', '0000-00-00', '', 0, 250000, 0),
(157, '0908180007', '2018-09-09', 'September 2018', '', '2018-08-14', '', 1, 170000, 0),
(158, '0908180007', '2018-10-09', 'Oktober 2018', '', '2018-08-14', '', 1, 170000, 0),
(159, '0908180007', '2018-11-09', 'November 2018', '', '0000-00-00', '', 0, 170000, 0),
(160, '0908180007', '2018-12-09', 'Desember 2018', '', '0000-00-00', '', 0, 170000, 0),
(161, '0908180007', '2019-01-09', 'Januari 2019', '', '0000-00-00', '', 0, 170000, 0),
(162, '0908180007', '2019-02-09', 'Februari 2019', '', '0000-00-00', '', 0, 170000, 0),
(163, '0908180007', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 170000, 0),
(164, '0908180007', '2019-04-09', 'April 2019', '', '0000-00-00', '', 0, 170000, 0),
(165, '0908180007', '2019-05-09', 'Mei 2019', '', '0000-00-00', '', 0, 170000, 0),
(166, '0908180007', '2019-06-09', 'Juni 2019', '', '0000-00-00', '', 0, 170000, 0),
(167, '0908180007', '2019-07-09', 'Juli 2019', '', '0000-00-00', '', 0, 170000, 0),
(168, '0908180007', '2019-08-09', 'Agustus 2019', '', '0000-00-00', '', 0, 170000, 0),
(169, '0908180008', '2018-09-09', 'September 2018', '', '0000-00-00', '', 0, 170000, 0),
(170, '0908180008', '2018-10-09', 'Oktober 2018', '', '0000-00-00', '', 0, 170000, 0),
(171, '0908180008', '2018-11-09', 'November 2018', '', '0000-00-00', '', 0, 170000, 0),
(172, '0908180008', '2018-12-09', 'Desember 2018', '', '0000-00-00', '', 0, 170000, 0),
(173, '0908180008', '2019-01-09', 'Januari 2019', '', '0000-00-00', '', 0, 170000, 0),
(174, '0908180008', '2019-02-09', 'Februari 2019', '', '0000-00-00', '', 0, 170000, 0),
(175, '0908180008', '2019-03-09', 'Maret 2019', '', '0000-00-00', '', 0, 170000, 0),
(176, '0908180008', '2019-04-09', 'April 2019', '', '0000-00-00', '', 0, 170000, 0),
(177, '0908180008', '2019-05-09', 'Mei 2019', '', '0000-00-00', '', 0, 170000, 0),
(178, '0908180008', '2019-06-09', 'Juni 2019', '', '0000-00-00', '', 0, 170000, 0),
(179, '0908180008', '2019-07-09', 'Juli 2019', '', '0000-00-00', '', 0, 170000, 0),
(180, '0908180008', '2019-08-09', 'Agustus 2019', '', '0000-00-00', '', 0, 170000, 0),
(241, '1308180001', '2018-09-13', 'September 2018', '', '0000-00-00', '', 0, 170000, 0),
(242, '1308180001', '2018-10-13', 'Oktober 2018', '', '0000-00-00', '', 0, 170000, 0),
(243, '1308180001', '2018-11-13', 'November 2018', '', '0000-00-00', '', 0, 170000, 0),
(244, '1308180001', '2018-12-13', 'Desember 2018', '', '0000-00-00', '', 0, 170000, 0),
(245, '1308180001', '2019-01-13', 'Januari 2019', '', '0000-00-00', '', 0, 170000, 0),
(246, '1308180001', '2019-02-13', 'Februari 2019', '', '0000-00-00', '', 0, 170000, 0),
(247, '1308180001', '2019-03-13', 'Maret 2019', '', '0000-00-00', '', 0, 170000, 0),
(248, '1308180001', '2019-04-13', 'April 2019', '', '0000-00-00', '', 0, 170000, 0),
(249, '1308180001', '2019-05-13', 'Mei 2019', '', '0000-00-00', '', 0, 170000, 0),
(250, '1308180001', '2019-06-13', 'Juni 2019', '', '0000-00-00', '', 0, 170000, 0),
(251, '1308180001', '2019-07-13', 'Juli 2019', '', '0000-00-00', '', 0, 170000, 0),
(252, '1308180001', '2019-08-13', 'Agustus 2019', '', '0000-00-00', '', 0, 170000, 0),
(253, '1308180002', '2018-09-13', 'September 2018', '', '0000-00-00', '', 0, 170000, 0),
(254, '1308180002', '2018-10-13', 'Oktober 2018', '', '0000-00-00', '', 0, 170000, 0),
(255, '1308180002', '2018-11-13', 'November 2018', '', '0000-00-00', '', 0, 170000, 0),
(256, '1308180002', '2018-12-13', 'Desember 2018', '', '0000-00-00', '', 0, 170000, 0),
(257, '1308180002', '2019-01-13', 'Januari 2019', '', '0000-00-00', '', 0, 170000, 0),
(258, '1308180002', '2019-02-13', 'Februari 2019', '', '0000-00-00', '', 0, 170000, 0),
(259, '1308180002', '2019-03-13', 'Maret 2019', '', '0000-00-00', '', 0, 170000, 0),
(260, '1308180002', '2019-04-13', 'April 2019', '', '0000-00-00', '', 0, 170000, 0),
(261, '1308180002', '2019-05-13', 'Mei 2019', '', '0000-00-00', '', 0, 170000, 0),
(262, '1308180002', '2019-06-13', 'Juni 2019', '', '0000-00-00', '', 0, 170000, 0),
(263, '1308180002', '2019-07-13', 'Juli 2019', '', '0000-00-00', '', 0, 170000, 0),
(264, '1308180002', '2019-08-13', 'Agustus 2019', '', '0000-00-00', '', 0, 170000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ustadz`
--

CREATE TABLE `ustadz` (
  `idustadz` int(5) NOT NULL,
  `namaustadz` varchar(50) DEFAULT NULL,
  `bidang` varchar(20) DEFAULT NULL,
  `jk` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ustadz`
--

INSERT INTO `ustadz` (`idustadz`, `namaustadz`, `bidang`, `jk`) VALUES
(1, 'fahri', 'fiqih', 'L'),
(2, 'fajar', 'tauhid', 'L'),
(3, 'firman', 'kalam', 'L'),
(4, 'nurul', 'qiro\'', 'P'),
(5, 'yanti', 'furu\'', 'P'),
(10, 'anto', 'tajwid', 'L');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`kamar`);

--
-- Indexes for table `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`idsmt`),
  ADD KEY `fok_nis` (`nis`);

--
-- Indexes for table `syahriyah`
--
ALTER TABLE `syahriyah`
  ADD PRIMARY KEY (`idsyahriyah`),
  ADD KEY `fk_nis` (`nis`);

--
-- Indexes for table `ustadz`
--
ALTER TABLE `ustadz`
  ADD PRIMARY KEY (`idustadz`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `idsmt` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `syahriyah`
--
ALTER TABLE `syahriyah`
  MODIFY `idsyahriyah` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;
--
-- AUTO_INCREMENT for table `ustadz`
--
ALTER TABLE `ustadz`
  MODIFY `idustadz` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `fok_nis` FOREIGN KEY (`nis`) REFERENCES `santri` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `syahriyah`
--
ALTER TABLE `syahriyah`
  ADD CONSTRAINT `fk_nis` FOREIGN KEY (`nis`) REFERENCES `santri` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
