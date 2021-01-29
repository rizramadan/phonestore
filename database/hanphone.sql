-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2021 pada 02.53
-- Versi server: 10.4.8-MariaDB-log
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hanphone`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `jns_kelamin` varchar(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_tel` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`id`, `nama_depan`, `nama_belakang`, `jns_kelamin`, `username`, `email`, `password`, `no_tel`, `alamat`) VALUES
(1, 'Muhammad', 'Angga', 'Pria', 'anggaaaa', 'angga27@gmail.com', 'db455249ae085a1799f38defac6a4d80f4e5456c', '0871828282', 'Maja'),
(2, 'Rizky', 'Ramadan', 'Pria', 'rizramadan', 'rizki123304@gmail.co', '68f851f539154d10fcc5f3be266af9175681a665', '081223030073', 'Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_hanphone`
--

CREATE TABLE `detail_hanphone` (
  `id_detail` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `kamera` varchar(50) NOT NULL,
  `ram` varchar(15) NOT NULL,
  `stock` int(20) NOT NULL,
  `harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_hanphone`
--

CREATE TABLE `list_hanphone` (
  `id_list` int(11) NOT NULL,
  `merek` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_hanphone`
--

CREATE TABLE `review_hanphone` (
  `id_review` int(11) NOT NULL,
  `id_detail` int(11) NOT NULL,
  `rating` varchar(15) NOT NULL,
  `ulasan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_hanphone`
--
ALTER TABLE `detail_hanphone`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_list` (`id_list`);

--
-- Indeks untuk tabel `list_hanphone`
--
ALTER TABLE `list_hanphone`
  ADD PRIMARY KEY (`id_list`);

--
-- Indeks untuk tabel `review_hanphone`
--
ALTER TABLE `review_hanphone`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_detail` (`id_detail`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `detail_hanphone`
--
ALTER TABLE `detail_hanphone`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `list_hanphone`
--
ALTER TABLE `list_hanphone`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `review_hanphone`
--
ALTER TABLE `review_hanphone`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_hanphone`
--
ALTER TABLE `detail_hanphone`
  ADD CONSTRAINT `detail_hanphone_ibfk_1` FOREIGN KEY (`id_list`) REFERENCES `list_hanphone` (`id_list`);

--
-- Ketidakleluasaan untuk tabel `review_hanphone`
--
ALTER TABLE `review_hanphone`
  ADD CONSTRAINT `review_hanphone_ibfk_1` FOREIGN KEY (`id_detail`) REFERENCES `detail_hanphone` (`id_detail`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
