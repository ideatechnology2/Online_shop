-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2015 at 06:14 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbnuansa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'harry@bukulokomedia.com', '08987962916', 'admin', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
`id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(10, 'Pen', 'http://ideotechshop.com/', 'banner2.png', '2010-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
`id_download` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `nama_file` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`) VALUES
(1, 'Katalog Lokomedia Desember 2010', 'katalog-12-2010.pdf'),
(2, 'Katalog Lokomedia April 2011', 'katalog-04-2011.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
`id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(22, 'Bayu', 'bayu2513@gmail.com', 'ask', 'lorem ipsum lorem ipsum lorem ipsum\r\nlorem ipsum lorem ipsum lorem ipsum\r\nlorem ipsum lorem ipsum lorem ipsum', '2015-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(17, 'Keripik', 'keripik'),
(18, 'Dodol Garut', 'dodol-garut'),
(19, 'Manisan', 'manisan'),
(20, 'Baso', 'baso'),
(21, 'Makanan Berat', 'makanan-berat'),
(22, 'Makanan Ringan', 'makanan-ringan'),
(23, 'Minuman', 'minuman');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
`id_kota` int(3) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`, `ongkos_kirim`) VALUES
(1, 'Jakarta', 13000),
(2, 'Bandung', 13500),
(3, 'Semarang', 10000),
(4, 'Medan', 20000),
(5, 'Aceh', 25000),
(6, 'Banjarmasin', 17500),
(7, 'Balikpapan', 18500),
(8, 'Samarinda', 19500),
(9, 'Lainnya', 10000),
(10, 'Palembang', 23000),
(11, 'Surabaya', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
`id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Produk', '?module=produk', '', '', 'admin', 'Y', 4),
(42, 'Order', '?module=order', '', '', 'admin', 'Y', 5),
(10, 'Manajemen Modul', '?module=modul', '', '', 'admin', 'N', 2),
(31, 'Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 3),
(43, 'Profil', '?module=profil', '<p>\r\nlorem ipsum&nbsp; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n</p>\r\n<p>\r\nlorem ipsum&nbsp; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n</p>\r\n<p>\r\nlorem ipsum&nbsp; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n</p>\r\n<p>\r\nlorem ipsum&nbsp; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n</p>\r\n<p>\r\nlorem ipsum&nbsp; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n</p>\r\n<p>\r\nlorem ipsum&nbsp; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n</p>\r\n<p>\r\nlorem ipsum&nbsp; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n</p>\r\n<p>\r\nlorem ipsum&nbsp; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n</p>\r\n<p>\r\nlorem ipsum&nbsp; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum \r\n</p>\r\n', 'anonymous_wallpaper_by_jayjaybirdsnest-d4qs3f3.png', 'admin', 'Y', 7),
(44, 'Buku Tamu', '?module=hubungi', '', '', 'admin', 'Y', 9),
(45, 'Cara Pembelian', '?module=carabeli', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n', 'gedung.jpg', 'admin', 'Y', 8),
(47, 'Banner', '?module=banner', '', '', 'user', 'N', 10),
(48, 'Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', 6),
(49, 'Ganti Password', '?module=password', '', '', 'user', 'Y', 1),
(53, 'Member', '?module=member', '', '', 'user', 'Y', 12),
(52, 'Laporan', '?module=laporan', '', '', 'user', 'Y', 11),
(57, 'Download', '?module=download', '', '', 'user', 'N', 13);

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE IF NOT EXISTS `mod_ym` (
`id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `mod_ym`
--

INSERT INTO `mod_ym` (`id`, `nama`, `username`) VALUES
(1, 'ila', 'ila');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id_orders` int(5) NOT NULL,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kota` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `email`, `status_order`, `tgl_order`, `jam_order`, `id_kota`) VALUES
(37, 'Yono', 'mekar wangi', '2147483647', 'bayu2513@gmail.com', 'Baru', '2015-03-13', '11:24:45', 2),
(38, 'Yono', 'mekar wangi', '2147483647', 'bayu2513@gmail.com', 'Baru', '2015-03-13', '11:49:11', 2),
(39, 'Yono', 'mekar wangi', '2147483647', 'bayu2513@gmail.com', 'Baru', '2015-03-13', '11:49:38', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(4, 17, 1),
(4, 18, 1),
(7, 21, 1),
(8, 18, 1),
(9, 18, 1),
(9, 22, 1),
(10, 23, 1),
(10, 22, 1),
(11, 22, 1),
(12, 23, 2),
(13, 22, 1),
(14, 18, 1),
(15, 23, 2),
(15, 18, 1),
(17, 18, 1),
(18, 18, 2),
(20, 18, 4),
(21, 24, 1),
(22, 17, 10),
(22, 24, 2),
(23, 24, 1),
(24, 23, 3),
(25, 17, 2),
(26, 23, 1),
(27, 18, 2),
(28, 24, 1),
(29, 24, 1),
(30, 16, 1),
(30, 23, 1),
(31, 23, 1),
(32, 15, 2),
(33, 16, 1),
(34, 31, 2),
(34, 30, 1),
(34, 29, 1),
(35, 44, 1),
(36, 44, 1),
(37, 51, 1),
(37, 46, 1),
(37, 49, 1),
(38, 48, 1),
(39, 48, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
`id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE IF NOT EXISTS `pembeli` (
`id_user` int(11) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(70) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_session` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_user`, `nama`, `email`, `alamat`, `phone`, `password`, `id_kota`, `id_session`) VALUES
(11, 'Yono', 'bayu2513@gmail.com', 'mekar wangi', 2147483647, 'gampang', 2, ''),
(12, 'oyon', 'bayuhaeruman_12402328@yahoo.co', 'mekar wangi', 2147483647, 'bebas', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
`id_produk` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `produk_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(45, 19, 'Kalua Gula Merah', 'kalua-gula-merah', 'Kalua adalah manisan dari&nbsp; kulit jeruk bali\r\n', 30, 12, '0.00', '2015-03-13', '37manisan kulit jeruk bali.jpg', 1, 0),
(46, 23, 'Temulawak', 'temulawak', '<div align="left">\r\ntemulawak adalah blablablablablabla<br />\r\n</div>\r\n', 12, 15, '0.00', '2015-03-13', '80temulawak.jpg', 1, 0),
(47, 20, 'Baso Goreng', 'baso-goreng', '', 12000, 9, '0.00', '2015-03-13', '12bakso-goreng.jpg', 1, 0),
(48, 21, 'Nasi Goreng Komplit', 'nasi-goreng-komplit', '', 20000, 50, '0.00', '2015-03-13', '25Nasi_Goreng_Sosis.jpg', 1, 0),
(49, 22, 'Emping', 'emping', '', 17000, 12, '0.00', '2015-03-13', '27emping.jpg', 1, 0),
(50, 23, 'Moccachino Req Name', 'moccachino-req-name', '', 12, 100, '0.00', '2015-03-13', '82moccachino.jpg', 1, 0),
(51, 23, 'Coffee Bongkar', 'coffee-bongkar', '', 9000, 100, '0.00', '2015-03-13', '12coffee-cup.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shoutbox`
--

CREATE TABLE IF NOT EXISTS `shoutbox` (
`id_shoutbox` int(5) NOT NULL,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `website` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `shoutbox`
--

INSERT INTO `shoutbox` (`id_shoutbox`, `nama`, `website`, `pesan`, `tanggal`, `jam`, `aktif`) VALUES
(12, 'Yolanda', '', 'fe   ;-)', '2012-07-22', '13:44:05', 'Y'),
(9, 'Harry', '', ';-)', '2012-07-22', '12:54:55', 'Y'),
(10, 'Yolanda', '', 'hehehe ;-)', '2012-07-22', '13:42:59', 'Y'),
(11, 'Yolanda', '', 'cos &lt;:D&gt;', '2012-07-22', '13:43:54', 'Y'),
(8, 'Ila', '', 'gimana sih  cara bebelanja disini ', '2012-07-22', '12:54:08', 'Y'),
(13, 'harry', '', 'hiasdasdasd;-D', '2013-05-04', '17:24:57', 'Y'),
(14, 'Yolanda', '', 'wildan kamu lagi apa ?', '2013-05-11', '03:24:29', 'Y'),
(15, 'Yolanda', '', 'adlkadsl', '2013-05-11', '03:24:41', 'Y'),
(16, 'Yolanda', '', 'dono', '2013-05-11', '03:25:16', 'Y'),
(17, 'irvan', '', 'tessss ;-D;-D;-D;-D', '2013-05-12', '17:44:36', 'Y'),
(18, 'ivan', '', ':-(', '2013-05-27', '05:53:29', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.2', '2009-09-11', 1, '1252681630'),
('127.0.0.1', '2009-09-11', 17, '1252734209'),
('127.0.0.3', '2009-09-12', 8, '1252817594'),
('127.0.0.1', '2009-10-24', 8, '1256381921'),
('127.0.0.1', '2009-10-26', 108, '1256620074'),
('127.0.0.1', '2009-10-27', 52, '1256686769'),
('127.0.0.1', '2009-10-28', 124, '1256792223'),
('127.0.0.1', '2009-10-29', 9, '1256828032'),
('127.0.0.1', '2009-10-31', 3, '1257047101'),
('127.0.0.1', '2009-11-01', 85, '1257113554'),
('127.0.0.1', '2009-11-02', 11, '1257207543'),
('127.0.0.1', '2009-11-03', 165, '1257292312'),
('127.0.0.1', '2009-11-04', 59, '1257403499'),
('127.0.0.1', '2009-11-05', 10, '1257433172'),
('127.0.0.1', '2009-11-11', 13, '1258006911'),
('127.0.0.1', '2009-11-12', 10, '1258048069'),
('127.0.0.1', '2009-11-14', 14, '1258222519'),
('127.0.0.1', '2009-11-17', 2, '1258473856'),
('127.0.0.1', '2009-11-19', 16, '1258635469'),
('127.0.0.1', '2009-11-21', 4, '1258863505'),
('127.0.0.1', '2009-11-25', 3, '1259216216'),
('127.0.0.1', '2009-11-26', 1, '1259222467'),
('127.0.0.1', '2009-11-30', 11, '1259651841'),
('127.0.0.1', '2009-12-02', 9, '1259746407'),
('127.0.0.1', '2009-12-03', 17, '1259906128'),
('127.0.0.1', '2009-12-10', 69, '1260423794'),
('127.0.0.1', '2009-12-12', 26, '1260560082'),
('127.0.0.1', '2009-12-11', 5, '1260508621'),
('127.0.0.1', '2009-12-13', 8, '1260716786'),
('127.0.0.1', '2009-12-14', 9, '1260772698'),
('127.0.0.1', '2009-12-15', 9, '1260837158'),
('127.0.0.1', '2009-12-16', 7, '1260905627'),
('127.0.0.1', '2009-12-17', 48, '1261026791'),
('127.0.0.1', '2009-12-18', 11, '1261088534'),
('127.0.0.1', '2009-12-22', 3, '1261477278'),
('127.0.0.1', '2009-12-25', 2, '1261686043'),
('127.0.0.1', '2009-12-26', 29, '1261835507'),
('127.0.0.1', '2009-12-27', 7, '1261920445'),
('127.0.0.1', '2009-12-28', 3, '1261965611'),
('127.0.0.1', '2009-12-29', 21, '1262024011'),
('127.0.0.1', '2009-12-30', 24, '1262146708'),
('127.0.0.1', '2010-01-01', 12, '1262286131'),
('127.0.0.1', '2010-01-03', 38, '1262529325'),
('127.0.0.1', '2010-01-12', 89, '1263264291'),
('127.0.0.1', '2010-01-14', 54, '1263482540'),
('127.0.0.1', '2010-01-15', 57, '1263506901'),
('127.0.0.1', '2010-02-11', 30, '1265831568'),
('127.0.0.1', '2010-02-13', 2, '1266032303'),
('127.0.0.1', '2010-02-14', 3, '1266115347'),
('127.0.0.1', '2010-02-15', 15, '1266195235'),
('127.0.0.1', '2010-02-18', 1, '1266499945'),
('127.0.0.1', '2010-02-22', 5, '1266856332'),
('127.0.0.1', '2010-02-25', 46, '1267103145'),
('127.0.0.1', '2010-05-12', 10, '1273654648'),
('127.0.0.1', '2010-05-16', 195, '1274026185'),
('127.0.0.1', '2010-05-17', 2, '1274029517'),
('127.0.0.1', '2010-05-19', 1, '1274279374'),
('127.0.0.1', '2010-05-27', 16, '1274967085'),
('127.0.0.1', '2010-05-30', 4, '1275192045'),
('127.0.0.1', '2010-05-31', 13, '1275271939'),
('127.0.0.1', '2010-06-05', 1, '1275676869'),
('127.0.0.1', '2010-06-06', 2, '1275842170'),
('127.0.0.1', '2010-06-15', 3, '1276572924'),
('127.0.0.1', '2010-06-22', 206, '1277221605'),
('127.0.0.1', '2010-08-02', 17, '1280754660'),
('127.0.0.1', '2010-08-20', 7, '1282285305'),
('127.0.0.1', '2010-08-30', 21, '1283185430'),
('127.0.0.1', '2010-08-31', 53, '1283207455'),
('127.0.0.1', '2010-09-02', 133, '1283402651'),
('127.0.0.1', '2010-09-05', 35, '1283702206'),
('127.0.0.1', '2010-09-13', 10, '1284370291'),
('127.0.0.1', '2010-09-17', 12, '1284662303'),
('127.0.0.1', '2010-09-22', 2, '1285091212'),
('127.0.0.1', '2010-09-23', 47, '1285254071'),
('127.0.0.1', '2010-09-26', 32, '1285512806'),
('127.0.0.1', '2010-09-27', 51, '1285532379'),
('127.0.0.1', '2010-10-14', 10, '1287074605'),
('127.0.0.1', '2010-10-15', 6, '1287150179'),
('127.0.0.1', '2010-10-16', 2, '1287170167'),
('127.0.0.1', '2010-10-20', 145, '1287636778'),
('127.0.0.1', '2010-10-21', 177, '1287721183'),
('127.0.0.1', '2010-10-22', 63, '1287752692'),
('127.0.0.1', '2011-04-02', 7, '1301680774'),
('127.0.0.1', '2011-04-03', 8, '1301801389'),
('127.0.0.1', '2011-04-05', 16, '1301977471'),
('127.0.0.1', '2011-04-09', 44, '1302288659'),
('127.0.0.1', '2011-04-10', 129, '1302370890'),
('127.0.0.1', '2011-04-11', 34, '1302488765'),
('127.0.0.1', '2011-04-17', 8, '1302998534'),
('127.0.0.1', '2011-04-22', 5, '1303479879'),
('127.0.0.1', '2011-04-23', 36, '1303534207'),
('127.0.0.1', '2012-05-13', 6, '1336880220'),
('127.0.0.1', '2012-05-14', 6, '1336971191'),
('127.0.0.1', '2012-05-15', 164, '1337105308'),
('127.0.0.1', '2012-05-16', 13, '1337184286'),
('127.0.0.1', '2012-06-01', 1, '1338512248'),
('127.0.0.1', '2012-06-12', 1, '1339512925'),
('127.0.0.1', '2012-07-01', 18, '1341151639'),
('127.0.0.1', '2012-07-21', 68, '1342906093'),
('127.0.0.1', '2012-07-22', 573, '1342976430'),
('::1', '2013-05-04', 34, '1367688951'),
('::1', '2013-05-11', 36, '1368252682');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
 ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
 ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
 ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
 ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
 ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
 ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
 ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `shoutbox`
--
ALTER TABLE `shoutbox`
 ADD PRIMARY KEY (`id_shoutbox`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `shoutbox`
--
ALTER TABLE `shoutbox`
MODIFY `id_shoutbox` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
