<?php
session_start();
 if (empty($_SESSION['username_admin']) AND empty($_SESSION['passuser_admin'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
$aksi="modul/mod_ongkoskirim/aksi_ongkoskirim.php";
switch($_GET[act]){
  // Tampil Ongkos Kirim
  default:
    echo "<h2>Ongkos Kirim <input style='float:right' type=button value='Tambah Ongkos Kirim' 
          onclick=\"window.location.href='?module=ongkoskirim&act=tambahongkoskirim';\">
         </h2>
          <table class='data display datatable' id='example'>
		  <thead>
          <tr><th>no</th><th>nama kota</th><th>ongkos kirim</th><th>aksi</th></tr>
		  </thead><tbody>"; 
    $tampil=mysql_query("SELECT * FROM kota ORDER BY id_kota DESC");
    $no=1;
    while ($r=mysql_fetch_array($tampil)){
       $ongkos = format_rupiah($r[ongkos_kirim]);
       echo "<tr><td>$no</td>
             <td>$r[nama_kota]</td>
             <td align=left>$ongkos</td>
             <td><a href=?module=ongkoskirim&act=editongkoskirim&id=$r[id_kota]>Edit</a> | 
	               <a href=$aksi?module=ongkoskirim&act=hapus&id=$r[id_kota] onClick=\"return confirm('Apakah yakin akan menghapus data ini?')\">Hapus</a>
             </td></tr>";
      $no++;
    }
    echo "</tbody></table>";
    break;
  
  // Form Tambah Ongkos Kirim
  case "tambahongkoskirim":
    echo "<h2>Tambah Ongkos Kirim</h2>
          <form method=POST action='$aksi?module=ongkoskirim&act=input'>
          <table class='form'>
          <tr><td>Nama Kota</td><td> : <input type=text name='nama_kota'></td></tr>
          <tr><td>Ongkos Kirim</td><td> : <input type=text name='ongkos_kirim' size=7></td></tr>
          <tr><td colspan=2><input type=submit name=submit value=Simpan>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
     break;
  
  // Form Edit Ongkos Kirim
  case "editongkoskirim":
    $edit=mysql_query("SELECT * FROM kota WHERE id_kota='$_GET[id]'");
    $r=mysql_fetch_array($edit);

    echo "<h2>Edit Ongkos Kirim</h2>
          <form method=POST action=$aksi?module=ongkoskirim&act=update>
          <input type=hidden name=id value='$r[id_kota]'>
          <table class='form'>
          <tr><td>Nama Kota</td><td> : <input type=text name='nama_kota' value='$r[nama_kota]'></td></tr>
          <tr><td>Ongkos Kirim</td><td> : <input type=text name='ongkos_kirim' value='$r[ongkos_kirim]' size=7></td></tr>
          <tr><td colspan=2><input type=submit value=Update>
                            <input type=button value=Batal onclick=self.history.back()></td></tr>
          </table></form>";
    break;  
}
}
?>
