<?php
  echo "<div class='center_title_bar'>Produk Terbaru</div>";

  // Tentukan berapa data yang akan ditampilkan per halaman (paging)
  $p      = new Paging2;
  $batas  = 9;
  $posisi = $p->cariPosisi($batas);

  // Tampilkan semua produk
  $sql=mysql_query("SELECT * FROM produk ORDER BY id_produk DESC LIMIT $posisi,$batas");

  while ($r=mysql_fetch_array($sql)){
    $harga = format_rupiah($r[harga]);
    echo "<div class='prod_box'>
          <div class='top_prod_box'></div> 
          <div class='center_prod_box'>            
             <div class='product_title'><a href='produk-$r[id_produk]-$r[produk_seo].html'>$r[nama_produk]</a></div>
             <div class='product_img'>
               <a href='produk-$r[id_produk]-$r[produk_seo].html'>
               <img src='foto_produk/small_$r[gambar]' border='0' height='110'></a>
             </div>
                           
          </div>
          <div class='prod_price'><span class='price'>Rp. $harga <br />(stok: $r[stok])</span></div>          
          <div class='bottom_prod_box'></div>
          <div class='prod_details_tab'>
             <a href='aksi.php?module=keranjang&act=tambah&id=$r[id_produk]' class='prod_cart'>beli</a>            
             <a href='produk-$r[id_produk]-$r[produk_seo].html' class='prod_details'>selengkapnya</a>            
          </div> 
          </div>";
  }  
    
  $jmldata     = mysql_num_rows(mysql_query("SELECT * FROM produk"));
  $jmlhalaman  = $p->jumlahHalaman($jmldata, $batas);
  $linkHalaman = $p->navHalaman($_GET[halproduk], $jmlhalaman);

  echo "<div class='center_title_bar' style='font-size:13px;'>Halaman : $linkHalaman </div>";
?>