/*
Navicat MySQL Data Transfer

Source Server         : servermysql
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : ecommerce

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-06-07 23:02:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'harry@bukulokomedia.com', '08987962916', 'admin', 'N');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('10', 'Pen', 'http://ideotechshop.com/', 'banner2.png', '2010-07-30');

-- ----------------------------
-- Table structure for `download`
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES ('1', 'Katalog Lokomedia Desember 2010', 'katalog-12-2010.pdf');
INSERT INTO `download` VALUES ('2', 'Katalog Lokomedia April 2011', 'katalog-04-2011.pdf');

-- ----------------------------
-- Table structure for `hubungi`
-- ----------------------------
DROP TABLE IF EXISTS `hubungi`;
CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of hubungi
-- ----------------------------

-- ----------------------------
-- Table structure for `kategori`
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES ('14', 'Barang Jadi Etalase Alumunium', 'barang-jadi-etalase-alumunium');
INSERT INTO `kategori` VALUES ('15', 'Bahan Baku Etalase Alumunium', 'bahan-baku-etalase-alumunium');
INSERT INTO `kategori` VALUES ('16', 'Aksesoris Etalase Alumunium', 'aksesoris-etalase-alumunium');

-- ----------------------------
-- Table structure for `kota`
-- ----------------------------
DROP TABLE IF EXISTS `kota`;
CREATE TABLE `kota` (
  `id_kota` int(3) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kota
-- ----------------------------
INSERT INTO `kota` VALUES ('1', 'Jakarta', '13000');
INSERT INTO `kota` VALUES ('2', 'Bandung', '13500');
INSERT INTO `kota` VALUES ('3', 'Semarang', '10000');
INSERT INTO `kota` VALUES ('4', 'Medan', '20000');
INSERT INTO `kota` VALUES ('5', 'Aceh', '25000');
INSERT INTO `kota` VALUES ('6', 'Banjarmasin', '17500');
INSERT INTO `kota` VALUES ('7', 'Balikpapan', '18500');
INSERT INTO `kota` VALUES ('8', 'Samarinda', '19500');
INSERT INTO `kota` VALUES ('9', 'Lainnya', '10000');
INSERT INTO `kota` VALUES ('10', 'Palembang', '23000');
INSERT INTO `kota` VALUES ('11', 'Surabaya', '13000');

-- ----------------------------
-- Table structure for `modul`
-- ----------------------------
DROP TABLE IF EXISTS `modul`;
CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of modul
-- ----------------------------
INSERT INTO `modul` VALUES ('18', 'Produk', '?module=produk', '', '', 'admin', 'Y', '4');
INSERT INTO `modul` VALUES ('42', 'Order', '?module=order', '', '', 'admin', 'Y', '5');
INSERT INTO `modul` VALUES ('10', 'Manajemen Modul', '?module=modul', '', '', 'admin', 'N', '2');
INSERT INTO `modul` VALUES ('31', 'Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', '3');
INSERT INTO `modul` VALUES ('43', 'Profil', '?module=profil', 'perusahaan cv nuansa alumunium adalah perusahaan yang bergerak dibidang penjualan barang-barang alumunium seperti pagar alumunium \r\nperusahaan cv nuansa alumunium adalah perusahaan yang bergerak dibidang \r\npenjualan barang-barang alumunium seperti pagar alumunium \r\nperusahaan cv nuansa alumunium adalah perusahaan yang bergerak dibidang \r\npenjualan barang-barang alumunium seperti pagar alumunium \r\nperusahaan cv nuansa alumunium adalah perusahaan yang bergerak dibidang \r\npenjualan barang-barang alumunium seperti pagar alumunium \r\nperusahaan cv nuansa alumunium adalah perusahaan yang bergerak dibidang \r\npenjualan barang-barang alumunium seperti pagar alumunium \r\nperusahaan cv nuansa alumunium adalah perusahaan yang bergerak dibidang \r\npenjualan barang-barang alumunium seperti pagar alumunium \r\nperusahaan cv nuansa alumunium adalah perusahaan yang bergerak dibidang \r\npenjualan barang-barang alumunium seperti pagar alumunium \r\nperusahaan cv nuansa alumunium adalah perusahaan yang bergerak dibidang \r\npenjualan barang-barang alumunium seperti pagar alumunium \r\n', 'Karaim_sinagog_Ashdod.jpg', 'admin', 'Y', '7');
INSERT INTO `modul` VALUES ('44', 'Buku Tamu', '?module=hubungi', '', '', 'admin', 'Y', '9');
INSERT INTO `modul` VALUES ('45', 'Cara Pembelian', '?module=carabeli', '<ol>\r\n	<li>Klik pada tombol&nbsp;<span style=\"font-weight: bold\">Beli</span> pada produk yang ingin Anda pesan.</li>\r\n	<li>Produk yang Anda pesan akan masuk ke dalam <span style=\"font-weight: bold\">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style=\"font-weight: bold\">Jumlah</span>, kemudian klik tombol <span style=\"font-weight: bold\">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li>\r\n	<li>Jika sudah selesai, klik tombol <span style=\"font-weight: bold\">Selesai Belanja</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li>\r\n	<li>Setelah data pembeli selesai diisikan, klik tombol <span style=\"font-weight: bold\">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordersnya). Dan juga ada total pembayaran serta nomor rekening pembayaran.</li>\r\n	<li>Apabila telah melakukan pembayaran, maka produk/barang akan segera kami kirimkan. <br />\r\n	</li>\r\n</ol>\r\n', 'gedung.jpg', 'admin', 'Y', '8');
INSERT INTO `modul` VALUES ('47', 'Banner', '?module=banner', '', '', 'user', 'N', '10');
INSERT INTO `modul` VALUES ('48', 'Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', '6');
INSERT INTO `modul` VALUES ('49', 'Ganti Password', '?module=password', '', '', 'user', 'Y', '1');
INSERT INTO `modul` VALUES ('53', 'Member', '?module=member', '', '', 'user', 'Y', '12');
INSERT INTO `modul` VALUES ('52', 'Laporan', '?module=laporan', '', '', 'user', 'Y', '11');
INSERT INTO `modul` VALUES ('57', 'Download', '?module=download', '', '', 'user', 'N', '13');

-- ----------------------------
-- Table structure for `mod_ym`
-- ----------------------------
DROP TABLE IF EXISTS `mod_ym`;
CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of mod_ym
-- ----------------------------
INSERT INTO `mod_ym` VALUES ('1', 'ila', 'ila');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kota` int(3) NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('4', 'genta', 'Jl. Tes', '0890787578', 'lukman@bukulokomedia.com', 'Lunas', '2011-04-11', '03:02:55', '2');
INSERT INTO `orders` VALUES ('7', 'Harry Ridwan Ramadan', 'cipacing', '08987962916', 'harryridwanramadan@gmail.com', 'Baru', '2012-05-15', '05:28:51', '5');
INSERT INTO `orders` VALUES ('8', 'ila', 'cipacing ', '089898989', 'ila@gmak.clm', 'Lunas', '2012-07-21', '21:22:31', '2');
INSERT INTO `orders` VALUES ('9', 'harry', 'cipacing ', '089898989', 'hary@gmai.com', 'Lunas', '2012-07-22', '04:48:15', '2');
INSERT INTO `orders` VALUES ('10', 'santi', 'cilenyi', '08987962916', 'santi@gmak.com', 'Baru', '2012-07-22', '05:03:22', '7');
INSERT INTO `orders` VALUES ('11', 'tes', 'tes', '08987962916', 'haary@fm.com', 'Baru', '2012-07-22', '05:04:56', '7');
INSERT INTO `orders` VALUES ('12', 'harry', 'alamat', '454545', 'haary@fm.com', 'Baru', '2012-07-22', '13:05:51', '5');
INSERT INTO `orders` VALUES ('13', 'harry', 'alamat', '343', 'haary@fm.com', 'Baru', '2012-07-22', '13:06:50', '7');
INSERT INTO `orders` VALUES ('14', 'harry', 'alamat', '454545', 'haary@fm.com', 'Baru', '2012-07-22', '13:07:48', '7');
INSERT INTO `orders` VALUES ('17', 'Yolanda', 'cipacing', '2147483647', 'yolanda@gmail.com', 'Baru', '2012-07-22', '14:07:56', '2');
INSERT INTO `orders` VALUES ('16', 'Yolanda', 'cipacing', '2147483647', 'yolanda@gmail.com', 'Baru', '2012-07-22', '14:06:49', '2');
INSERT INTO `orders` VALUES ('18', 'harry', 'cipacing', '2147483647', 'harry@gmail.com', 'Baru', '2012-07-22', '14:09:39', '6');
INSERT INTO `orders` VALUES ('19', 'harry', 'cipacing', '2147483647', 'harry@gmail.com', 'Baru', '2012-07-22', '14:10:57', '6');
INSERT INTO `orders` VALUES ('20', 'admin', 'harry ridwan ramadan', '2147483647', 'harryridwanramadan@gmail.com', 'Lunas', '2013-05-04', '17:32:12', '2');
INSERT INTO `orders` VALUES ('21', 'Yolanda', 'cipacing', '2147483647', 'yolanda@gmail.com', 'Baru', '2013-05-11', '03:16:48', '2');
INSERT INTO `orders` VALUES ('22', 'Yolanda', 'cipacing', '2147483647', 'yolanda@gmail.com', 'Baru', '2013-05-11', '03:50:56', '11');
INSERT INTO `orders` VALUES ('23', 'Yolanda permata dewi', 'cipacing laskdkasldlad', '89898989', 'yolanda@gmail.com', 'Lunas', '2013-05-11', '05:45:22', '2');
INSERT INTO `orders` VALUES ('24', 'irvan', 'cipacing', '2147483647', 'irvan@gmail.com', 'Baru', '2013-05-12', '17:45:35', '2');
INSERT INTO `orders` VALUES ('25', 'irvan', 'cipacing', '2147483647', 'irvan@gmail.com', 'Baru', '2013-05-12', '17:48:27', '2');
INSERT INTO `orders` VALUES ('26', 'irvan', 'cipacing', '2147483647', 'irvan@gmail.com', 'Baru', '2013-05-12', '17:53:01', '2');
INSERT INTO `orders` VALUES ('27', 'irvan', 'cipacing', '2147483647', 'irvan@gmail.com', 'Baru', '2013-05-12', '17:53:43', '2');
INSERT INTO `orders` VALUES ('28', 'irvan', 'cipacing', '2147483647', 'irvan@gmail.com', 'Lunas', '2013-05-12', '17:54:10', '2');
INSERT INTO `orders` VALUES ('29', 'irvan', 'cipacing', '2147483647', 'irvan@gmail.com', 'Lunas', '2013-05-12', '18:07:53', '2');
INSERT INTO `orders` VALUES ('30', 'irvan', 'cipacing', '2147483647', 'irvan@gmail.com', 'Lunas', '2013-05-12', '18:08:50', '2');
INSERT INTO `orders` VALUES ('31', 'subur', 'cipacing', '8989899', 'subur@gmail.com', 'Lunas', '2013-05-20', '14:21:37', '6');
INSERT INTO `orders` VALUES ('32', 'subur', 'cipacing', '8989899', 'subur@gmail.com', 'Lunas', '2013-05-20', '14:22:39', '6');
INSERT INTO `orders` VALUES ('33', 'astri', 'cipacing', '2147483647', 'astrilestari_14@yahoo.co.id', 'Lunas', '2013-05-21', '08:49:52', '2');
INSERT INTO `orders` VALUES ('34', 'ivan', 'rancaekek', '2147483647', 'vanz170391@yahoo.com', 'Lunas', '2013-05-26', '17:57:42', '2');
INSERT INTO `orders` VALUES ('35', 'ivan', 'rancaekek', '2147483647', 'vanz170391@yahoo.com', 'Lunas', '2013-05-27', '05:54:29', '2');
INSERT INTO `orders` VALUES ('36', 'ivan', 'rancaekek', '2147483647', 'vanz170391@yahoo.com', 'Lunas', '2013-05-27', '05:57:12', '2');

-- ----------------------------
-- Table structure for `orders_detail`
-- ----------------------------
DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of orders_detail
-- ----------------------------
INSERT INTO `orders_detail` VALUES ('4', '17', '1');
INSERT INTO `orders_detail` VALUES ('4', '18', '1');
INSERT INTO `orders_detail` VALUES ('7', '21', '1');
INSERT INTO `orders_detail` VALUES ('8', '18', '1');
INSERT INTO `orders_detail` VALUES ('9', '18', '1');
INSERT INTO `orders_detail` VALUES ('9', '22', '1');
INSERT INTO `orders_detail` VALUES ('10', '23', '1');
INSERT INTO `orders_detail` VALUES ('10', '22', '1');
INSERT INTO `orders_detail` VALUES ('11', '22', '1');
INSERT INTO `orders_detail` VALUES ('12', '23', '2');
INSERT INTO `orders_detail` VALUES ('13', '22', '1');
INSERT INTO `orders_detail` VALUES ('14', '18', '1');
INSERT INTO `orders_detail` VALUES ('15', '23', '2');
INSERT INTO `orders_detail` VALUES ('15', '18', '1');
INSERT INTO `orders_detail` VALUES ('17', '18', '1');
INSERT INTO `orders_detail` VALUES ('18', '18', '2');
INSERT INTO `orders_detail` VALUES ('20', '18', '4');
INSERT INTO `orders_detail` VALUES ('21', '24', '1');
INSERT INTO `orders_detail` VALUES ('22', '17', '10');
INSERT INTO `orders_detail` VALUES ('22', '24', '2');
INSERT INTO `orders_detail` VALUES ('23', '24', '1');
INSERT INTO `orders_detail` VALUES ('24', '23', '3');
INSERT INTO `orders_detail` VALUES ('25', '17', '2');
INSERT INTO `orders_detail` VALUES ('26', '23', '1');
INSERT INTO `orders_detail` VALUES ('27', '18', '2');
INSERT INTO `orders_detail` VALUES ('28', '24', '1');
INSERT INTO `orders_detail` VALUES ('29', '24', '1');
INSERT INTO `orders_detail` VALUES ('30', '16', '1');
INSERT INTO `orders_detail` VALUES ('30', '23', '1');
INSERT INTO `orders_detail` VALUES ('31', '23', '1');
INSERT INTO `orders_detail` VALUES ('32', '15', '2');
INSERT INTO `orders_detail` VALUES ('33', '16', '1');
INSERT INTO `orders_detail` VALUES ('34', '31', '2');
INSERT INTO `orders_detail` VALUES ('34', '30', '1');
INSERT INTO `orders_detail` VALUES ('34', '29', '1');
INSERT INTO `orders_detail` VALUES ('35', '44', '1');
INSERT INTO `orders_detail` VALUES ('36', '44', '1');

-- ----------------------------
-- Table structure for `orders_temp`
-- ----------------------------
DROP TABLE IF EXISTS `orders_temp`;
CREATE TABLE `orders_temp` (
  `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL,
  PRIMARY KEY (`id_orders_temp`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of orders_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `pembeli`
-- ----------------------------
DROP TABLE IF EXISTS `pembeli`;
CREATE TABLE `pembeli` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(70) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(70) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_session` varchar(100) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pembeli
-- ----------------------------
INSERT INTO `pembeli` VALUES ('10', 'ivan', 'vanz170391@yahoo.com', 'rancaekek', '2147483647', '12345', '2', '');

-- ----------------------------
-- Table structure for `produk`
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
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
  `diskon` int(5) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES ('26', '14', 'Etalase UK 1m', 'etalase-uk-1m', '', '700000', '5', '50.00', '2013-05-26', '50et-1m.jpg', '1', '0');
INSERT INTO `produk` VALUES ('27', '14', 'Etalase UK 2m', 'etalase-uk-2m', '', '950000', '5', '100.00', '2013-05-26', '74et-2m.jpg', '1', '0');
INSERT INTO `produk` VALUES ('28', '14', 'Etalase HP UK 1m', 'etalase-hp-uk-1m', '', '750000', '5', '50.00', '2013-05-26', '28IMG0294A.jpg', '1', '0');
INSERT INTO `produk` VALUES ('29', '14', 'Etalase Rokok', 'etalase-rokok', '', '250000', '3', '25.00', '2013-05-26', '11IMG0295A.jpg', '2', '0');
INSERT INTO `produk` VALUES ('30', '14', 'Etalase Rak Piring', 'etalase-rak-piring', '', '1200000', '3', '75.00', '2013-05-26', '65IMG0296A.jpg', '2', '0');
INSERT INTO `produk` VALUES ('31', '14', 'Etalase Roda', 'etalase-roda', '', '3500000', '2', '150.00', '2013-05-26', '83IMG0297A.jpg', '3', '0');
INSERT INTO `produk` VALUES ('32', '16', 'Paku Rivet', 'paku-rivet', '', '49000', '7', '1.00', '2013-05-26', '60rivet.jpg', '1', '0');
INSERT INTO `produk` VALUES ('33', '16', 'Skrup', 'skrup', '', '52000', '7', '1.00', '2013-05-26', '89skrup.jpg', '1', '0');
INSERT INTO `produk` VALUES ('34', '16', 'lem kaca', 'lem-kaca', '', '35000', '9', '0.50', '2013-05-26', '52lem kaca.jpg', '1', '0');
INSERT INTO `produk` VALUES ('35', '16', 'Karet', 'karet', '', '35000', '9', '2.00', '2013-05-26', '42IMG0283A.jpg', '1', '0');
INSERT INTO `produk` VALUES ('36', '15', 'Melamin', 'melamin', '', '65000', '12', '40.00', '2013-05-26', '93IMG0284A.jpg', '1', '0');
INSERT INTO `produk` VALUES ('37', '15', 'Spigot', 'spigot', '', '35000', '16', '10.00', '2013-05-26', '7spigot.jpg', '1', '0');
INSERT INTO `produk` VALUES ('38', '15', 'Hologot', 'hologot', '', '59000', '15', '10.00', '2013-05-26', '96hologot.jpg', '1', '0');
INSERT INTO `produk` VALUES ('39', '15', 'Open Back', 'open-back', '', '59000', '12', '10.00', '2013-05-26', '67ob.jpg', '1', '0');
INSERT INTO `produk` VALUES ('40', '15', 'Kaca UK 150 -120', 'kaca-uk-150-120', '', '100000', '14', '20.00', '2013-05-26', '30IMG0288A.jpg', '1', '0');
INSERT INTO `produk` VALUES ('41', '15', 'Holo Segi', 'holo-segi', '', '34000', '13', '10.00', '2013-05-26', '86holo sgi.jpg', '1', '0');
INSERT INTO `produk` VALUES ('42', '15', 'Holo Tatakan', 'holo-tatakan', '', '24500', '15', '10.00', '2013-05-26', '41tatakan.jpg', '1', '0');
INSERT INTO `produk` VALUES ('43', '15', 'U ', 'u-', '', '18000', '16', '10.00', '2013-05-26', '79u.jpg', '1', '0');
INSERT INTO `produk` VALUES ('44', '15', 'Holo Stal Besi', 'holo-stal-besi', '', '15000', '14', '15.00', '2013-05-26', '93bsi.jpg', '3', '0');

-- ----------------------------
-- Table structure for `shoutbox`
-- ----------------------------
DROP TABLE IF EXISTS `shoutbox`;
CREATE TABLE `shoutbox` (
  `id_shoutbox` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `website` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_shoutbox`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of shoutbox
-- ----------------------------
INSERT INTO `shoutbox` VALUES ('12', 'Yolanda', '', 'fe   ;-)', '2012-07-22', '13:44:05', 'Y');
INSERT INTO `shoutbox` VALUES ('9', 'Harry', '', ';-)', '2012-07-22', '12:54:55', 'Y');
INSERT INTO `shoutbox` VALUES ('10', 'Yolanda', '', 'hehehe ;-)', '2012-07-22', '13:42:59', 'Y');
INSERT INTO `shoutbox` VALUES ('11', 'Yolanda', '', 'cos &lt;:D&gt;', '2012-07-22', '13:43:54', 'Y');
INSERT INTO `shoutbox` VALUES ('8', 'Ila', '', 'gimana sih  cara bebelanja disini ', '2012-07-22', '12:54:08', 'Y');
INSERT INTO `shoutbox` VALUES ('13', 'harry', '', 'hiasdasdasd;-D', '2013-05-04', '17:24:57', 'Y');
INSERT INTO `shoutbox` VALUES ('14', 'Yolanda', '', 'wildan kamu lagi apa ?', '2013-05-11', '03:24:29', 'Y');
INSERT INTO `shoutbox` VALUES ('15', 'Yolanda', '', 'adlkadsl', '2013-05-11', '03:24:41', 'Y');
INSERT INTO `shoutbox` VALUES ('16', 'Yolanda', '', 'dono', '2013-05-11', '03:25:16', 'Y');
INSERT INTO `shoutbox` VALUES ('17', 'irvan', '', 'tessss ;-D;-D;-D;-D', '2013-05-12', '17:44:36', 'Y');
INSERT INTO `shoutbox` VALUES ('18', 'ivan', '', ':-(', '2013-05-27', '05:53:29', 'Y');

-- ----------------------------
-- Table structure for `statistik`
-- ----------------------------
DROP TABLE IF EXISTS `statistik`;
CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of statistik
-- ----------------------------
INSERT INTO `statistik` VALUES ('127.0.0.2', '2009-09-11', '1', '1252681630');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-09-11', '17', '1252734209');
INSERT INTO `statistik` VALUES ('127.0.0.3', '2009-09-12', '8', '1252817594');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-10-24', '8', '1256381921');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-10-26', '108', '1256620074');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-10-27', '52', '1256686769');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-10-28', '124', '1256792223');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-10-29', '9', '1256828032');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-10-31', '3', '1257047101');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-01', '85', '1257113554');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-02', '11', '1257207543');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-03', '165', '1257292312');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-04', '59', '1257403499');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-05', '10', '1257433172');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-11', '13', '1258006911');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-12', '10', '1258048069');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-14', '14', '1258222519');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-17', '2', '1258473856');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-19', '16', '1258635469');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-21', '4', '1258863505');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-25', '3', '1259216216');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-26', '1', '1259222467');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-11-30', '11', '1259651841');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-02', '9', '1259746407');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-03', '17', '1259906128');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-10', '69', '1260423794');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-12', '26', '1260560082');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-11', '5', '1260508621');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-13', '8', '1260716786');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-14', '9', '1260772698');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-15', '9', '1260837158');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-16', '7', '1260905627');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-17', '48', '1261026791');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-18', '11', '1261088534');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-22', '3', '1261477278');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-25', '2', '1261686043');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-26', '29', '1261835507');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-27', '7', '1261920445');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-28', '3', '1261965611');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-29', '21', '1262024011');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2009-12-30', '24', '1262146708');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-01-01', '12', '1262286131');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-01-03', '38', '1262529325');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-01-12', '89', '1263264291');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-01-14', '54', '1263482540');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-01-15', '57', '1263506901');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-02-11', '30', '1265831568');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-02-13', '2', '1266032303');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-02-14', '3', '1266115347');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-02-15', '15', '1266195235');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-02-18', '1', '1266499945');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-02-22', '5', '1266856332');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-02-25', '46', '1267103145');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-05-12', '10', '1273654648');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-05-16', '195', '1274026185');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-05-17', '2', '1274029517');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-05-19', '1', '1274279374');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-05-27', '16', '1274967085');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-05-30', '4', '1275192045');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-05-31', '13', '1275271939');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-06-05', '1', '1275676869');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-06-06', '2', '1275842170');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-06-15', '3', '1276572924');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-06-22', '206', '1277221605');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-08-02', '17', '1280754660');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-08-20', '7', '1282285305');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-08-30', '21', '1283185430');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-08-31', '53', '1283207455');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-09-02', '133', '1283402651');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-09-05', '35', '1283702206');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-09-13', '10', '1284370291');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-09-17', '12', '1284662303');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-09-22', '2', '1285091212');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-09-23', '47', '1285254071');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-09-26', '32', '1285512806');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-09-27', '51', '1285532379');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-10-14', '10', '1287074605');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-10-15', '6', '1287150179');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-10-16', '2', '1287170167');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-10-20', '145', '1287636778');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-10-21', '177', '1287721183');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2010-10-22', '63', '1287752692');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2011-04-02', '7', '1301680774');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2011-04-03', '8', '1301801389');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2011-04-05', '16', '1301977471');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2011-04-09', '44', '1302288659');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2011-04-10', '129', '1302370890');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2011-04-11', '34', '1302488765');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2011-04-17', '8', '1302998534');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2011-04-22', '5', '1303479879');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2011-04-23', '36', '1303534207');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2012-05-13', '6', '1336880220');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2012-05-14', '6', '1336971191');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2012-05-15', '164', '1337105308');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2012-05-16', '13', '1337184286');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2012-06-01', '1', '1338512248');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2012-06-12', '1', '1339512925');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2012-07-01', '18', '1341151639');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2012-07-21', '68', '1342906093');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2012-07-22', '573', '1342976430');
INSERT INTO `statistik` VALUES ('::1', '2013-05-04', '34', '1367688951');
INSERT INTO `statistik` VALUES ('::1', '2013-05-11', '36', '1368252682');
