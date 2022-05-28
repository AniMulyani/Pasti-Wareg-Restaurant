-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 12:09 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_cafe`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `catatan`
-- (See below for the actual view)
--
CREATE TABLE `catatan` (
`id_master` int(15)
,`nama_pegawai` varchar(50)
,`nama_menu` varchar(50)
,`tgl_pesan` date
,`qty` int(5)
,`total` int(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `detailpesan`
--

CREATE TABLE `detailpesan` (
  `id_detail` int(15) NOT NULL,
  `id_menu` int(15) NOT NULL,
  `qty` int(5) NOT NULL,
  `status` varchar(255) NOT NULL,
  `total` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailpesan`
--

INSERT INTO `detailpesan` (`id_detail`, `id_menu`, `qty`, `status`, `total`) VALUES
(1, 4, 1, 'Lunas', 25000),
(2, 4, 1, 'Lunas', 25000),
(3, 2, 1, 'Lunas', 8000),
(4, 4, 1, 'Lunas', 25000),
(5, 4, 2, 'Lunas', 50000),
(87, 1, 1, 'Lunas', 16000),
(88, 3, 1, 'Lunas', 10000),
(89, 8, 1, 'Lunas', 50000),
(90, 9, 1, 'Lunas', 25000),
(91, 1, 1, 'Lunas', 16000),
(92, 1, 1, 'Lunas', 16000),
(93, 3, 1, 'Lunas', 10000),
(94, 1, 1, 'Lunas', 16000),
(95, 3, 1, 'Lunas', 10000),
(96, 4, 1, 'Lunas', 25000),
(97, 9, 1, 'Lunas', 25000),
(98, 10, 1, 'Lunas', 15000),
(99, 5, 1, 'Lunas', 12000),
(100, 5, 1, 'Lunas', 12000),
(101, 11, 1, 'Lunas', 7000),
(102, 7, 1, 'Lunas', 15000),
(103, 2, 1, 'Lunas', 8000),
(104, 3, 1, 'Lunas', 10000),
(105, 5, 1, 'Lunas', 12000),
(106, 8, 1, 'Lunas', 50000),
(107, 6, 1, 'Lunas', 25000),
(108, 2, 2, 'Lunas', 16000),
(109, 11, 1, 'Lunas', 7000),
(110, 10, 1, 'Lunas', 15000),
(111, 1, 1, 'Lunas', 16000),
(112, 4, 1, 'Lunas', 25000),
(113, 5, 1, 'Lunas', 12000),
(114, 1, 1, 'Lunas', 16000),
(115, 3, 1, 'Lunas', 10000),
(116, 1, 1, 'Lunas', 16000),
(117, 2, 1, 'Lunas', 8000),
(118, 4, 1, 'Lunas', 25000),
(119, 5, 1, 'Lunas', 12000),
(120, 6, 1, 'Belum Lunas', 25000),
(121, 10, 1, 'Belum Lunas', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE `log_admin` (
  `status` varchar(50) NOT NULL,
  `waktu` date NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_admin`
--

INSERT INTO `log_admin` (`status`, `waktu`, `nama_pegawai`, `email`) VALUES
('ubah data', '2022-02-25', 'Ani Mulyani', 'ani'),
('ubah data', '2022-03-20', 'Ani Mulyani', 'admin'),
('ubah data', '2022-03-20', 'Ina', 'manager'),
('ubah data', '2022-03-20', 'nia', 'kasir'),
('ubah data', '2022-03-20', 'ian', 'admin'),
('ubah data', '2022-03-20', 'Ian', 'admin'),
('ubah data', '2022-03-20', 'Ikin', 'admin'),
('ubah data', '2022-03-28', 'Salsa', 'admin'),
('tambah data', '2019-03-29', 'Ani', 'admin'),
('hapus data', '2022-03-29', 'Ani', 'admin'),
('tambah data', '2022-03-30', 'ian', 'manager'),
('ubah data', '2022-03-30', 'ian', 'manager'),
('ubah data', '2022-03-30', 'ian', 'manager'),
('hapus data', '2022-03-30', 'ian', 'manager'),
('tambah data', '2022-03-31', 'Ian', 'manager'),
('tambah data', '2022-05-19', 'Anisa', 'anisa@gmail.com'),
('ubah data', '2022-05-20', 'Anisa', 'anisa@gmail.com'),
('ubah data', '2022-05-20', 'Anisa', 'anisa@gmail.com'),
('hapus data', '2022-05-20', 'Anisa', 'anisa@gmail.com'),
('tambah data', '2022-05-20', 'Abi', 'Abi'),
('ubah data', '2022-05-20', 'Abi', 'Abi'),
('ubah data', '2022-05-20', 'Abi', 'Abi'),
('hapus data', '2022-05-20', 'Abi', 'Abi'),
('ubah data', '2022-05-23', 'Ina', 'manager'),
('ubah data', '2022-05-23', 'Ina', 'manager'),
('hapus data', '2022-05-23', 'Ian', 'manager'),
('ubah data', '2022-05-23', 'nia', 'kasir'),
('ubah data', '2022-05-23', 'Nia', 'kasir'),
('ubah data', '2022-05-23', 'Nia', 'kasir'),
('tambah data', '2022-05-24', 'Ian', 'admin'),
('ubah data', '2022-05-24', 'Ian', 'admin'),
('hapus data', '2022-05-24', 'Ian', 'admin'),
('tambah data', '2022-05-27', 'Ian', 'Ian@gmail.com'),
('ubah data', '2022-05-27', 'Ian', 'Ian@gmail.com'),
('hapus data', '2022-05-27', 'Ian', 'Ian@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `log_master`
--

CREATE TABLE `log_master` (
  `status` varchar(50) NOT NULL,
  `waktu` date NOT NULL,
  `id_master` int(15) NOT NULL,
  `id_detail` int(15) NOT NULL,
  `id_pegawai` int(15) NOT NULL,
  `tgl_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_master`
--

INSERT INTO `log_master` (`status`, `waktu`, `id_master`, `id_detail`, `id_pegawai`, `tgl_pesan`) VALUES
('Sudah Bayar', '2022-03-30', 70, 2, 3, '2022-03-30'),
('Sudah Bayar', '2022-03-30', 20, 20, 3, '2022-03-30'),
('Sudah Bayar', '2022-03-31', 17, 17, 3, '2022-03-31'),
('Sudah Bayar', '2022-03-31', 18, 10, 3, '2022-03-01'),
('Sudah Bayar', '2022-03-31', 22, 3, 3, '2022-03-31'),
('Sudah Bayar', '2022-03-31', 23, 3, 3, '2022-03-31'),
('Sudah Bayar', '2022-05-20', 41, 41, 3, '2022-05-20'),
('Sudah Bayar', '2019-05-21', 71, 4, 3, '2019-05-21'),
('Sudah Bayar', '2019-05-21', 72, 80, 3, '2019-05-21'),
('Sudah Bayar', '2022-05-21', 73, 2, 3, '2022-05-21'),
('Sudah Bayar', '2022-05-21', 74, 2, 3, '2022-05-21'),
('Sudah Bayar', '2022-05-21', 75, 10, 3, '2022-05-21'),
('Sudah Bayar', '2022-05-21', 76, 5, 3, '2022-05-21'),
('Sudah Bayar', '2022-05-21', 77, 84, 3, '2022-05-21'),
('Sudah Bayar', '2022-05-21', 78, 11, 3, '2022-05-21'),
('Sudah Bayar', '2022-05-21', 79, 4, 3, '2022-05-21'),
('Sudah Bayar', '2022-05-22', 80, 87, 3, '2022-05-22'),
('Sudah Bayar', '2022-05-22', 81, 87, 3, '2022-05-22'),
('Sudah Bayar', '2022-05-22', 82, 87, 3, '2022-05-22'),
('Sudah Bayar', '2022-05-22', 72, 90, 3, '2022-05-22'),
('Sudah Bayar', '2022-05-22', 73, 97, 3, '2022-05-22'),
('Sudah Bayar', '2022-05-23', 74, 101, 3, '2022-05-23'),
('Sudah Bayar', '2022-05-23', 75, 101, 3, '2022-05-23'),
('Sudah Bayar', '2022-05-23', 76, 109, 3, '2022-05-23'),
('Sudah Bayar', '2022-05-24', 77, 110, 3, '2022-05-24'),
('Sudah Bayar', '2022-05-24', 78, 113, 3, '2022-05-24'),
('Sudah Bayar', '2022-05-24', 79, 113, 3, '2022-05-24'),
('Sudah Bayar', '2022-05-27', 80, 115, 3, '2022-05-27'),
('Sudah Bayar', '2022-05-27', 81, 115, 3, '2022-05-27'),
('Sudah Bayar', '2022-05-27', 82, 115, 3, '2022-05-27'),
('Sudah Bayar', '2022-05-27', 83, 119, 3, '2022-05-27'),
('Sudah Bayar', '2022-05-27', 84, 119, 3, '2022-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `log_menu`
--

CREATE TABLE `log_menu` (
  `status` varchar(50) NOT NULL,
  `waktu` date NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_menu`
--

INSERT INTO `log_menu` (`status`, `waktu`, `nama_menu`, `harga`, `photo`) VALUES
('tambah data', '2022-03-28', 'Say Story', 12000, 'C:\\Users\\Asus\\Pictures\\say story.png'),
('ubah data', '2022-03-28', 'Ramen', 25000, 'C:\\Users\\Asus\\Pictures\\ramen.png'),
('ubah data', '2022-03-28', 'Croffle', 8000, 'C:\\Users\\Asus\\Pictures\\croffle.png'),
('tambah data', '2022-03-28', 'Churros', 10000, 'C:\\Users\\Asus\\Pictures\\churros.png'),
('tambah data', '2022-03-28', 'Lime Mojito', 16000, 'C:\\Users\\Asus\\Pictures\\mojito.png'),
('tambah data', '2022-03-28', 'Ice Cream Roll', 25000, 'C:\\Users\\Asus\\Pictures\\ES krim roll.png'),
('tambah data', '2019-03-28', 'Burger', 15000, 'C:\\Users\\Asus\\Pictures\\burger.png'),
('tambah data', '2019-03-28', 'Pizza', 50000, 'C:\\Users\\Asus\\Pictures\\pizza.png'),
('tambah data', '2019-03-28', 'Brown Sugar Boba', 25000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('tambah data', '2019-03-29', 'Kentang Goreng', 15000, 'C:\\Users\\Asus\\Pictures\\kentang goreng.png'),
('tambah data', '2019-03-29', 'Es Jeruk Peras', 7000, 'C:\\Users\\Asus\\Pictures\\es jeruk.png'),
('tambah data', '2022-03-29', 'Rice Bowl', 16000, 'C:\\Users\\Asus\\Pictures\\ricebowl.png'),
('ubah data', '2022-03-29', 'Rice Bowl', 20000, 'C:\\Users\\Asus\\Pictures\\ricebowl.png'),
('hapus data', '2022-03-29', 'Rice Bowl', 20000, 'C:\\Users\\Asus\\Pictures\\ricebowl.png'),
('tambah data', '2022-03-30', 'Omurice', 25000, 'C:\\Users\\Asus\\Pictures\\omurice.png'),
('ubah data', '2022-03-30', 'Omurice', 25000, 'C:\\Users\\Asus\\Pictures\\omurice.png'),
('ubah data', '2022-03-30', 'Omurice', 2500, 'C:\\Users\\Asus\\Pictures\\omurice.png'),
('hapus data', '2022-03-30', 'Omurice', 2500, 'C:\\Users\\Asus\\Pictures\\omurice.png'),
('tambah data', '2022-05-20', 'Milk Shake', 12000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('ubah data', '2022-05-20', 'Milk Shake', 10000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('hapus data', '2022-05-20', 'Milk Shake', 10000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('tambah data', '2022-05-20', 'milk', 12000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('ubah data', '2022-05-20', 'milk', 12000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('ubah data', '2022-05-20', 'milk', 10000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('hapus data', '2022-05-20', 'milk', 10000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('tambah data', '2019-05-21', 'milkshake', 8000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('ubah data', '2019-05-21', 'milkshake', 8000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('hapus data', '2019-05-21', 'milkshake', 8000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
('tambah data', '2019-05-21', 'Spagetti Bolognese', 25000, 'C:\\Users\\Asus\\Pictures\\spagetti bolognese.png'),
('ubah data', '2019-05-21', 'Spagetti Bolognese', 30000, 'C:\\Users\\Asus\\Pictures\\spagetti bolognese.png'),
('tambah data', '2022-05-23', 'Baby Crab', 10000, 'C:\\Users\\Asus\\Pictures\\es jeruk.png'),
('ubah data', '2022-05-23', 'Baby Crab', 15000, 'C:\\Users\\Asus\\Pictures\\es jeruk.png'),
('hapus data', '2022-05-23', 'Baby Crab', 15000, 'C:\\Users\\Asus\\Pictures\\es jeruk.png');

-- --------------------------------------------------------

--
-- Table structure for table `masterpesan`
--

CREATE TABLE `masterpesan` (
  `id_master` int(15) NOT NULL,
  `id_detail` int(15) NOT NULL,
  `id_pegawai` int(15) NOT NULL,
  `tgl_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masterpesan`
--

INSERT INTO `masterpesan` (`id_master`, `id_detail`, `id_pegawai`, `tgl_pesan`) VALUES
(22, 3, 3, '2022-03-31'),
(23, 3, 3, '2022-03-31'),
(70, 2, 3, '2022-03-30'),
(71, 4, 3, '2019-05-21'),
(72, 90, 3, '2022-05-22'),
(73, 97, 3, '2022-05-22'),
(74, 101, 3, '2022-05-23'),
(75, 101, 3, '2022-05-23'),
(76, 109, 3, '2022-05-23'),
(77, 110, 3, '2022-05-24'),
(78, 113, 3, '2022-05-24'),
(79, 113, 3, '2022-05-24'),
(80, 115, 3, '2022-05-27'),
(81, 115, 3, '2022-05-27'),
(82, 115, 3, '2022-05-27'),
(83, 119, 3, '2022-05-27'),
(84, 119, 3, '2022-05-27');

--
-- Triggers `masterpesan`
--
DELIMITER $$
CREATE TRIGGER `tambahbayar` AFTER INSERT ON `masterpesan` FOR EACH ROW INSERT INTO log_master(status, waktu, id_master, id_detail, id_pegawai, tgl_pesan) VALUES ('Sudah Bayar', now(), new.id_master, new.id_detail, new.id_pegawai, new.tgl_pesan)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updatebayar` AFTER INSERT ON `masterpesan` FOR EACH ROW update detailpesan set status='Lunas'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(15) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(15) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `harga`, `photo`) VALUES
(1, 'Lime Mojito', 16000, 'C:\\Users\\Asus\\Pictures\\mojito.png'),
(2, 'Croffle', 8000, 'C:\\Users\\Asus\\Pictures\\croffle.png'),
(3, 'Churros', 10000, 'C:\\Users\\Asus\\Pictures\\churros.png'),
(4, 'Ramen', 25000, 'C:\\Users\\Asus\\Pictures\\ramen.png'),
(5, 'Say Story', 12000, 'C:\\Users\\Asus\\Pictures\\say story.png'),
(6, 'Ice Cream Roll', 25000, 'C:\\Users\\Asus\\Pictures\\ES krim roll.png'),
(7, 'Burger', 15000, 'C:\\Users\\Asus\\Pictures\\burger.png'),
(8, 'Pizza', 50000, 'C:\\Users\\Asus\\Pictures\\pizza.png'),
(9, 'Brown Sugar Boba', 25000, 'C:\\Users\\Asus\\Pictures\\boba.png'),
(10, 'Kentang Goreng', 15000, 'C:\\Users\\Asus\\Pictures\\kentang goreng.png'),
(11, 'Es Jeruk Peras', 7000, 'C:\\Users\\Asus\\Pictures\\es jeruk.png'),
(12, 'Spagetti Bolognese', 30000, 'C:\\Users\\Asus\\Pictures\\spagetti bolognese.png');

--
-- Triggers `menu`
--
DELIMITER $$
CREATE TRIGGER `hapus data` BEFORE DELETE ON `menu` FOR EACH ROW INSERT INTO log_menu(STATUS,waktu, nama_menu, harga, photo) VALUES ('hapus data', now(), old.nama_menu, old.harga, old.photo)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah data` AFTER INSERT ON `menu` FOR EACH ROW INSERT INTO log_menu(STATUS, waktu, nama_menu, harga, photo) VALUES ('tambah data', now(), new.nama_menu, new.harga, new.photo)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ubah data` AFTER UPDATE ON `menu` FOR EACH ROW INSERT INTO log_menu (status, waktu, nama_menu, harga, photo) VALUES ('ubah data', now(), new.nama_menu, new.harga, new.photo)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(15) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `handphone` varchar(15) NOT NULL,
  `level` enum('admin','kasir','manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `email`, `password`, `handphone`, `level`) VALUES
(1, 'Ani Mulyani', 'admin', '123', '083824497233', 'admin'),
(2, 'Ina', 'manager', '123', '083134555239', 'manager'),
(3, 'Nia', 'kasir', '123', '08993940414', 'kasir');

--
-- Triggers `pegawai`
--
DELIMITER $$
CREATE TRIGGER `hapus` BEFORE DELETE ON `pegawai` FOR EACH ROW INSERT INTO log_admin(STATUS,waktu, nama_pegawai, email) VALUES ('hapus data', now(), old.nama_pegawai, old.email)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah` AFTER INSERT ON `pegawai` FOR EACH ROW INSERT INTO log_admin(STATUS, waktu, nama_pegawai, email) VALUES ('tambah data', now(), new.nama_pegawai, new.email)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ubah` AFTER UPDATE ON `pegawai` FOR EACH ROW INSERT INTO log_admin (status, waktu, nama_pegawai, email) VALUES ('ubah data', now(), new.nama_pegawai, new.email)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `catatan`
--
DROP TABLE IF EXISTS `catatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catatan`  AS  select `masterpesan`.`id_master` AS `id_master`,`pegawai`.`nama_pegawai` AS `nama_pegawai`,`menu`.`nama_menu` AS `nama_menu`,`masterpesan`.`tgl_pesan` AS `tgl_pesan`,`detailpesan`.`qty` AS `qty`,`detailpesan`.`total` AS `total` from (((`pegawai` join `menu`) join `masterpesan`) join `detailpesan`) where `pegawai`.`id_pegawai` = `masterpesan`.`id_pegawai` and `detailpesan`.`id_detail` = `masterpesan`.`id_detail` and `menu`.`id_menu` = `detailpesan`.`id_detail` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpesan`
--
ALTER TABLE `detailpesan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `qty` (`qty`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `masterpesan`
--
ALTER TABLE `masterpesan`
  ADD PRIMARY KEY (`id_master`),
  ADD KEY `id_detail` (`id_detail`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `harga` (`harga`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masterpesan`
--
ALTER TABLE `masterpesan`
  MODIFY `id_master` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailpesan`
--
ALTER TABLE `detailpesan`
  ADD CONSTRAINT `detailpesan_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `masterpesan`
--
ALTER TABLE `masterpesan`
  ADD CONSTRAINT `masterpesan_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `masterpesan_ibfk_2` FOREIGN KEY (`id_detail`) REFERENCES `detailpesan` (`id_detail`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
