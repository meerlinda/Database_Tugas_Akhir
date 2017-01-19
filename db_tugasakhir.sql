-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 19, 2017 at 09:42 AM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `KodeBarang` int(8) NOT NULL,
  `NamaBarang` varchar(25) NOT NULL,
  `JenisBarang` varchar(25) NOT NULL,
  `StokBarang` int(1) NOT NULL,
  `HargaSatuan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`KodeBarang`, `NamaBarang`, `JenisBarang`, `StokBarang`, `HargaSatuan`) VALUES
(1, 'Amoxilin', 'Antibiotik', 10, 3000),
(5, 'Ceteem', 'Obat Tidur', 25, 2000),
(6, 'Grafadon', 'Obat Sakit Gigi', 20, 2500),
(8, 'Mediklin Gel', 'Obat Jerawat', 15, 45000),
(10, 'Dulcolax', 'Obat BAB', 22, 8000),
(11, 'Diapet', 'Obat BAB', 16, 5500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `NomorTrx` int(11) NOT NULL,
  `Tanggal` varchar(10) NOT NULL,
  `KodeBarang` varchar(8) NOT NULL,
  `NamaBarang` varchar(25) NOT NULL,
  `JumlahBeli` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`NomorTrx`, `Tanggal`, `KodeBarang`, `NamaBarang`, `JumlahBeli`, `Harga`, `Total`) VALUES
(4, '08/12/2016', '6', 'Grafadon', 300, 2000, 540000),
(9, '12/12/2016', '5', 'Ceteem', 250, 1500, 337500),
(10, '15/12/2016', '1', 'Amoxilin', 200, 3000, 540000),
(11, '22/12/2016', '7', 'Mediklin Gel', 100, 45000, 4050000),
(12, '02/01/2017', '11', 'Diapet', 200, 5500, 990000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `IDPengguna` varchar(10) NOT NULL,
  `KataSandi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`IDPengguna`, `KataSandi`) VALUES
('admin', '123'),
('owner', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `NomorTrx` int(11) NOT NULL,
  `Tanggal` varchar(10) NOT NULL,
  `KodeBarang` varchar(8) NOT NULL,
  `NamaBarang` varchar(25) NOT NULL,
  `JumlahJual` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`NomorTrx`, `Tanggal`, `KodeBarang`, `NamaBarang`, `JumlahJual`, `Harga`, `Total`) VALUES
(2, '27/12/2016', '6', 'Grafadon', 6, 2500, 15000),
(3, '29/12/2016', '1', 'Amoxilin', 4, 3000, 12000),
(4, '30/12/2016', '5', 'Ceteem', 5, 2000, 10000),
(5, '02/01/2017', '1', 'Amoxilin', 5, 3000, 15000),
(7, '04/01/2017', '1', 'Amoxilin', 3, 3000, 9000),
(8, '07/01/2017', '6', 'Grafadon', 4, 2500, 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`KodeBarang`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`NomorTrx`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`IDPengguna`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`NomorTrx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `KodeBarang` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  MODIFY `NomorTrx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  MODIFY `NomorTrx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
