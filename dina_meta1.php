<?php
$sql = mysql_query("select nama_produk from produk where id_produk='$_GET[id]'");
$j   = mysql_fetch_array($sql);

if (ISSET($_GET[id])){
		echo "$j[nama_produk]";
}
else{
		echo "SerbaKuliner adalah penyedia layananan iklan makanan dan minuman";
}
?>
