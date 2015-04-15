<?php
	
$kar1=strstr($_POST[email], "@");
$kar2=strstr($_POST[email], ".");	
if (empty($_POST[nama]) || empty($_POST[username]) || empty($_POST[password]) || empty($_POST[jenis_kelamin]) || empty($_POST[alamat]) || empty($_POST[provinsi]) || empty($_POST[kota_kabupaten]) || empty($_POST[telepon]) || empty($_POST[email]) ){
  echo "Data yang Anda isikan belum lengkap<br />
  	    <a href='selesai-belanja.html'><b>Ulangi Lagi</b>";
}
elseif (!ereg("[a-z|A-Z]","$_POST[nama]")){
  echo "Nama tidak boleh diisi dengan angka atau simbol.<br />
 	      <a href=javascript:history.go(-1)><b>Ulangi Lagi</b></a>";
}
elseif (strlen($kar1)==0 OR strlen($kar2)==0){
  echo "Alamat email Anda tidak valid, mungkin kurang tanda titik (.) atau tanda @.<br />
 	      <a href=javascript:history.go(-1)><b>Ulangi Lagi</b></a>";
}
else{	
$tgl_skrg = date("Ymd");
$jam_skrg = date("H:i:s");
$nama   = $_POST['namapembeli'];
$username = $_POST['username'];
$password = $_POST['password'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$alamat = $_POST['alamat'];
$provinsi = $_POST['provinsi'];
$kota = $_POST['kota_kabupaten'];
$telpon = $_POST['telpon'];
$email = $POST['email'];

mysql_query("update pembeli set 
nama='".$nama."',
username='".$username."',
password='".$password."',
jenis_kelamin='".$jenis_kelamin."',
alamat='".$alamat."',
id_provinsi='".$provinsi['id_provinsi']."',
id_kota='".$_POST['id_kota_kabupaten']."',
phone='".$telpon."',
email='".$_POST['email']."',
where id_user='$_POST[id]' ");
			 
echo "<script>window.location='member.html'</script>";

}	  
?>