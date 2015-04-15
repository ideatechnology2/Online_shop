<?php
$aksi="modul/mod_member/aksi_member.php";
switch($_GET[act]){
  // Tampil Hubungi Kami
  default:
    echo "<h2>Member</h2>
           <table class='data display datatable' id='example'>
          <thead><tr>
		  <th>no</th>
		  <th>nama</th>
		  <th>username</th>
		  <th>password</th>
		  <th>jenis_kelamin</th>
		  <th>tanggal_lahir</th>
		  <th>alamat</th>
		  <th>provinsi</th>
		  <th>kota_kabupaten</th>
		  <th>telpon</th>
		  <th>email</th>
		  <th>aksi</th></tr>
		  </thead><tbody>
		  ";

   

    $tampil=mysql_query("SELECT * FROM pembeli,kota_kabupaten where pembeli.id_kota_kabupaten=kota.id_kota_kabupaten ORDER BY id_user DESC");

    $no = $posisi+1;
    while ($r=mysql_fetch_array($tampil)){
      $tgl=tgl_indo($r[tanggal]);
      echo "<tr><td>$no</td>
                <td>$r[nama]</td>
				<td>$r[username]</td>
				<td>$r[password]</td>
				<td>$r[jenis_kelamin]</td>
				<td>$r[tanggal_lahir]</td>
				<td>$r[alamat]</td>
				<td>$r[provinsi]</td>
				<td>$r[kota_kabupaten]</td>
				<td>$r[phone]</td>
                <td>$r[email]</td>
                <td><a href=$aksi?module=member&act=hapus&id=$r[id_user] onClick=\"return confirm('Apakah yakin akan menghapus data ini?')\">Hapus</a>
                </td></tr>";
    $no++;
    }
    echo "</tbody></table>";
    
    break;

  
}
?>
