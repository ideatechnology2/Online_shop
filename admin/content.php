<?php
include "../config/koneksi.php";
include "../config/library.php";
include "../config/fungsi_indotgl.php";
include "../config/fungsi_combobox.php";
include "../config/class_paging.php";
include "../config/fungsi_rupiah.php";

// Bagian Home
if ($_GET[module]=='home'){
  if ($_SESSION['leveluser_admin']=='admin'){
  echo "<h2>Selamat Datang</h2>
          <p>Hai <b>$_SESSION[namalengkap_admin]</b>, selamat datang di halaman Administrator.<br> Silahkan klik menu pilihan yang berada 
          di sebelah kiri untuk mengelola content website. </p>
          <p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
          <p align=right>Login : $hari_ini, ";
  echo tgl_indo(date("Y m d")); 
  echo " | "; 
  echo date("H:i:s");
  echo " WIB</p>";
  }
}

// Bagian Modul
elseif ($_GET[module]=='modul'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_modul/modul.php";
  }
}

// Bagian Kategori
elseif ($_GET[module]=='kategori'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_kategori/kategori.php";
  }
}

// Bagian Produk
elseif ($_GET[module]=='produk'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_produk/produk.php";
  }
}

elseif ($_GET[module]=='komisi'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_komisi/komisi.php";
  }
}

// Bagian member
elseif ($_GET[module]=='member'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_member/member.php";
  }
}
// Bagian supplier
elseif ($_GET[module]=='supplier'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_supplier/supplier.php";
  }
}
// Bagian Order
elseif ($_GET[module]=='order'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_order/order.php";
  }
}

// Bagian Profil
elseif ($_GET[module]=='profil'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_profil/profil.php";
  }
}

// Bagian Order
elseif ($_GET[module]=='hubungi'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_hubungi/hubungi.php";
  }
}

// Bagian Cara Pembelian
elseif ($_GET[module]=='carabeli'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_carabeli/carabeli.php";
  }
}

// Bagian Banner
elseif ($_GET[module]=='banner'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_banner/banner.php";
  }
}

// Bagian Kota/Ongkos Kirim
elseif ($_GET[module]=='ongkoskirim'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_ongkoskirim/ongkoskirim.php";
  }
}

// Bagian Password
elseif ($_GET[module]=='password'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_password/password.php";
  }
}

// Bagian Laporan
elseif ($_GET[module]=='laporan'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_laporan/laporan.php";
  }
}

// Bagian YM
elseif ($_GET[module]=='ym'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_ym/ym.php";
  }
}

// Bagian Download
elseif ($_GET[module]=='download'){
  if ($_SESSION['leveluser_admin']=='admin'){
    include "modul/mod_download/download.php";
  }
}

//Bagian kurir
elseif ($_GET[module]=='kurir'){
	if ($_SESSION['leveluser_admin']=='admin'){
		include "modul/mod_kurir/kurir.php";
	}
}

// Apabila modul tidak ditemukan
else{
  echo "<p><b>MODUL BELUM ADA ATAU BELUM LENGKAP</b></p>";
}
?>
