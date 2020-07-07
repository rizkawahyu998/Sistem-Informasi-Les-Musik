-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2020 at 10:00 PM
-- Server version: 5.7.30-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `les_musik`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `Nama` text NOT NULL,
  `Usia` int(10) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `les musik` varchar(50) NOT NULL,
  `no hp` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`Nama`, `Usia`, `Alamat`, `les musik`, `no hp`, `username`, `password`) VALUES
('Alfred', 17, 'Jl. Kembang Kertas A3', 'Piano', '089765437654', 'alfred', '12345'),
('Dominggo', 20, 'Jl. Semanggi Barat', 'Gitar', '082339678901', 'dominggo', '12345'),
('Fajar', 19, 'Jl. Semanggi Timur', 'Gitar', '082234517654', 'fajar', '12345'),
('Firman', 20, 'Jl. Kembang Turi Segar', 'Biola', '089967315421', 'firman', '12345'),
('Julian', 19, 'Jl. Semanggi Selatan', 'Gitar', '089754326756', 'julian', '12345'),
('Marchi', 20, 'Jl. Semanggi Utara', 'Gitar', '08712318234', 'marchi', '12345'),
('Redo', 18, 'Jl. Kembang Kertas A4', 'Piano', '082256780987', 'redo', '12345'),
('Riska', 20, 'Jl. Kembang Kertas A5', 'Piano', '089765436787', 'riska', '12345'),
('Stepen', 21, 'Jl. Kembang Turi Layu', 'Biola', '082267349880', 'stepen', '12345'),
('Wahyu', 19, 'Jl. Kembang Kertas A6', 'Piano', '082235876542', 'wahyu', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `no` int(11) NOT NULL,
  `hari/tanggal` date NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `kelas` text NOT NULL,
  `alat_musik` varchar(50) NOT NULL,
  `nama_murid` text NOT NULL,
  `nama_pengajar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`no`, `hari/tanggal`, `waktu`, `kelas`, `alat_musik`, `nama_murid`, `nama_pengajar`) VALUES
(1, '2020-06-02', '09:00-11:00', 'A', 'Gitar', 'Dominggo', 'Suheni');

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `no` int(11) NOT NULL,
  `hari/tanggal` date NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `pengajar` varchar(35) NOT NULL,
  `alat_musik` varchar(25) NOT NULL,
  `Kelas` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`no`, `hari/tanggal`, `waktu`, `pengajar`, `alat_musik`, `Kelas`) VALUES
(5, '2020-06-04', '15:00-17:00', 'Ahmadi', 'Biola', 'B'),
(3, '2020-06-03', '15:00-17:00', 'Asep', 'Piano', 'B'),
(6, '2020-06-04', '09:00-11:00', 'Rudi', 'Biola', 'A'),
(2, '2020-06-03', '09:00-11:00', 'Sugeng', 'Gitar', 'A'),
(1, '2020-06-02', '09:00-11:00', 'Suheni', 'Gitar', 'A'),
(4, '2020-06-04', '09:00-11:00', 'Syueb', 'Piano', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`pengajar`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
