<?php
	session_start();
  
	unset($_SESSION["namauser"]);
	unset($_SESSION["emailuser"]);
	unset($_SESSION["alamatuser"]);
	unset($_SESSION["phoneuser"]);
	unset($_SESSION["id_kotauser"]);
  
   echo"<script>window.location='index.php'</script>";
?>