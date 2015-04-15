<?php 
  error_reporting(0);
  session_start();	
  include "config/koneksi.php";

  ?>

<!DOCTYPE HTML>
<html>
<head>
<title>SerbaKuliner | Home ::</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
</head>
<body>
<!-- header -->
<div class="header_bg">
<div class="container">
	<div class="header">
		<div class="logo">
			<a href="index.html"><img src="images/icon_login3.png" /> </a>
		</div>
		<!-- start header menu -->
		<!-- start header menu -->

<!-- content -->
<div class="main_container">
<div class="main">
	<!-- start registration -->
	<div class="registration">
		<div class="registration_left">
		<h2>new supplier? <span> create a SerbaKuliner account </span></h2>
		<!--<a href="https://www.facebook.com/?_rdr"><div class="reg_fb"><img src="web/images/facebook.png" alt=""><i>register using Facebook</i><div class="clearfix"></div></div></a>-->
		<!-- [if IE] 
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
			(function() {
		
			// Create input element for testing
			var inputs = document.createElement('input');
			
			// Create the supports object
			var supports = {};
			
			supports.autofocus   = 'autofocus' in inputs;
			supports.required    = 'required' in inputs;
			supports.placeholder = 'placeholder' in inputs;
		
			// Fallback for autofocus attribute
			if(!supports.autofocus) {
				
			}
			
			// Fallback for required attribute
			if(!supports.required) {
				
			}
		
			// Fallback for placeholder attribute
			if(!supports.placeholder) {
				
			}
			
			// Change text inside send button on submit
			var send = document.getElementById('register-submit');
			if(send) {
				send.onclick = function () {
					this.innerHTML = '...Sending';
				}
			}
		
		})();
		</script>
		 <div class="registration_form">
		 <!-- Form -->
			<form id="registration_form" action="daftar_supplier.php" method="post">
				<div>
					<label>
						<input placeholder="Nama Depan:" type="text" name="nama_depan" tabindex="1" required autofocus>
					</label>
				</div>
				<div>
					<label>
						<input placeholder="Nama Belakang:" type="text" name="nama_belakang" tabindex="2" required autofocus>
					</label>
				</div>
				<div>
						
							<!--array yang digunakan pada ComboBox bulan
								$bln=array(1=>"Januari","Februari","Maret","April","Mei",
								"Juni","July","Agustus","September","Oktober",
								"November","Desember");

							//membuat tanggal 1-31 pada ComboBox
								echo "Tanggal:<select name=tanggal>
								<option value=01 selected>01</option>";
								for($tgl=2; $tgl<=31; $tgl++){
								$tgl_leng=strlen($tgl);
								if ($tgl_leng==1)
								$i="0".$tgl;
								else
								$i=$tgl;
								echo "<option value=$tanggal>$tanggal</option>";}
								echo "</select>";

							//membuat bulan ComboBox
								echo "<select name=bulan>
								<option value=Januari selected>Januari</option>";
								for($bulan=2; $bulan<=12; $bulan++){
								echo "<option value=$bulan>$bln[$bulan]</option>";}
								echo "</select>";

							//Membuat tahun 1900 sampai sekarang pada ComboBox
								$now=date("Y");
								echo "<select name=tahun>
								<option value=1900 selected>1900</option>";
								for($thn=1901; $thn<=$now; $thn++){
								echo "<option value=$thn>$thn</option>";}
								echo "</select>";-->
								
					
							
							<?php
							//array yang digunakan pada combobox bulan
							$bln=array(1=>"Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
							
							//membuat tanggal 1-31 pada combobox
							echo"Tanggal:<select name=tanggal><option value=01 selected>01</option>";
							for($tgl=2; $tgl<=31; $tgl++){
							$tgl_leng=strlen($tgl);
							if ($tgl_leng==1)
							$i="0".$tgl;
							else
							$i=$tgl;
							echo "<option value=$i>$i</option>";}
							echo "</select>";
							
							//membuat bulan combobox
							echo "<select name=bulan>
							<option value=1 selected>Januari</option>";
							for($bulan=2; $bulan<=12; $bulan++){
							echo "<option value=$bulan>$bln[$bulan]</option>";}
							echo "</select>";
							
							//membuat tahun 1900 sampai sekarang
							$now=date("Y");
							echo "<select name=tahun><option value=1900 selected>1900</option>";
							for($thn=1901; $thn<=$now; $thn++){
							echo"<option value=$thn>$thn</option>";}
							echo"</select>";
							
							?>
					
						
							<?php 
							
							//filter pilihan tanggal
							if(((($bulan==4)||($bulan==6)||($bulan==9)||($bulan==11))&&($tanggal==31))||(($bulan==2)&&($tahun%4==0)&&(($tanggal==30)||($tanggal==31)))||(($bulan==2)&&($tahun%4!=0)&&(($tanggal==29)||($tanggal==30)||($tanggal==31)))){
							if((($bulan==4)||($bulan==6)||($bulan==9)||($bulan11))&&(tanggal==31)){
							echo"<table bgcolor='#FFFF99' width='100%'>
							<tr>
								<td>
								$#8226; Pengaturan Februari kabisat.
								</td>
							</tr>
							</table>";
							}
							}
						
		
							?>
						
				</div>
				<div class="sky-form">
					<div class="sky_form1">
						<ul>
						<label> Jenis Kelamin : </label>
							<li><label class="radio left"><input type="radio" name="jenis_kelamin" value="Pria"><i></i>Pria</label></li>
							<li><label class="radio"><input type="radio" name="jenis_kelamin" value="Wanita"><i></i>Wanita</label></li>
							<div class="clearfix"></div>
						</ul>
					</div>
				</div>
				<div>
					<label>
						<input placeholder="Alamat:" type="text" name="alamat" tabindex="2" required autofocus>
					</label>
				</div>
				<div>
				  <label>Provinsi :</label>
                    <select name="provinsi">
                    <option value=0 selected>- Pilih Provinsi -</option>";
                    <?php $tampil=mysql_query("SELECT * FROM provinsi ORDER BY nama_provinsi");?>
                    <?php while($r=mysql_fetch_array($tampil)){ ?>
                    echo "<option value=<?php echo $r[id_provinsi];?>><?php echo $r[nama_provinsi];?></option>";
                    <?php } ?>
                echo "</select> <br>
                <label>Kota : </label>
                <select name="kota_kabupaten">
                <option value=0 selected>- Pilih Kota -</option>";
                <?php $tampil=mysql_query("SELECT * FROM kota_kabupaten ORDER BY nama_kota"); ?>
                <?php while($r=mysql_fetch_array($tampil)){ ?>
                echo "<option value=<?php echo $r[id_kota_kabupaten];?>><?php echo $r[nama_kota];?> </option>";
                    <?php } ?>
                echo "</select> <br>
				</div>
				<div>
					<label>
						<input placeholder="Telepon:" type="text" name="phone" tabindex="2" required autofocus>
					</label>
				</div>
				<div>
					<label>
						<input placeholder="email address:" type="email" name="email" tabindex="3" required>
					</label>
				</div>
				<div>
					<label>
						<input placeholder="password" type="password" name="password" tabindex="4" required>
					</label>
				</div>
				<div>
					<label>
						<input placeholder="keterangan" type="text" name="keterangan" tabindex="4" required>
					</label>
				</div>				
				<div>
					<label>
						<input placeholder="no_bpom" type="int" name="no_bpom" tabindex="4" required>
					</label>
				</div>
				<div>
					<label>
						<input placeholder="pic_supplier" type="text" name="pic_supplier" tabindex="4" required>
					</label>
				</div>
				<!--<div>
					<label>
						<input placeholder="retype password" type="password" tabindex="4" required>
					</label>
				</div>-->	
				<div>
					<input type="submit" value="create an account" id="register-submit">
				</div>															
				
			</form>
			<!-- /Form -->
		</div>
	</div>
	
	<div class="clearfix"></div>
			</div>
	</div>
	<div class="clearfix"></div>
	</div>
	<!-- end registration -->
</div>
</div>

<!-- footer -->
<div class="footer">
 <div class="container">
	<div class="copy">
		<p class="link">&copy; All rights reserved | Design by&nbsp; Swatech Studio Sistem</a></p>
	</div>
 </div>
</div>
</body>
</html>