-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 04:13 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Muhammad Iqbal', 'ibangyourbae', 'qwer7235', 2),
(4, 'Agustio', 'agustio', 'qwer7235', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_barang` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_barang`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Netflix Sharing UHD', 'Netflix Premium Sharing 1 Bulan', 'Akun', 40000, 6, 'netflix_sharing.jpg'),
(2, 'Canva Pro ', 'Canva Pro 1 bulan', 'Akun', 10000, 99, 'canva.png'),
(3, 'Scribd Premium', 'Akun Scribd Premium 1 bulan', 'Akun', 10000, 100, 'scribd.jpg'),
(4, 'Netflix Private UHD', 'Netflix Private 1 Bulan', 'Akun', 150000, 5, 'netflix_private.jpg'),
(5, 'Avas Security', 'Avast Premium Security 2 Bulan', 'Akun', 15000, 100, 'avast_security.jpg'),
(6, 'Avast VPN', 'Avast Securiline VPN 2 Bulan', 'Akun', 15000, 99, 'avast_vpn.png'),
(7, 'Spotify Premium', 'Spotify Premium 1 Bulan', 'Akun', 20000, 10, 'spotify.png'),
(34, 'Sejarah Dunia', 'Sejarah Dunia yang Disembunyikan', 'Buku', 10000, 10, 'sejarah_dunia3.png'),
(35, 'Masa Lalu Uang', 'Masa Lalu Uang dan Masa Depan Dunia', 'Buku', 10000, 100, 'masa_lalu_uang.png'),
(36, 'Millenial Power', 'Rahasia Millenial Kaya dan Mandiri', 'Buku', 10000, 100, 'millenial_power.png'),
(37, 'Kebelet Kaya', 'Buku Kebelet Kaya by Mardigu', 'Buku', 10000, 100, 'kebelet_kaya.png'),
(38, 'Tajir Melintir', 'Tajir Melintir by Mardigu', 'Buku', 10000, 100, 'tajir_melintir.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Muhammad Iqbal', 'iqbalshedow25@gmail.com', '2020-12-06 09:54:31', '2020-12-07 09:54:31'),
(2, 'Muhammad Iqbal', 'iqbalshedow25@gmail.com', '2020-12-06 09:57:08', '2020-12-07 09:57:08'),
(3, 'Muhammad Iqbal', 'Jl Jend Suprapto No 21', '2020-12-06 09:59:18', '2020-12-07 09:59:18'),
(4, 'Muhammad Iqbal', 'Jl Jend Suprapto No 21', '2020-12-06 09:59:39', '2020-12-07 09:59:39'),
(5, 'Muhammad Iqbal', 'Jl Jend Suprapto No 21', '2020-12-06 19:52:51', '2020-12-07 19:52:51'),
(6, 'Daud', 'Bandung', '2020-12-06 21:13:41', '2020-12-07 21:13:41'),
(7, 'Daud', 'Bandung', '2020-12-06 21:13:55', '2020-12-07 21:13:55'),
(8, 'Muhammad Iqbal', 'Jl Jend Suprapto No 21', '2020-12-07 20:47:39', '2020-12-08 20:47:39'),
(9, 'Muhammad Iqbal', 'Jl Jend Suprapto No 21', '2020-12-07 20:48:19', '2020-12-08 20:48:19'),
(10, 'Muhammad Iqbal', 'Jl Jend Suprapto No 21', '2020-12-07 20:52:23', '2020-12-08 20:52:23'),
(11, '', '', '2020-12-07 20:54:35', '2020-12-08 20:54:35'),
(12, '', '', '2020-12-07 20:56:58', '2020-12-08 20:56:58'),
(13, 'Muhammad Iqbal', 'Jl Jend Suprapto No 21', '2020-12-09 09:44:46', '2020-12-10 09:44:46'),
(14, '', '', '2020-12-09 09:47:39', '2020-12-10 09:47:39'),
(15, '', '', '2020-12-09 09:48:03', '2020-12-10 09:48:03'),
(16, '', '', '2020-12-09 09:48:24', '2020-12-10 09:48:24'),
(17, '', '', '2020-12-09 09:48:38', '2020-12-10 09:48:38'),
(18, '', '', '2020-12-09 09:49:17', '2020-12-10 09:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 4, 2, 'Canva Pro ', 2, 10000, ''),
(2, 4, 3, 'Scribd Premium', 2, 10000, ''),
(3, 4, 1, 'Netflix Sharing UHD', 1, 40000, ''),
(4, 5, 1, 'Netflix Sharing UHD', 1, 40000, ''),
(8, 9, 1, 'Netflix Sharing UHD', 2, 40000, ''),
(9, 9, 2, 'Canva Pro ', 1, 10000, ''),
(12, 12, 1, 'Netflix Sharing UHD', 3, 40000, ''),
(13, 13, 1, 'Netflix Sharing UHD', 1, 40000, ''),
(14, 14, 2, 'Canva Pro ', 1, 10000, ''),
(15, 18, 6, 'Avast VPN', 1, 15000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` BEFORE INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
