<?php
  // Data cara pembelian mengacu pada id_modul=45
	$profil = mysql_query("SELECT * FROM modul WHERE id_modul='45'");
	$r      = mysql_fetch_array($profil);

  echo "<div class='center_title_bar'>Cara Pembelian</div>
    	  <div class='prod_box_big'>
        	<div class='top_prod_box_big'></div>
        <div class='center_prod_box_big'>            
                 <!-- <div class='product_img_big'>
                 <img src='foto_banner/$r[gambar]' border='0' />
            </div> -->
          <div class='details_big_box'>
            <div class='product_title_big'>Prosedur Pembelian di SerbaKuliner</div>
              <div>$r[static_content]</div>
          </div>    
          </div>
            <div class='bottom_prod_box_big'></div>
          </div>";                              
?>