<?php
  // Tampilkan detail produk berdasarkan produk yang dipilih
	$detail=mysql_query("SELECT * FROM produk,kategori    
                      WHERE kategori.id_kategori=produk.id_kategori 
                      AND id_produk='$_GET[id]'");
	$r = mysql_fetch_array($detail);
  
  include "diskon_stok.php";
  
  echo "<div class='center_title_bar'>Kategori: <a href='kategori-$r[id_kategori]-$r[kategori_seo].html'>$r[nama_kategori]</a></div>
    	  <div class='prod_box_big' style='text-align:center'>
        	<div class='top_prod_box_big'></div>
        <div class='center_prod_box_big'>            
                 <div class='product_img_big' style='text-align:center'>
                 <a href='#'><img src='foto_produk/$r[gambar]' border='0' /></a>
            <div class='prod_price'>$divharga</div>
            <p align=center>(stok: $r[stok])</p>
            $tombol
            </div>
         
          </div>
            
			
			<div class='bottom_prod_box_big'></div>
			 <div class='center_prod_box_big'>       
			<div class='details_big_box'>
            <div class='prod_box_big'>
			<div class='product_title_big'>$r[nama_produk]</div>
              <div>$r[deskripsi]</div></div></div>
          </div>   
          </div>
		   
		  
		  ";

//produk lainnya
$sql=mysql_query("SELECT * FROM produk ORDER BY rand() LIMIT 3");
      
  echo "<div class='center_title_bar'>Produk Lainnya</div>";
      
  while ($r=mysql_fetch_array($sql)){

  include "diskon_stok.php";

    echo "<div class='prod_box'>
          <div class='top_prod_box'></div> 
          <div class='center_prod_box'>            
             <div class='product_title'><a href='produk-$r[id_produk]-$r[produk_seo].html'>$r[nama_produk]</a></div>
             <div class='product_img'>
               <a href='produk-$r[id_produk]-$r[produk_seo].html'>
               <img src='foto_produk/small_$r[gambar]' border='0' height='110'></a>
             </div>
            
          </div><div class='prod_price'>$divharga</div>
          <div class='bottom_prod_box'></div>
          <div class='prod_details_tab'>
             $tombol            
             <a href='produk-$r[id_produk]-$r[produk_seo].html' class='prod_details'>selengkapnya</a>            
          </div> 
          </div>";
  }                           
?>