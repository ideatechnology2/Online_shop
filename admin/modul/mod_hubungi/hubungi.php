<?php
$aksi="modul/mod_hubungi/aksi_hubungi.php";
switch($_GET[act]){
  // Tampil Hubungi Kami
  default:
    echo "<h2>Buku Tamu</h2>
          <table class='data display datatable' id='example'>
          <thead>
          <tr><th>no</th><th>nama</th><th>email</th><th>subjek</th><th>tanggal</th><th>aksi</th></tr>
		  </thead>";
		  echo "<tbody>";

    $p      = new Paging;
    $batas  = 10;
    $posisi = $p->cariPosisi($batas);

    $tampil=mysql_query("SELECT * FROM hubungi ORDER BY id_hubungi DESC");

    $no = $posisi+1;
    while ($r=mysql_fetch_array($tampil)){
      $tgl=tgl_indo($r[tanggal]);
	  
	  if($r["status"]=="N"):
	  $style="style='background-color:#ccc'";
	  else:
	  $style="";
	  endif;
	  
      echo "<tr $style><td>$no</td>
                <td>$r[nama]</td>
                <td><a href=?module=hubungi&act=balasemail&id=$r[id_hubungi]>$r[email]</a></td>
                <td>$r[subjek]</td>
                <td>$tgl</a></td>
                <td><a href=$aksi?module=hubungi&act=hapus&id=$r[id_hubungi] onClick=\"return confirm('Apakah yakin akan menghapus data ini?')\">Hapus</a>
                </td></tr>";
    $no++;
    }
	echo "</tbody>";
    echo "</table>";
    
    break;

  case "balasemail":
    $tampil = mysql_query("SELECT * FROM hubungi WHERE id_hubungi='$_GET[id]'");
    $r      = mysql_fetch_array($tampil);

    echo "<h2>Jawaban Buku Tamu</h2>
          <form method=POST action='?module=hubungi&act=kirimemail'>
          <div style='border:1px solid #ccc;padding:10px;width:550px'>
		  Email : $r[email] <br />
		  Nama : $r[nama] <br />
		  Subjek: $r[subjek]<br />
		  Pesan : $r[pesan]<br />
		  </div>
		  <br /><br /> 
		  <input type='hidden' name='id' value='$r[id_hubungi]'>
		  <textarea name='pesan' style='width: 600px; height: 350px;'>
		  $r[jawaban]
		  </textarea>
		  
		  <br />
		  <input type=submit value=Kirim>
                            <input type=button value=Batal onclick=self.history.back()>
          </form>";
     break;
    
  case "kirimemail":
  mysql_query("update hubungi set jawaban='".strip_tags($_POST["pesan"])."',status='Y' where id_hubungi='".$_POST["id"]."'");
    echo "<h2>Status Pesan</h2>
          <p>Pesan Jawaban telah berhasil dikirim</p>
          <p>[ <a href=javascript:history.go(-2)>Kembali</a> ]</p>";	 		  
    break;  
}
?>
