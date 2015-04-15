<?php
	
$username = $_POST['email'];
$pass     = $_POST['password'];

$login=mysql_query("SELECT * FROM pembeli WHERE email='$username' AND password='$pass'");
echo "SELECT * FROM pembeli WHERE email='$username' AND password='$pass'";
$ketemu=mysql_num_rows($login);
$r=mysql_fetch_array($login);

// Apabila username dan password ditemukan
if ($ketemu > 0){
  session_start();
 

  $_SESSION["namauser"]     = $r[nama];
  $_SESSION["emailuser"]  	= $r[email];
  $_SESSION["alamatuser"]   = $r[alamat];
  $_SESSION["phoneuser"]    = $r[phone];
  $_SESSION["id_kotauser"]  = $r[id_kota];
  
 echo"<script>window.location='index.php'</script>";
}
else{
  echo "<center>LOGIN GAGAL! <br> 
        Username atau Password Anda tidak benar.<br>
        ";
  echo "<a href=login.html><b>ULANGI LAGI</b></a></center>";
}	
?>