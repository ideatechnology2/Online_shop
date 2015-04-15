<script language="javascript">
function validasi(form){
  if (form.nama.value == ""){
    alert("Anda belum mengisikan Nama.");
    form.nama.focus();
    return (false);
  }    
 if (form.password.value == ""){
    alert("Anda belum mengisikan Password.");
    form.password.focus();
    return (false);
  }
 
  if (form.alamat.value == ""){
    alert("Anda belum mengisikan Alamat.");
    form.alamat.focus();
    return (false);
  }
  if (form.telpon.value == ""){
    alert("Anda belum mengisikan Telpon.");
    form.telpon.focus();
    return (false);
  }
  if (form.email.value == ""){
    alert("Anda belum mengisikan Email.");
    form.email.focus();
    return (false);
  }
  if (form.kota.value == 0){
    alert("Anda belum mengisikan Kota.");
    form.kota.focus();
    return (false);
  }
  if (form.kode.value == ""){
    alert("Anda belum mengisikan Kode.");
    form.kode.focus();
    return (false);
  }
  return (true);
}

function harusangka(jumlah){
  var karakter = (jumlah.which) ? jumlah.which : event.keyCode
  if (karakter > 31 && (karakter < 48 || karakter > 57))
    return false;

  return true;
}
</script>

<?php
// Halaman utama (Home)
if (@$_GET[module]=='home'){
include "modul/home/home.php" ;
}


// Modul detail produk
else if (@$_GET[module]=='detailproduk'){
include "modul/produk/detail_produk.php";
}

// Modul produk per kategori
else if (@$_GET[module]=='detailkategori'){
include "modul/produk/produk_kategori.php";
}

// Menu utama di header

// Modul profil
elseif ($_GET[module]=='profilkami'){
include "modul/profile/profile.php";
}


// Modul cara pembelian
elseif ($_GET[module]=='carabeli'){
include "modul/cara_pembelian/cara_pembelian.php";	
}


// Modul semua produk
elseif ($_GET[module]=='semuaproduk'){
include "modul/semua_produk/semua_produk.php";	
}


// Modul keranjang belanja
elseif ($_GET[module]=='keranjangbelanja'){
include "modul/keranjang_belanja/keranjang_belanja.php";
}

// Modul hubungi kami
elseif ($_GET[module]=='hubungikami'){
include "modul/hubungi_kami/hubungi_kami.php";	
}

//modul daftar
elseif($_GET[module]=='daftar'){
include "modul/daftar/daftar.php";	
}

//modul supplier

elseif($_GET[module]=='supplier'){
include "modul/supplier/supplier.php";	
}

//modul login
elseif($_GET[module]=='login'){
include "modul/login/login.php";
}


// Modul hubungi aksi
elseif ($_GET[module]=='hubungiaksi'){
include  "modul/hubungi_kami/aksi_hubungi.php";	
}


// Modul hasil pencarian produk 
elseif ($_GET['module']=='hasilcari'){
include "modul/produk/pencarian_produk.php";
}

/* Modul download katalog
elseif ($_GET['module']=='downloadkatalog'){
  echo "<div class='center_title_bar'>Download Katalog</div>";
  // Tampilkan daftar katalog download
 	$sql = mysql_query("SELECT * FROM download ORDER BY id_download DESC");		 

  echo "<br /><br /><ul>";   
   while($d=mysql_fetch_array($sql)){
      echo "<li><a href='downlot.php?file=$d[nama_file]'>$d[judul]</a></li>";
	 }
  echo "</ul><br />";	
}
*/

// Modul selesai belanja
elseif ($_GET[module]=='selesaibelanja'){
include "modul/keranjang_belanja/selesai_belanja.php";
}    

//Modul member
elseif($_GET[module]=='member'){
include "modul/member/member.php";
}

//Modul Simpan Member
elseif($_GET[module]=='simpanmember'){
include "modul/member/simpan_member.php";
}

//Modul Logout
elseif($_GET[module]=='logout'){
include "modul/logout/logout.php";
}

//Modul Simpan Login
elseif($_GET[module]=='simpanlogin'){
include "modul/login/simpan_login.php";	
}

//Modul Simpan Daftar
elseif($_GET[module]=='simpandaftar'){
include "modul/daftar/simpan_daftar.php";	
}

// Modul simpan transaksi
elseif ($_GET[module]=='simpantransaksi'){
include "modul/transaksi/simpan_transaksi.php";
}
?>