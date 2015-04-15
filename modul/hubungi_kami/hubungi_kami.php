<?php

  echo "<div class='center_title_bar'>Buku Tamu</div>
    	  <div class='prod_box_big'>
        	<div class='top_prod_box_big'></div>
        <div class='center_prod_box_big'>            
               <!--  <div class='product_img_big'>
                 <img src='foto_banner/gedung.jpg' border='0' />
            </div> -->
          <div class='details_big_box'>
         
            
              
        <table width=100% style='border: 1pt dashed #0000CC;padding: 10px;'>
        <form action=hubungi-aksi.html method=POST>
        <tr><td>Nama</td><td> : <input type=text name=nama size=30></td></tr>
        <tr><td>Email</td><td> : <input type=text name=email size=30></td></tr>
        <tr><td>Subjek</td><td> : <input type=text name=subjek size=40></td></tr>
        <tr><td valign=top>Pesan</td><td> <textarea name=pesan  style='width: 270px; height: 100px;'></textarea></td></tr>
		<tr>
        </td><td colspan=2><input type=submit name=submit value=Kirim></td></tr>
        </form></table><br /><br />
          </div>   
		  ";
		  echo "
		  <div class='details_big_box'>
               
			   ";
		
		$query=mysql_query("select * from hubungi order by id_hubungi desc");	   
		while($r=mysql_fetch_array($query)){
			   echo"
        <table width='530px' style='border:1px solid #666666;margin:10px 0px 10px 0px;'>
        <tr style='background:#808080'><td style='padding:10px;color:#fff'>".$r['nama']." <span style='float:right;color:yellow'>".tgl_indo($r['tanggal'])."</span> </td></tr>
        <tr><td colspan='2' style='padding:10px;'>
		Pertanyaan : <br />
		".$r['pesan']."<br /><br />
		Jawaban : <br />
		".$r['jawaban']."
		</td></tr>
        </table>
		";
		}
		
		echo"
          </div>      
		  
          </div>
		  
            <div class='bottom_prod_box_big'></div>
          </div>";                              
?>