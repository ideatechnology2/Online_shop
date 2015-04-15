<?php

   echo "
   <h2>Laporan  <input style='float:right' type=button value='Laporan Hari Ini' 
          onclick=\"window.location.href='modul/mod_laporan/pdf_toko_sekarang.php';\">
</h2>
         
          <form method=POST action='modul/mod_laporan/pdf_toko.php'>
          <table class='form'>
          <tr><td colspan=2><b>Laporan Per Periode</b></td></tr>
          <tr><td>Dari Tanggal</td><td> : ";        
          combotgl(1,31,'tgl_mulai',$tgl_skrg);
          combonamabln(1,12,'bln_mulai',$bln_sekarang);
          combothn(2000,$thn_sekarang,'thn_mulai',$thn_sekarang);

    echo "</td></tr>
          <tr><td>s/d Tanggal</td><td> : ";
          combotgl(1,31,'tgl_selesai',$tgl_skrg);
          combonamabln(1,12,'bln_selesai',$bln_sekarang);
          combothn(2000,$thn_sekarang,'thn_selesai',$thn_sekarang);

    echo "</td></tr>
          <tr><td colspan=2><input type=submit value=Proses></td></tr>
          </table>
          </form>";
    
?>
