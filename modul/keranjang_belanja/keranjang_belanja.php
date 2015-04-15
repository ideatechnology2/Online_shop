<?php
 // Tampilkan produk-produk yang telah dimasukkan ke keranjang belanja
	$sid = session_id();
	$sql = mysql_query("SELECT * FROM orders_temp, produk 
			                WHERE id_session='$sid' AND orders_temp.id_produk=produk.id_produk");
  $ketemu=mysql_num_rows($sql);
  if($ketemu < 1){
    echo "<script>window.alert('Keranjang Belanjanya Masih Kosong');
        window.location=('index.php')</script>";
    }
  else{  
  
    echo "<div class='center_title_bar'>Keranjang Belanja</div>
          <div class='prod_box_big'>
        	<div class='top_prod_box_big'></div>
        <div class='center_prod_box_big'>            
          <div class='details_big_cari'>
              <div>
          <form method=post action=aksi.php?module=keranjang&act=update>
          <table border=0 cellpadding=3 align=center>
          <tbody>
          <tr bgcolor=#6da6b1><th>No</th><th>Produk</th><th>Nama Produk</th><th>Qty</th>
          <th>Harga</th><th>Sub Total</th><th>Hapus</th></tr>";  
  
  $no=1;
  while($r=mysql_fetch_array($sql)){
    $disc        = ($r[diskon]/100)*$r[harga];
    $hargadisc   = number_format(($r[harga]-$disc),0,",",".");

    $subtotal    = ($r[harga]-$disc) * $r[jumlah];
    $total       = $total + $subtotal;  
    $subtotal_rp = format_rupiah($subtotal);
    $total_rp    = format_rupiah($total);
    $harga       = format_rupiah($r[harga]);
    
    echo "<tr bgcolor=#dad0d0><td>$no</td><input type=hidden name=id[$no] value=$r[id_orders_temp]>
              <td align=center><br><img src='foto_produk/small_$r[gambar]'></td>
              <td>$r[nama_produk]</td>
              <td><input type=text name='jml[$no]' value=$r[jumlah] size=1 onkeypress=\"return harusangka(event)\"></td>
              <td>$hargadisc</td>
              <td>$subtotal_rp</td>
              <td align=center><a href='aksi.php?module=keranjang&act=hapus&id=$r[id_orders_temp]'>
              <img src=images/kali.png border=0 title=Hapus></a></td>
          </tr>";
    $no++; 
  } 
  echo "<tr><td colspan=6 align=right><br><b>Total</b>:</td><td colspan=2><br>Rp. <b>$total_rp</b></td></tr>
        <tr><td colspan=2><br /><a href=javascript:history.go(-1)><img src=images/lanjutkan.jpg border=0></a><br /></td>
        <td colspan=2><br /><input type=image src='images/update.jpg' border=0><br /></td>
        <td colspan=4 align=right><br /><a href=simpan-transaksi.html><img src=images/selesai.jpg  border=0></a><br /></td></tr>
        </tbody></table></form><br />
         *) Apabila Anda mengubah jumlah (Qty), jangan lupa tekan tombol <b>Update Keranjang</b>.<br />  
        **) Total harga diatas belum termasuk ongkos kirim yang akan dihitung saat <b>Selesai Belanja</b>.
        </div>
        
          </div>    
          </div>
            <div class='bottom_prod_box_big'></div>
          </div>";
  }
?>