-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2018 pada 11.08
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baduy_bis`
--
CREATE DATABASE IF NOT EXISTS `baduy_bis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `baduy_bis`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(3) NOT NULL,
  `parent_id` int(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sequence` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `name`, `sequence`) VALUES
(1, 0, 'Lili', 1),
(2, 0, 'Magno', 2),
(3, 1, 'rumba rumba', 1),
(4, 1, 'kocak dah', 2),
(5, 2, 'hihihi', 1),
(6, 2, 'huhuhu', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `nama_latin` varchar(50) NOT NULL,
  `nama_daerah` varchar(50) NOT NULL,
  `family` varchar(50) NOT NULL,
  `habitat` varchar(50) NOT NULL,
  `perawakan` varchar(50) NOT NULL,
  `potensi` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `taksonomi`
--

CREATE TABLE `taksonomi` (
  `id` int(3) NOT NULL,
  `filum` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `ordo` varchar(50) NOT NULL,
  `family` varchar(50) NOT NULL,
  `genus` varchar(50) NOT NULL,
  `species` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `taksonomi`
--

INSERT INTO `taksonomi` (`id`, `filum`, `kelas`, `ordo`, `family`, `genus`, `species`) VALUES
(1, 'Tracheophyta', 'Magnoliopsida', 'Lamiales', 'Acanthaceae', 'Staurogyne', 'Staurogyne elongata'),
(2, 'Tracheophyta', 'Magnoliopsida', 'Ericales', 'Actinidiaceae', 'Saurauia Wild', 'Saurauia cauliflora DC'),
(3, 'Tracheophyta', 'Magnoliopsida', 'Ericales', 'Actinidiaceae', 'Saurauia Wild', 'Saurauia javanica (Nees) Hoogl.'),
(4, 'Tracheophyta', 'Liliopsida', 'asparagales', 'Amaryllidaceae', 'Hippeastrum?Herb.', 'Amaryllis equestris W.Ait.'),
(5, 'Tracheophyta', 'Liliopsida', 'asparagales', 'Amaryllidaceae', 'Crinum L', 'Crinum asiaticum L'),
(6, 'Tracheophyta', 'Magnoliopsida', 'Sapindales', 'Anacardiaceae', 'Dracontomelo Blume', 'Dracontomelon dao (Balnaco) Merr & Rolfe'),
(7, 'Tracheophyta', 'Magnoliopsida', 'Sapindales', 'Anacardiaceae', 'Mangifera L', 'Mangifera sp.'),
(8, 'Tracheophyta', 'Magnoliopsida', 'Magnoliales', 'Annonaceae', 'Fissistigma Griff', 'Fissistigma cf latifolia'),
(9, 'Tracheophyta', 'Magnoliopsida', 'Magnoliales', 'Annonaceae', 'Fissistigma Griff', 'Fissistigma cf manubriatum'),
(10, 'Tracheophyta', 'Magnoliopsida', 'Magnoliales', 'Annonaceae', 'Mitrella Miq', 'Mitrella kentii (Bl.) Miq.'),
(11, 'Tracheophyta', 'Magnoliopsida', 'Magnoliales', 'Annonaceae', 'Hubera Chaowasku', 'Polyalthia rumphii (Bl.) Merr'),
(12, 'Tracheophyta', 'Magnoliopsida', 'Magnoliales', 'Annonaceae', 'Goniothalamus (Blume) Hook.f. & Thomson', 'Goniothalamus macrophyllus Bl.)Hook.f'),
(13, 'Tracheophyta', 'Magnoliopsida', 'Gentianales', 'Apocynaceae', 'Alstonia?R.Br.', 'Alstonia scholaris Br.'),
(14, 'Tracheophyta', 'Magnoliopsida', 'Gentianales', 'Apocynaceae', 'Voacanga?Thou.', 'Voacanga grandifolia (Miq)Rolfe'),
(15, 'Tracheophyta', 'Liliopsida', 'Alismatales', 'Araceae', 'Alocasia?(Schott) G.Don', 'Alocasia longWoba Miq'),
(16, 'Tracheophyta', 'Liliopsida', 'Alismatales', 'Araceae', 'Colocasia?Schott', 'Colocasia esculenta (L.) Schott.'),
(17, 'Tracheophyta', 'Liliopsida', 'Alismatales', 'Araceae', 'Homalomena?Schott', 'Homalomena cordata Schott.'),
(18, 'Tracheophyta', 'Liliopsida', 'Alismatales', 'Araceae', 'Rhaphidophora?Hassk.', 'Rhaphidophora foraminifera (Engl.)'),
(19, 'Tracheophyta', 'Liliopsida', 'Alismatales', 'Araceae', 'Schismatoglottis?Zoll. & Moritzi', 'Schismatoglottis calyptrate (Roxb.)Zet'),
(20, 'Tracheophyta', 'Magnoliopsida', 'Apiales', 'Araliaceae', 'Polyscias?J.R.Forst. & G.Forst.', 'Polycias nodosa (Dc.) Seem'),
(22, 'Tes', 'Tes', 'Tes', 'Tes', 'Tes', ''),
(23, 'Inispesies', 'Inispesies', 'Inispesies', 'Inispesies', 'Inispesies', 'Inispesies'),
(24, 'Inispesies', 'Inispesies', 'Inispesies', 'Inispesies', 'Inispesies', 'Inispesies');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tumbuhan`
--

CREATE TABLE `tumbuhan` (
  `id` int(5) NOT NULL,
  `nama_latin` varchar(100) NOT NULL,
  `nama_daerah` varchar(50) NOT NULL,
  `habitat` varchar(50) NOT NULL,
  `perawakan` varchar(30) NOT NULL,
  `potensi` varchar(30) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `id_taksonomi` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tumbuhan`
--

INSERT INTO `tumbuhan` (`id`, `nama_latin`, `nama_daerah`, `habitat`, `perawakan`, `potensi`, `gambar`, `id_taksonomi`) VALUES
(1, 'Staurogyne elongata (Bl.)O.K', 'Reundeu', 'Leuweung Ngora', 'Terna', 'Obat', '1.jpg', 1),
(2, 'Saurauia cauliflora DC', 'Kileho', 'Leuweung Ngora', 'Perdu', 'Kayu Bakar', '2.jpg', 2),
(3, 'Saurauia javanica (Nees) Hoogl.', 'Kileho bentang', 'Leuweung Ngora', 'Perdu', 'Kayu Bakar', '3.jpeg', 3),
(4, 'Amaryllis equestris W.Ait.', 'Kembang torong', 'Leuweung Lembur', 'Terna', 'Obat', '4.jpg', 4),
(6, 'Dracontomelon dao (Balnaco) Merr & Rolfe', 'Kidahu', 'Leuweung Kolot', 'Perdu', 'Pangan', '6.jpg', 6),
(7, 'Mangifera sp.', 'Pari', 'Leuweung Kolot', 'Perdu', 'Pangan', '7.jpg', 7),
(8, 'Fissitigma cf latifolia', 'Ki handang', 'Leuweung Kolot', 'Perdu', 'Obat', '8.jpg', 8),
(9, 'Fissitigma cf manubriatum', 'Caricing', 'Leuweung Kolot', 'Perdu', 'Kayu Bakar', '9.jpg', 9),
(10, 'Mitrella kentii (Bl.) Miq.', 'Kiawi', 'Leuweung Kolot', 'Pohon', 'Makanan Burung', '10.jpg', 10),
(11, 'Polyalthia rumphii (Bl.) Merr', 'Ki sereh', 'Leuweung Kolot', 'Pohon', 'Bahan Bangunan', '11.jpg', 11),
(12, 'Goniothalamus macrophyllus Bl.)Hook.f', 'Kicantung', 'Leuweung Kolot', 'Perdu', 'Kayu Bakar', '12.jpg', 12),
(13, 'Alstonia scholaris Br.', 'Lame', 'Leuweung Lembur', 'Perdu', 'Pangan', '13.jpg', 13),
(14, 'Voacanga grandifolia (Miq)Rolfe', 'Sangkala', 'Leuweung Ngora', 'Perdu', 'Pangan', '14.jpg', 14),
(15, 'Alocasia longWoba Miq', 'Talas utan', 'Leuweung Ngora', 'Terna', 'Pangan', '15.jpg', 15),
(16, 'Colocasia esculenta (L.) Schott.', 'Taleus', 'Leuweung Ngora', 'Terna', 'Pangan', '16.jpg', 16),
(17, 'Homalomena cordata Schott.', 'Cariang asri', 'Leuweung Kolot, Leuweung Ngora', 'Terna', 'Ritual', '17.jpg', 17),
(18, 'Rhaphidophora foraminifera (Engl.)', 'Lolok', 'Leuweung Kolot', 'Terna', 'Ritual', '18.jpg', 18),
(19, 'Schismatoglottis calyptrate (Roxb.)Zet', 'Ciriwuh', 'Leuweung Kolot', 'HR', 'Obat', '19.jpg', 19),
(20, 'Polycias nodosa (Dc.) Seem', 'Ki ceuhai', 'Leuweung Kolot', 'HR', 'Kayu Bakar', '20.jpg', 20),
(21, 'Trevesia sundaica Miq', 'Ponggang', 'Leuweung Kolot', 'Pohon', 'A', '21.jpg', 21),
(22, 'Arengapinnata (Warmb) Merr', 'Kawung', 'Leuweung Kolot, Leuweung Lembur', 'Pohon', 'Pangan', '22.jpg', 22),
(23, 'Calamus heteroideus Bl.', 'Hoe pelah', 'Leuweung Kolot', 'Liana', 'Air', '23.jpg', 23),
(24, 'Calamus sp.', 'Hoe seel', 'Leuweung Kolot', 'Liana', 'Air', '24.jpg', 24),
(37, 'Goniothalamus macrophyllus Bl.)Hook.f', 'Kicantung', 'Leuweung Kolot', 'Perdu', 'Kayu Bakar', '12.jpg', 12),
(38, 'Alstonia scholaris Br.', 'Lame', 'Leuweung Lembur', 'Perdu', 'Pangan', '13.jpg', 13),
(39, 'Voacanga grandifolia (Miq)Rolfe', 'Sangkala', 'Leuweung Ngora', 'Perdu', 'Pangan', '14.jpg', 14),
(40, 'Alocasia longWoba Miq', 'Talas utan', 'Leuweung Ngora', 'Terna', 'Pangan', '15.jpg', 15),
(41, 'Colocasia esculenta (L.) Schott.', 'Taleus', 'Leuweung Ngora', 'Terna', 'Pangan', '16.jpg', 16),
(42, 'Homalomena cordata Schott.', 'Cariang asri', 'Leuweung Kolot, Leuweung Ngora', 'Terna', 'Ritual', '17.jpg', 17),
(43, 'Rhaphidophora foraminifera (Engl.)', 'Lolok', 'Leuweung Kolot', 'Terna', 'Ritual', '18.jpg', 18),
(44, 'Schismatoglottis calyptrate (Roxb.)Zet', 'Ciriwuh', 'Leuweung Kolot', 'HR', 'Obat', '19.jpg', 19),
(45, 'Polycias nodosa (Dc.) Seem', 'Ki ceuhai', 'Leuweung Kolot', 'HR', 'Kayu Bakar', '20.jpg', 20),
(46, 'Trevesia sundaica Miq', 'Ponggang', 'Leuweung Kolot', 'Pohon', 'A', '21.jpg', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 1),
(2, 'rrrr', 'rrrrr', 2),
(3, 'ini bener', 'ini bener', 2),
(4, 'anjuarianto', 'totalfat', 2),
(5, 'user1', 'totalfat', 2),
(6, 'tes1', 'tes', 2),
(7, 'tes', 'tes', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `taksonomi`
--
ALTER TABLE `taksonomi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tumbuhan`
--
ALTER TABLE `tumbuhan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `taksonomi`
--
ALTER TABLE `taksonomi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tumbuhan`
--
ALTER TABLE `tumbuhan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_user` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_user`, `username`, `password`) VALUES
(1, 'anjuarianto', 'totalfat'),
(3, 'sanji', 'tai'),
(4, 'usop', 'kudu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `alamat` tinytext NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `email`, `hp`, `alamat`, `status`) VALUES
('', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `dbci3`
--
CREATE DATABASE IF NOT EXISTS `dbci3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbci3`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(4) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`) VALUES
(2, 'Sepatu Nike Putih Zoom Series', 980000),
(10, 'COA COA', 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Anju Arianto', 'anjuarianto@gmail.com', 'anjuarianto', '84174ee0921b39e71f4e46b9203ceccd');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_login`
--
CREATE DATABASE IF NOT EXISTS `db_login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_login`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(10) NOT NULL,
  `username_pembeli` varchar(20) NOT NULL,
  `id_stok` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id_cart`, `username_pembeli`, `id_stok`, `status`) VALUES
(2, 'user', 1, 'belum di proses'),
(34, 'tot', 141, 'belum di proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_pelanggan`
--

CREATE TABLE `pesanan_pelanggan` (
  `id_pesanan` int(10) NOT NULL,
  `username_pembeli` varchar(50) NOT NULL,
  `username_penjual` varchar(50) NOT NULL,
  `kuantitas_pesanan` int(10) NOT NULL,
  `id_stok` int(10) NOT NULL,
  `harga_pesanan` int(20) NOT NULL,
  `tanggal_pesanan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_detail_kendaraan`
--

CREATE TABLE `tabel_detail_kendaraan` (
  `id_kendaraan` varchar(8) NOT NULL,
  `id_transport` varchar(8) NOT NULL,
  `tipe_kendaraan` varchar(20) NOT NULL,
  `kapasitas_transport` int(20) NOT NULL,
  `biaya_transportasi` int(20) NOT NULL,
  `gratis_transport` int(20) NOT NULL,
  `detail_transport` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_detail_kendaraan`
--

INSERT INTO `tabel_detail_kendaraan` (`id_kendaraan`, `id_transport`, `tipe_kendaraan`, `kapasitas_transport`, `biaya_transportasi`, `gratis_transport`, `detail_transport`, `keterangan`) VALUES
('V001', 'T12345', 'LKW', 4000000, 25, 250, 'D:XX:1234', 'Scania 730 V8'),
('V002', 'T12345', 'Container', 20000000, 25, 250, 'E:yz:12', 'MAN 1080');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_info_pemasok`
--

CREATE TABLE `tabel_info_pemasok` (
  `id_pemasok` int(8) NOT NULL,
  `nama_pemasok` varchar(50) NOT NULL,
  `tipe_pemasok` varchar(10) NOT NULL,
  `tanggal_kontrak_pemasok` date NOT NULL,
  `kontrak_pemasok_berakhir` date NOT NULL,
  `detail_kontak_pemasok` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_info_pemasok`
--

INSERT INTO `tabel_info_pemasok` (`id_pemasok`, `nama_pemasok`, `tipe_pemasok`, `tanggal_kontrak_pemasok`, `kontrak_pemasok_berakhir`, `detail_kontak_pemasok`, `keterangan`) VALUES
(1, 'Parando Simangunsong', '', '0000-00-00', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_stok`
--

CREATE TABLE `tabel_stok` (
  `id_stok` varchar(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tipe_stok` varchar(50) NOT NULL,
  `kuantitas_stok` int(20) NOT NULL,
  `harga_per_ton` int(20) NOT NULL,
  `tanggal_inventaris_stok` date NOT NULL,
  `tanggal_sah_persediaan` date NOT NULL,
  `lokasi_stok` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_stok`
--

INSERT INTO `tabel_stok` (`id_stok`, `username`, `tipe_stok`, `kuantitas_stok`, `harga_per_ton`, `tanggal_inventaris_stok`, `tanggal_sah_persediaan`, `lokasi_stok`, `gambar`) VALUES
('1', 'anjuarianto', 'Jagung KW 1', 10000, 9999, '2014-12-11', '2014-12-11', 'Tangerang Jing', '1.jpg'),
('111', 'anjuarianto', 'Onta', 19, 1888, '2011-11-11', '2011-11-11', 'Amsterdam', '55.jpg'),
('14', 'oranggoblok', 'Makanan Kuda', 700, 7000, '2020-10-20', '2020-10-20', 'Tangerang', '4.jpg'),
('141', 'oranggoblok', 'Grinder Jagung', 600, 17000, '2010-10-10', '2010-10-10', 'Banyuwangi', '3.jpg'),
('2', 'anjuarianto', 'Jagung KW 2', 100000, 200, '2012-12-12', '2018-10-12', 'Tangerang', '2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(15) NOT NULL,
  `nama` varchar(90) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `nama`, `pass`, `email`, `alamat`, `level`) VALUES
('anjuarianto', 'Anju Arianto Tindaon', '84174ee0921b39e71f4e46b9203ceccd', 'anjuarianto@gmail.com', 'Kaswari 12 ', 1),
('oranggoblok', 'orang', '84174ee0921b39e71f4e46b9203ceccd', 'orang@goblok.com', 'dimana mana hatiku senang', 1),
('tot', 'Tot', '0b080119cbf1138edfa9132471e1a661', 'tot@gmail.com', 'Jakarta', 2),
('user', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user@gmail.com', 'Tangerang', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `pesanan_pelanggan`
--
ALTER TABLE `pesanan_pelanggan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `tabel_detail_kendaraan`
--
ALTER TABLE `tabel_detail_kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indeks untuk tabel `tabel_info_pemasok`
--
ALTER TABLE `tabel_info_pemasok`
  ADD PRIMARY KEY (`id_pemasok`);

--
-- Indeks untuk tabel `tabel_stok`
--
ALTER TABLE `tabel_stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tabel_info_pemasok`
--
ALTER TABLE `tabel_info_pemasok`
  MODIFY `id_pemasok` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `jagung`
--
CREATE DATABASE IF NOT EXISTS `jagung` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jagung`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'nilzam', '123456'),
(3, 'putra', 'putra123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_transport`
--

CREATE TABLE `info_transport` (
  `id_transport` varchar(8) NOT NULL,
  `nama_transport` varchar(50) NOT NULL,
  `tipe_transport` varchar(10) NOT NULL,
  `tanggal_kontrak_transport` date NOT NULL,
  `tanggal_habis_transport` date NOT NULL,
  `kontak_transport` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_detail_kendaraan`
--

CREATE TABLE `tabel_detail_kendaraan` (
  `id_kendaraan` varchar(8) NOT NULL,
  `id_transport` varchar(8) NOT NULL,
  `tipe_kendaraan` varchar(20) NOT NULL,
  `kapasitas_transport` int(20) NOT NULL,
  `biaya_transportasi` int(20) NOT NULL,
  `gratis_transport` int(20) NOT NULL,
  `detail_transport` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_info_pemasok`
--

CREATE TABLE `tabel_info_pemasok` (
  `id_pemasok` varchar(8) NOT NULL,
  `nama_pemasok` varchar(50) NOT NULL,
  `tipe_pemasok` varchar(10) NOT NULL,
  `tanggal_kontrak_pemasok` date NOT NULL,
  `kontrak_pemasok_berakhir` date NOT NULL,
  `detail_kontak_pemasok` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pasokan`
--

CREATE TABLE `tabel_pasokan` (
  `id_pemasok` varchar(8) NOT NULL,
  `id_stok` varchar(8) NOT NULL,
  `kuantitas` int(20) NOT NULL,
  `tanggal_pesanan` date NOT NULL,
  `tanggal_pasokan` date NOT NULL,
  `penerimaan_nr` varchar(20) NOT NULL,
  `id_pengiriman` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pelanggan`
--

CREATE TABLE `tabel_pelanggan` (
  `id_pelanggan` varchar(8) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `tipe_palanggan` varchar(10) NOT NULL,
  `tanggal_kontrak_pelanggan` date NOT NULL,
  `tanggal_kontrak_habis` date NOT NULL,
  `kontak_pelanggan` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pengguna`
--

CREATE TABLE `tabel_pengguna` (
  `id_pengguna` int(8) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `tipe_pengguna` varchar(20) NOT NULL,
  `id_tipe_pengguna` varchar(8) NOT NULL,
  `password_pengguna` varchar(50) NOT NULL,
  `email_pengguna` varchar(50) NOT NULL,
  `kontak_pengguna` varchar(50) NOT NULL,
  `login_terakhir` datetime NOT NULL,
  `lokasi_terakhir` varchar(20) NOT NULL,
  `login_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pengiriman`
--

CREATE TABLE `tabel_pengiriman` (
  `id_pengiriman` varchar(8) NOT NULL,
  `id_pesanan` varchar(8) NOT NULL,
  `tipe_pengiriman` varchar(10) NOT NULL,
  `tanggal_pengiriman` date NOT NULL,
  `lokasi_pengiriman` varchar(20) NOT NULL,
  `id_kendaraan` varchar(8) NOT NULL,
  `status_pengiriman` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pesanan_pelanggan`
--

CREATE TABLE `tabel_pesanan_pelanggan` (
  `id_pesanan` varchar(8) NOT NULL,
  `id_pelanggan` varchar(8) NOT NULL,
  `kuantitas_pesanan` int(20) NOT NULL,
  `id_stok` varchar(8) NOT NULL,
  `harga_pesanan` int(20) NOT NULL,
  `tanggal_pesanan` date NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `info_transport`
--
ALTER TABLE `info_transport`
  ADD PRIMARY KEY (`id_transport`);

--
-- Indeks untuk tabel `tabel_detail_kendaraan`
--
ALTER TABLE `tabel_detail_kendaraan`
  ADD PRIMARY KEY (`id_transport`);

--
-- Indeks untuk tabel `tabel_info_pemasok`
--
ALTER TABLE `tabel_info_pemasok`
  ADD PRIMARY KEY (`id_pemasok`);

--
-- Indeks untuk tabel `tabel_pelanggan`
--
ALTER TABLE `tabel_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `tabel_pengguna`
--
ALTER TABLE `tabel_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `tabel_pengiriman`
--
ALTER TABLE `tabel_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indeks untuk tabel `tabel_pesanan_pelanggan`
--
ALTER TABLE `tabel_pesanan_pelanggan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tabel_pengguna`
--
ALTER TABLE `tabel_pengguna`
  MODIFY `id_pengguna` int(8) NOT NULL AUTO_INCREMENT;
--
-- Database: `latihan`
--
CREATE DATABASE IF NOT EXISTS `latihan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(5) NOT NULL,
  `nama_barang` text NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `harga`, `gambar`) VALUES
('12', 'sadfa', 80000, '066_-_wall-nag_coll_41.jpg'),
('Ngent', 'Ngentot', 80000, '273_-_wall-nag_coll_1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(3) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `status`) VALUES
(1, 'anjuarianto', 'totalfat', 'Penjual');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `pasartungging`
--
CREATE DATABASE IF NOT EXISTS `pasartungging` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pasartungging`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kat` int(2) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tgl_input_kat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kat`, `kategori`, `tgl_input_kat`) VALUES
(1, 'SEPATU', '2015-06-13 09:20:34'),
(3, 'TAS', '2015-06-13 09:42:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `id_user` int(2) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `pass_user` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`id_user`, `nama_user`, `pass_user`, `nama`, `level`, `status`) VALUES
(1, 'ad', 'ad', 'Admin Olshop', '1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_merk`
--

CREATE TABLE `tb_merk` (
  `id_merk` int(2) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `tgl_input_merk` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_merk`
--

INSERT INTO `tb_merk` (`id_merk`, `merk`, `tgl_input_merk`) VALUES
(1, 'VANS', '2015-06-13 11:14:49'),
(2, 'EIGER', '2015-06-13 14:50:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(2) NOT NULL,
  `judul` varchar(220) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `id_merk` int(2) NOT NULL,
  `id_kat` int(2) NOT NULL,
  `ket` text NOT NULL,
  `status` enum('publish','draft') NOT NULL,
  `counter` int(5) NOT NULL,
  `tgl_input_pro` datetime NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `judul`, `harga`, `jumlah`, `kondisi`, `id_merk`, `id_kat`, `ket`, `status`, `counter`, `tgl_input_pro`, `foto`) VALUES
(1, 'Baju Cewek', 6000009, '5', 'Baju Cewek', 2, 3, 'Barang bagus, mantap barang', 'publish', 1, '2015-06-13 13:48:35', 'blebeau.jpg'),
(2, 'Power Bank', 1200000, '10', 'Baru', 2, 3, 'Mantap lah pokoknya', 'publish', 0, '2015-06-13 15:10:57', 'banjar.jpg'),
(3, 'Celan Dalam', 1234555, '3', 'Bekas', 1, 1, 'Hahahaha', 'publish', 2, '2015-06-13 15:11:38', 'ungu.jpg'),
(4, 'Sapu Tangan', 3000000, '4', 'Baru', 1, 1, 'Bagus kok', 'publish', 1, '2015-06-13 15:12:16', '1922253_840651915960630_2004795134_n.jpg'),
(5, 'Tas Eigeer', 40000000, '3', 'Baru', 2, 3, 'Bolong dikit', 'publish', 1, '2015-06-13 15:12:57', 'super-cub_bagus.jpg'),
(6, 'iPhone 8', 2147483647, '1', 'iPhone 8', 1, 1, 'Ada akiknya looo', 'publish', 1, '2015-06-13 15:13:49', 'body-kiri.jpg'),
(7, 'HTC 5', 600000, '223', 'Baru', 1, 1, 'Batrai drop', 'draft', 0, '2015-06-13 15:14:23', 'yell.jpg'),
(8, 'Tas Consina', 400000, '33', 'Bekas', 1, 1, 'Bolong banya, sering di pake naik gunung ini mah', 'publish', 3, '2015-06-13 15:15:16', 'street-cub.jpg'),
(9, 'Helm GM', 453333330, '4', 'Bekas', 1, 1, 'Banyak ni numpuk', 'publish', 2, '2015-06-13 15:16:10', 'redgo.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_visitor`
--

CREATE TABLE `tb_visitor` (
  `no` int(7) NOT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `os` varchar(40) DEFAULT NULL,
  `browser` varchar(40) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_visitor`
--

INSERT INTO `tb_visitor` (`no`, `ip`, `os`, `browser`, `tanggal`) VALUES
(15, '::1', 'Unknown Windows OS', 'Chrome 43.0.2357.124', '2015-06-14 14:31:32'),
(16, '::1', 'Unknown Windows OS', 'Firefox 22.0', '2015-06-14 14:32:35'),
(17, '::1', 'Unknown Windows OS', 'Firefox 53.0', '2017-04-26 06:21:39'),
(18, '::1', 'Unknown Windows OS', 'Firefox 54.0', '2017-07-05 02:04:59'),
(19, '::1', 'Unknown Windows OS', 'Chrome 70.0.3538.110', '2018-11-28 14:20:57'),
(20, '::1', 'Unknown Windows OS', 'Chrome 70.0.3538.110', '2018-11-28 14:23:50'),
(21, '::1', 'Unknown Windows OS', 'Chrome 70.0.3538.110', '2018-11-28 14:25:57'),
(22, '::1', 'Unknown Windows OS', 'Chrome 70.0.3538.110', '2018-12-06 04:57:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tb_merk`
--
ALTER TABLE `tb_merk`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tb_visitor`
--
ALTER TABLE `tb_visitor`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kat` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_merk`
--
ALTER TABLE `tb_merk`
  MODIFY `id_merk` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_visitor`
--
ALTER TABLE `tb_visitor`
  MODIFY `no` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"baduy_bis\",\"table\":\"tumbuhan\"},{\"db\":\"baduy_bis\",\"table\":\"submissions\"},{\"db\":\"baduy_bis\",\"table\":\"user\"},{\"db\":\"baduy_bis\",\"table\":\"taksonomi\"},{\"db\":\"baduy_bis\",\"table\":\"menu\"},{\"db\":\"toko\",\"table\":\"orders\"},{\"db\":\"toko\",\"table\":\"invoices\"},{\"db\":\"toko\",\"table\":\"transport\"},{\"db\":\"toko\",\"table\":\"products\"},{\"db\":\"toko\",\"table\":\"toko_sessions\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'baduy_bis', 'tumbuhan', '[]', '2018-12-19 21:28:06'),
('root', 'db_login', 'cart', '[]', '2018-11-09 12:09:06'),
('root', 'db_login', 'users', '{\"CREATE_TIME\":\"2018-11-03 03:46:49\",\"col_visib\":[1,1,1,1,1,1]}', '2018-11-08 22:16:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-12-27 10:08:37', '{\"lang\":\"id\",\"Console\\/Mode\":\"show\",\"Console\\/Height\":99}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `toko`
--
CREATE DATABASE IF NOT EXISTS `toko` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `toko`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` tinyint(1) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `status` enum('paid','unpaid','canceled','expired') NOT NULL,
  `username_pembeli` varchar(50) NOT NULL,
  `username_penjual` varchar(50) NOT NULL,
  `total_harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `invoices`
--

INSERT INTO `invoices` (`id`, `date`, `due_date`, `status`, `username_pembeli`, `username_penjual`, `total_harga`) VALUES
(14, '2018-11-28 11:54:30', '2018-11-29 11:54:30', '', 'pembeli1', 'penjual1', '420000'),
(15, '2018-11-28 11:58:15', '2018-11-29 11:58:15', 'unpaid', 'pembeli1', 'penjual1', '380000'),
(16, '2018-11-28 11:58:43', '2018-11-29 11:58:43', '', 'pembeli1', '', ''),
(17, '2018-11-28 12:00:19', '2018-11-29 12:00:19', '', 'pembeli1', 'penjual1', '540000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification`
--

CREATE TABLE `notification` (
  `id` int(10) NOT NULL,
  `notifikasi` varchar(1000) NOT NULL,
  `status` enum('unpaid','confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `notification`
--

INSERT INTO `notification` (`id`, `notifikasi`, `status`) VALUES
(3, 'pembeli1 melakukan transaksi dengan penjual1 nomor invoice 5', 'confirmed'),
(4, 'pembeli 1 Melakukan Transaksi dengan penjual1 nomor invoice 8', 'confirmed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `invoice_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `qty` int(3) NOT NULL,
  `price` int(9) NOT NULL,
  `username_pembeli` text NOT NULL,
  `id_transport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `product_id`, `product_name`, `qty`, `price`, `username_pembeli`, `id_transport`) VALUES
(7, 14, 4, 'Sepatu', 1, 240000, 'pembeli1', 2),
(8, 14, 3, 'Topi', 1, 80000, 'pembeli1', 2),
(9, 15, 3, 'Topi', 1, 80000, 'pembeli1', 4),
(10, 17, 4, 'Sepatu', 1, 240000, 'pembeli1', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id_stok` int(10) NOT NULL,
  `nama_stok` varchar(50) NOT NULL,
  `deskripsi_stok` text NOT NULL,
  `harga_stok` int(9) NOT NULL,
  `jumlah_stok` int(3) NOT NULL,
  `images` text NOT NULL,
  `tanggal_stok` date NOT NULL,
  `lokasi_stok` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id_stok`, `nama_stok`, `deskripsi_stok`, `harga_stok`, `jumlah_stok`, `images`, `tanggal_stok`, `lokasi_stok`, `username`) VALUES
(1, 'Baju', 'Baju Kemeja', 79000, 5, '542.jpg', '0000-00-00', 'i', 'penjual1'),
(2, 'Sandal Casual', 'Sandal Jepit Casual', 35000, 10, '312618_011.jpg', '0000-00-00', '', 'penjual1'),
(3, 'Topi', 'Topi Casual', 80000, 12, '91qz+oNEDIL._SL1500__.jpg', '0000-00-00', '', 'penjual1'),
(4, 'Sepatu', 'Sepatu Kets', 240000, 1, 'Converse-Shoes.jpg', '0000-00-00', '', 'penjual1'),
(5, 'Dasi', 'Dasi Formal', 77500, 14, 'Platinum-Ties-Mens-Red-Power-Tie-Necktie-P14034714.jpg', '0000-00-00', 'fufufuf', 'penjual1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko_sessions`
--

CREATE TABLE `toko_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko_sessions`
--

INSERT INTO `toko_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('4075bfad04cb9640c06858550b963ec6', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1545090539, ''),
('cb1f67fc22665360fe1ef586348a9a82', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 1543825630, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport`
--

CREATE TABLE `transport` (
  `id` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transport`
--

INSERT INTO `transport` (`id`, `type`, `price`, `image`, `capacity`) VALUES
(1, 'Container', 500000, '1.jpg', 0),
(2, 'Motor Bak', 100000, '2.jpg', 0),
(3, 'Truk ', 200000, '3.jpg', 0),
(4, 'Truk Box', 300000, '4.jpg', 0),
(9, 'Truk sayur teot', 190000, '11.jpg', 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group`) VALUES
(1, 'penjual1', 'penjual1', 1),
(2, 'pembeli1', 'pembeli1', 2),
(3, 'transporter1', 'transporter1', 3),
(4, 'admin1', 'admin1', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indeks untuk tabel `toko_sessions`
--
ALTER TABLE `toko_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indeks untuk tabel `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id_stok` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
