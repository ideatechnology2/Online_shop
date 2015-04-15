<?php
  session_start();
  unset($_SESSION["namauser_admin"]);
  unset($_SESSION["namalengkap_admin"]);
  unset($_SESSION["passuser_admin"]);
  unset($_SESSION["leveluser_admin"]);
  echo "<script>window.location='index.php'</script>";


?>
