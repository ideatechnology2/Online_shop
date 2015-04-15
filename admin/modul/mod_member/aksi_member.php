<?php
session_start();
if (empty($_SESSION['username_admin']) AND empty($_SESSION['passuser_admin'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus hubungi
if ($module=='member' AND $act=='hapus'){
  mysql_query("DELETE FROM pembeli WHERE id_user='$_GET[id]'");
  header('location:../../media.php?module='.$module);
}
}
?>
