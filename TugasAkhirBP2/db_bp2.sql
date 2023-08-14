-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2023 pada 08.21
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bp2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `kd_barang` varchar(15) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`kd_barang`, `nama_barang`, `harga_jual`, `stok`) VALUES
('001', 'SEPATU', 350000, 47),
('002', 'SABUN MANDI', 15000, 71),
('003', 'SABUN MANDI LENOVO', 1500, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `nonota` varchar(15) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_detail_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`nonota`, `kd_barang`, `harga_jual`, `jumlah`, `id_detail_jual`) VALUES
('2023-01-07-0001', '001', 350000, 1, 3),
('2023-01-07-0001', '001', 350000, 2, 4),
('2023-01-07-0002', '001', 350000, 1, 5),
('2023-01-07-0002', '001', 350000, 2, 6),
('2023-01-07-0003', '001', 350000, 1, 7),
('2023-01-08-0004', '001', 350000, 2, 8),
('2023-01-08-0005', '001', 350000, 25, 9),
('2023-01-08-0006', '001', 350000, 1, 10),
('2023-01-08-0007', '001', 350000, 1, 11),
('2023-01-08-0007', '002', 15000, 1, 12),
('2023-01-08-0007', '003', 1500, 1, 13),
('2023-01-08-0008', '001', 350000, 1, 14),
('2023-01-08-0008', '002', 15000, 2, 15),
('2023-01-08-0009', '001', 350000, 1, 16),
('2023-01-08-0010', '003', 1500, 5, 17),
('2023-01-08-0011', '001', 350000, 1, 19),
('2023-01-08-0012', '003', 1500, 5, 20),
('2023-01-08-0012', '002', 15000, 1, 21),
('2023-01-08-0013', '001', 350000, 1, 22),
('2023-01-08-0013', '002', 15000, 1, 23),
('2023-01-08-0013', '003', 1500, 5, 24),
('2023-01-08-0014', '001', 350000, 1, 25),
('2023-01-08-0014', '001', 350000, 1, 26),
('2023-01-08-0014', '001', 350000, 1, 27),
('2023-01-08-0015', '002', 15000, 1, 28),
('2023-01-08-0016', '003', 1500, 1, 29),
('2023-01-08-0016', '001', 350000, 1, 30),
('2023-01-08-0016', '001', 350000, 1, 31),
('2023-01-08-0016', '001', 350000, 1, 32),
('2023-01-08-0016', '001', 350000, 1, 33),
('2023-01-08-0016', '001', 350000, 1, 34),
('2023-01-08-0016', '001', 350000, 1, 35),
('2023-01-08-0016', '003', 1500, 1, 36),
('2023-01-08-0016', '003', 1500, 1, 37),
('2023-01-08-0016', '003', 1500, 1, 38),
('2023-01-08-0016', '003', 1500, 1, 39),
('2023-01-08-0016', '003', 1500, 1, 40),
('2023-01-10-0001', '001', 350000, 1, 41),
('2023-01-10-0002', '001', 350000, 1, 42),
('2023-01-10-0003', '001', 350000, 1, 43),
('2023-01-10-0004', '001', 350000, 1, 44),
('2023-01-10-0005', '001', 350000, 1, 45),
('2023-01-10-0006', '002', 15000, 1, 46),
('2023-01-10-0007', '001', 350000, 1, 47),
('2023-01-10-0007', '002', 15000, 1, 48),
('2023-01-10-0008', '003', 1500, 1, 49),
('2023-01-10-0009', '002', 15000, 1, 50),
('2023-01-10-0010', '001', 350000, 1, 51);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_level`
--

CREATE TABLE `tbl_level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_level`
--

INSERT INTO `tbl_level` (`id_level`, `level`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `nota` varchar(15) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `total_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`nota`, `id_user`, `tgl_penjualan`, `total_jual`) VALUES
('2023-01-07-0001', '0000000001', '2023-01-07', 1050000),
('2023-01-07-0002', '0000000001', '2023-01-07', 1050000),
('2023-01-07-0003', '0000000001', '2023-01-08', 350000),
('2023-01-08-0004', '0000000001', '2023-01-08', 700000),
('2023-01-08-0005', '0000000001', '2023-01-08', 8750000),
('2023-01-08-0006', '0000000001', '2023-01-08', 350000),
('2023-01-08-0007', '0000000001', '2023-01-08', 366500),
('2023-01-08-0008', '0000000001', '2023-01-08', 380000),
('2023-01-08-0009', '0000000001', '2023-01-08', 350000),
('2023-01-08-0010', '0000000001', '2023-01-08', 7500),
('2023-01-08-0011', '0000000001', '2023-01-08', 350000),
('2023-01-08-0012', '0000000001', '2023-01-08', 22500),
('2023-01-08-0013', '0000000001', '2023-01-08', 372500),
('2023-01-08-0014', '0000000001', '2023-01-08', 350000),
('2023-01-08-0015', '0000000001', '2023-01-08', 15000),
('2023-01-08-0016', '0000000001', '2023-01-08', 2109000),
('2023-01-10-0001', '0000000001', '2023-01-10', 350000),
('2023-01-10-0002', '0000000001', '2023-01-10', 350000),
('2023-01-10-0003', '0000000001', '2023-01-10', 350000),
('2023-01-10-0004', '0000000001', '2023-01-10', 350000),
('2023-01-10-0005', '0000000001', '2023-01-10', 350000),
('2023-01-10-0006', '0000000001', '2023-01-10', 15000),
('2023-01-10-0007', '0000000001', '2023-01-10', 365000),
('2023-01-10-0008', '0000000001', '2023-01-10', 1500),
('2023-01-10-0009', '0000000001', '2023-01-10', 15000),
('2023-01-10-0010', '0000000001', '2023-01-10', 350000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` varchar(10) NOT NULL,
  `id_level` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `jk` char(1) NOT NULL,
  `nope` varchar(13) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `id_level`, `nama_user`, `jk`, `nope`, `username`, `password`) VALUES
('0000000001', 1, 'Admin', '1', '08091000800', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`id_detail_jual`),
  ADD KEY `nonota` (`nonota`,`kd_barang`),
  ADD KEY `kd_barang` (`kd_barang`);

--
-- Indeks untuk tabel `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`nota`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `id_detail_jual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`kd_barang`) REFERENCES `tbl_barang` (`kd_barang`),
  ADD CONSTRAINT `tbl_detail_jual_ibfk_2` FOREIGN KEY (`nonota`) REFERENCES `tbl_penjualan` (`nota`);

--
-- Ketidakleluasaan untuk tabel `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD CONSTRAINT `tbl_penjualan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tbl_level` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
