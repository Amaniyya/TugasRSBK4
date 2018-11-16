-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 05:17 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasrsbk4`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `daftar`
-- (See below for the actual view)
--
CREATE TABLE `daftar` (
`NIM` bigint(15)
,`Nama` varchar(50)
,`nama_dosen` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(20) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `tlp_dosen` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `tlp_dosen`) VALUES
(101, 'Rizal', '087626316'),
(102, 'Agung', '8977654'),
(105, 'Yudi', '62835671');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` bigint(15) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Penjurusan` varchar(50) NOT NULL,
  `id_dosen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Penjurusan`, `id_dosen`) VALUES
(21120115120030, 'Pradipta Sekar Ayu Putri W.', 'Multimedia', 102),
(21120115130052, 'Mukhlish Abdul A.', 'Jaringan Komputer', 101),
(21120115140063, 'Muhammad Adinugroho', 'Software', 102),
(21120115140089, 'Lucky Jalu Harapan', 'Embedded System', 105);

-- --------------------------------------------------------

--
-- Structure for view `daftar`
--
DROP TABLE IF EXISTS `daftar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `daftar`  AS  select `m`.`NIM` AS `NIM`,`m`.`Nama` AS `Nama`,`d`.`nama_dosen` AS `nama_dosen` from (`mahasiswa` `m` left join `dosen` `d` on((`m`.`id_dosen` = `d`.`id_dosen`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
