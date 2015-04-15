<?php

 echo "<div class='center_title_bar'>Produk Terbaru</div>";
  $sql=mysql_query("SELECT * FROM produk ORDER BY id_produk DESC LIMIT 6");
  while ($r=mysql_fetch_array($sql)){
    
    include "diskon_stok.php";

    echo "<div class='prod_box'>
          <div class='top_prod_box'></div> 
          <div class='center_prod_box'>            
             <div class='product_title'><a href='produk-$r[id_produk]-$r[produk_seo].html'>$r[nama_produk]</a></div>
             <div class='product_img'>
               <a href='foto_produk/$r[gambar]' title='$r[nama_produk]' class='lightbox'>
               <img src='foto_produk/small_$r[gambar]' border='0' title='klik untuk memperbesar gambar' /></a><br />
              </div>
          
            </div>
            
          
          <div class='prod_price'>$divharga</div>
          <div class='bottom_prod_box'></div>
          <div class='prod_details_tab'>
             $tombol            
             <a href='produk-$r[id_produk]-$r[produk_seo].html' class='prod_details'>selengkapnya</a>            
          </div> 
          </div>";
  }
 ?>