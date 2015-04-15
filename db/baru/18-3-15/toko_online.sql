-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2015 at 10:51 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toko_online`
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
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'bayu2513@gmail.com', '089658351110', 'admin', 'N');

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

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE IF NOT EXISTS `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
`id_download` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `nama_file` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(22, 'Bayu', 'bayu2513@gmail.com', 'ask', 'lorem ipsum lorem ipsum lorem ipsum\r\nlorem ipsum lorem ipsum lorem ipsum\r\nlorem ipsum lorem ipsum lorem ipsum', '2015-03-13'),
(23, 'nugraha', 'nugraharahmat16@gmail.com', 'saran', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\nlorem ipsum lorem ipsum lorem ipsum lorem ipsum', '2015-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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
(23, 'Minuman', 'minuman'),
(24, 'Minuman Dingin', 'minuman-dingin');

-- --------------------------------------------------------

--
-- Table structure for table `komisi`
--

CREATE TABLE IF NOT EXISTS `komisi` (
  `id_komisi` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_detail_transaksi` int(11) DEFAULT NULL,
  `tanggal_transaksi` varchar(20) DEFAULT NULL,
  `besar_komisi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `kota_kabupaten`
--

CREATE TABLE IF NOT EXISTS `kota_kabupaten` (
  `id_kota_kabupaten` int(11) NOT NULL,
  `id_provinsi` int(11) DEFAULT NULL,
  `nama_kota` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota_kabupaten`
--

INSERT INTO `kota_kabupaten` (`id_kota_kabupaten`, `id_provinsi`, `nama_kota`) VALUES
(1, 1, 'Jakarta'),
(2, 2, 'Bandung'),
(3, 3, 'Semarang'),
(4, 4, 'Medan'),
(5, 5, 'Aceh'),
(6, 6, 'Banjarmasin'),
(7, 7, 'Balikpapan'),
(8, 8, 'Samarinda'),
(9, 9, 'Surabaya'),
(10, 10, 'Palembang'),
(11, 11, 'Lainnya');

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
(45, 'Cara Pembelian', '?module=carabeli', '<ol style="font-family: Arial, Helvetica, sans-serif; font-size: 11px">\r\n	<li>Klik pada tombol&nbsp;<span style="font-weight: bold">Beli</span>&nbsp;pada produk yang ingin Anda pesan.</li>\r\n	<li>Produk yang Anda pesan akan masuk ke dalam&nbsp;<span style="font-weight: bold">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom&nbsp;<span style="font-weight: bold">Jumlah</span>, kemudian klik tombol&nbsp;<span style="font-weight: bold">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li>\r\n	<li>Jika sudah selesai, klik tombol&nbsp;<span style="font-weight: bold">Selesai Belanja</span>, maka akan tampil form untuk pengisian data customer/pembeli.</li>\r\n	<li>Setelah data pembeli selesai diisikan, klik tombol&nbsp;<span style="font-weight: bold">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordernya). Dan juga ada total pembayaran serta nomor rekening pembayaran.</li>\r\n	<li>Apabila telah melakukan pembayaran, maka produk akan segera kami kirimkan.&nbsp;</li>\r\n</ol>\r\n', 'gedung.jpg', 'admin', 'Y', 8),
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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `email`, `status_order`, `tgl_order`, `jam_order`, `id_kota`) VALUES
(37, 'Yono', 'mekar wangi', '2147483647', 'bayu2513@gmail.com', 'Baru', '2015-03-13', '11:24:45', 2),
(38, 'Yono', 'mekar wangi', '2147483647', 'bayu2513@gmail.com', 'Baru', '2015-03-13', '11:49:11', 2),
(39, 'Yono', 'mekar wangi', '2147483647', 'bayu2513@gmail.com', 'Baru', '2015-03-13', '11:49:38', 2),
(40, 'nugraha', 'cimahi', '899', 'nugraharahmat16@gmail.com', 'Baru', '2015-03-14', '05:04:07', 5),
(41, 'Yono', 'mekar wangi', '2147483647', 'bayu2513@gmail.com', 'Baru', '2015-03-17', '05:14:25', 2),
(42, 'Yono', 'mekar wangi', '2147483647', 'bayu2513@gmail.com', 'Baru', '2015-03-17', '05:47:47', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE IF NOT EXISTS `pembeli` (
`id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(70) NOT NULL,
  `id_provinsi` varchar(30) NOT NULL,
  `id_kota_kabupaten` int(11) NOT NULL,
  `id_session` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_user`, `username`, `nama`, `tanggal_lahir`, `jenis_kelamin`, `email`, `alamat`, `phone`, `password`, `id_provinsi`, `id_kota_kabupaten`, `id_session`) VALUES
(11, '', 'Yono', '', '', 'bayu2513@gmail.com', 'mekar wangi', 2147483647, 'testing1', '01', 1, ''),
(13, '', 'nugraha', '', '', 'nugraharahmat16@gmail.com', 'cimahi', 899, 'Testing1', '', 5, '');

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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(45, 19, 'Kalua Gula Merah', 'kalua-gula-merah', 'Kalua adalah manisan dariÂ  kulit jeruk bali\r\n', 30, 12, '0.00', '2015-03-13', '6737manisan kulit jeruk bali.jpg', 1, 0),
(46, 23, 'Temulawak', 'temulawak', '<div align="left">\r\ntemulawak adalah blablablablablabla<br />\r\n</div>\r\n', 12, 15, '0.00', '2015-03-13', '80temulawak.jpg', 1, 0),
(47, 20, 'Baso Goreng', 'baso-goreng', '', 12000, 9, '0.00', '2015-03-13', '12bakso-goreng.jpg', 1, 0),
(48, 21, 'Nasi Goreng Komplit', 'nasi-goreng-komplit', '', 20000, 50, '0.00', '2015-03-13', '25Nasi_Goreng_Sosis.jpg', 1, 0),
(49, 22, 'Emping', 'emping', '', 17000, 12, '0.00', '2015-03-13', '27emping.jpg', 1, 0),
(50, 23, 'Moccachino Req Name', 'moccachino-req-name', '', 12, 100, '0.00', '2015-03-13', '82moccachino.jpg', 1, 0),
(51, 23, 'Coffee Bongkar', 'coffee-bongkar', '', 9000, 100, '0.00', '2015-03-13', '8kopi-hitam2.jpg', 1, 0),
(52, 24, 'lemon tea', 'lemon-tea', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum\r\n', 14500, 12, '0.00', '2015-03-14', '13lemon tea.jpg', 1, 0),
(53, 17, 'Keripik Sanjay', 'keripik-sanjay', '<div>\r\n<br />\r\n</div>\r\n', 10000, 30, '0.00', '2015-03-14', '46keripik balado.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Aceh'),
(2, 'Sumatera Barat'),
(3, 'Jawa Barat'),
(4, 'Jawa Tengah'),
(5, 'Jawa Timur'),
(6, 'Kalimantan Barat'),
(7, 'Kalimantan Timur'),
(8, 'Kalimantan Utara'),
(9, 'Sulawesi');

-- --------------------------------------------------------

--
-- Table structure for table `rumusan_komisi`
--

CREATE TABLE IF NOT EXISTS `rumusan_komisi` (
  `id_rumusam` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `persen_komisi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id_user` int(11) NOT NULL,
  `id_provinsi` int(11) DEFAULT NULL,
  `id_kota` int(11) DEFAULT NULL,
  `kode_pos` varchar(5) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `nama_supplier` varchar(50) DEFAULT NULL,
  `alamat_supplier` varchar(50) DEFAULT NULL,
  `pic_supplier` varchar(50) DEFAULT NULL,
  `no_telepon` int(11) DEFAULT NULL,
  `no_hp` int(11) DEFAULT NULL,
  `email_supplier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pembeli` int(11) DEFAULT NULL,
  `tanggal_transaksi` varchar(20) DEFAULT NULL,
  `total_transaksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
 ADD PRIMARY KEY (`id_detail_transaksi`);

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
-- Indexes for table `komisi`
--
ALTER TABLE `komisi`
 ADD PRIMARY KEY (`id_komisi`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
 ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `kota_kabupaten`
--
ALTER TABLE `kota_kabupaten`
 ADD PRIMARY KEY (`id_kota_kabupaten`);

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
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
 ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `rumusan_komisi`
--
ALTER TABLE `rumusan_komisi`
 ADD PRIMARY KEY (`id_rumusam`);

--
-- Indexes for table `shoutbox`
--
ALTER TABLE `shoutbox`
 ADD PRIMARY KEY (`id_shoutbox`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`id_transaksi`);

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
MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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
MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `shoutbox`
--
ALTER TABLE `shoutbox`
MODIFY `id_shoutbox` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
