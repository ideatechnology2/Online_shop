<?php 
  error_reporting(0);
  session_start();	
  include "config/koneksi.php";
  include "config/fungsi_indotgl.php";
  include "config/class_paging.php";
  include "config/fungsi_combobox.php";
  include "config/library.php";
  include "config/fungsi_autolink.php";
  include "config/fungsi_rupiah.php";
?>

<!DOCTYPE HTML>
<html>
<head>
<title>SerbaKuliner | Home ::</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- start slider -->
<link rel="stylesheet" href="css/fwslider.css" media="all">
<script src="js/jquery-ui.min.js"></script>
<script src="js/fwslider.js"></script>
<script src="js/menu_jquery.js"></script>
<!--end slider -->

<title><?php include "dina_titel.php"; ?></title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="index, follow">
<meta name="description" content="<?php include "dina_meta1.php"; ?>">
<meta name="keywords" content="<?php include "dina_meta2.php"; ?>">
<meta http-equiv="Copyright" content="SerbaKuliner">
<meta name="author" content="Swatech S3">
<meta http-equiv="imagetoolbar" content="no">
<meta name="language" content="Indonesia">
<meta name="revisit-after" content="7">
<meta name="webcrawlers" content="all">
<meta name="rating" content="general">
<meta name="spiders" content="all">

<link rel="shortcut icon" href="cart.png" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="style.css" rel='stylesheet' type='text/css' />
<!--<link href="css/style2.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- start slider -->
<link rel="stylesheet" href="css/fwslider.css" media="all">
<script src="js/jquery-ui.min.js"></script>
<script src="js/fwslider.js"></script>
<script src="js/menu_jquery.js"></script>
<!--end slider -->

</head>

<body>
<!--<body style="background-color: #BF3E11;">-->
<div class="kotak_nav">
 <nav class="navbar navbar-default navbar-fixed-top">
 <div class="main_frame_kategori">
	<div class="frame_kategori">
		<div class="box_kategori">
			<select name='nama_kategori' style="float:right; width:50%; height:25px;">
				<option value=0 selected>- Pilih Lokasi -</option>";
			<?php
				$tampil=mysql_query("SELECT * FROM kota ORDER BY nama_kota");
				while($r=mysql_fetch_array($tampil)){
				echo "<option value=$r[id_kota]>$r[nama_kota]</option>";
			}?>
		echo "</select> <br>
	  
      	</div>
		</div>
<div class="frame_kategori2">
        <div class="form-group">
		<form method="POST" action="hasil-pencarian.html">
		<input class="search_input" name="kata" type="text" placeholder="Cari disini..." required>
        <input type="submit" value="cari" class="search_bt">
		</div>
<!--<div class="box_srch">
    	<div class="top_search">
        	
        	<div class="search_text"></div>
        	
            <input class="search_input" name="kata" type="text" placeholder="Cari disini..." required>
            <input type="submit" value="Cari" class="search_bt">
          </form>
          </td></tr>
           </div>        
           </div>-->
		</div>
		</div>
</nav> 
</div>
<div class="main_container">

  <div id="main_content"> 
  		<div class="crumb_navigation">
    		Anda sedang berada di : <?php include "breadcrumb.php"; ?>
  		</div>        
  <div class="left_content"> 
      <?php include "kiri.php";?>         
  </div>
   
   <div class="center_content">
      <?php include "tengah.php";?>           
   </div>
   
   <div class="right_content">
      <?php include "kanan.php";?>                
   </div><!-- end of right content -->   
            
   </div><!-- end of main content-->

   <div class="footer">
        <div class="left_footer">
         <br />copyright © 2015 - SerbaKuliner - DEVELOPER BY SWATECH S3 2015. All Rights Reserved.
        </div>
        
        <div class="right_footer">
        <a href="index.php">Home</a>
        <!-- <a href="profil-kami.html">About</a> -->
        <a href="cara-pembelian.html">Cara pembelian</a>
        <a href="semua-produk.html">Semua produk</a>
        <a href="hubungi-kami.html">Hubungi kami</a>
        </div>   
   </div>  
</body>
</html>
