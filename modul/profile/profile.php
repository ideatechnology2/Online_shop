<?php
  // Data profil mengacu pada id_modul=43
	$profil = mysql_query("SELECT * FROM modul WHERE id_modul='43'");
	$r      = mysql_fetch_array($profil);

  echo "<div class='center_title_bar'>Profil</div>
    	  <div class='prod_box_big'>
        	<div class='top_prod_box_big'></div>
        <div class='center_prod_box_big'>            
                 <div class='product_img_big' style='float:left'>
                 <img src='foto_banner/$r[gambar]' border='0' width='180px' />
            </div>
          <div class='details_big_box' style='margin-left:14px;'>
            <div class='product_title_big'>Tentang Perusahaan</div>
              <div>$r[static_content]</div>
          </div>    
          </div>
            <div class='bottom_prod_box_big'></div>
          </div>";                              
?>