-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Sep 2020 pada 07.58
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbclow`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblartikel`
--

CREATE TABLE `tblartikel` (
  `idartikel` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `idcreator` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `judul` text NOT NULL,
  `ketjudul` text NOT NULL,
  `isi` text NOT NULL,
  `quotes` text NOT NULL,
  `kesimpulan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblartikel`
--

INSERT INTO `tblartikel` (`idartikel`, `idkategori`, `idcreator`, `tanggal`, `gambar`, `judul`, `ketjudul`, `isi`, `quotes`, `kesimpulan`) VALUES
(1, 2, 0, '2020-07-26', 'gambar.jpg', 'Cara Mematikan Handphone', 'Disini menjelaskan bagaimana cara mematikan handphone untuk pemula. Cocok untuk ibu-ibu yang baru belajar android. ', 'Lorem ipsum dolor sit amet consectetur adipicising elit set do eiusmod aliqua.', 'Jangan lupa beri tau mak anda tentang tutorial ini', 'Jadi, jika anda tidak bisa mematikan handphone. Anda bisa melihat tutorial ini.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbldeveloper`
--

CREATE TABLE `tbldeveloper` (
  `iddeveloper` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `facebook` text NOT NULL,
  `instagram` text NOT NULL,
  `blog` text NOT NULL,
  `quotes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbldeveloper`
--

INSERT INTO `tbldeveloper` (`iddeveloper`, `nama`, `gambar`, `facebook`, `instagram`, `blog`, `quotes`) VALUES
(1, 'Muhammad Syahrul Afandi', 'cak lul.webp', 'https://www.facebook.com/caklul.cipluk', 'https://www.instagram.com/syahrul.cipluk96/?hl=id', 'www.caklulcipluk.com', 'Hiduplah Sampai Mati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblkategori`
--

CREATE TABLE `tblkategori` (
  `idkategori` int(11) NOT NULL,
  `logo` varchar(225) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblkategori`
--

INSERT INTO `tblkategori` (`idkategori`, `logo`, `kategori`, `keterangan`) VALUES
(1, 'fas fa-musik', 'Musik', 'Ini keterangan musik'),
(2, 'fas fa-pc', 'Elektronik', 'Ini keterangan elektronik'),
(3, 'fas fa-user', 'Orang', 'Ini keterangan Orang'),
(5, 'fas fa-earth', 'Astronomi', 'Ini keterangan Astronomi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbluser`
--

CREATE TABLE `tbluser` (
  `iduser` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(225) NOT NULL,
  `level` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbluser`
--

INSERT INTO `tbluser` (`iduser`, `user`, `email`, `password`, `level`, `aktif`) VALUES
(1, 'Admin', 'admin@gmail.com', 'bapakudewa', 'Admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblartikel`
--
ALTER TABLE `tblartikel`
  ADD PRIMARY KEY (`idartikel`);

--
-- Indeks untuk tabel `tbldeveloper`
--
ALTER TABLE `tbldeveloper`
  ADD PRIMARY KEY (`iddeveloper`);

--
-- Indeks untuk tabel `tblkategori`
--
ALTER TABLE `tblkategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tblartikel`
--
ALTER TABLE `tblartikel`
  MODIFY `idartikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbldeveloper`
--
ALTER TABLE `tbldeveloper`
  MODIFY `iddeveloper` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblkategori`
--
ALTER TABLE `tblkategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
