<?php
$kar1=strstr($_POST[email], "@");
$kar2=strstr($_POST[email], ".");	
if (empty($_POST[nama])){
  echo "Data yang Anda isikan belum lengkap<br />
  	    <a href=javascript:history.go(-1)><b>Ulangi Lagi</b>";
}
elseif (strlen($kar1)==0 OR strlen($kar2)==0){
  echo "Alamat email Anda tidak valid, mungkin kurang tanda titik (.) atau tanda @.<br />
 	      <a href=javascript:history.go(-1)><b>Ulangi Lagi</b></a>";
}
else{	
$tgl_skrg = date("Ymd");
$jam_skrg = date("H:i:s");
$nama   = $_POST['nama'];
$username = $_POST['username'];
$password = $_POST['password'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$tanggal_lahir = $_POST['tanggal_lahir'];
$alamat = $_POST['alamat'];
//$provinsi = $_POST['provinsi'];
//$kota = $_POST['kota_kabupaten'];
$kode_pos = $_POST['kode_pos'];
$keterangan = $_POST['keterangan'];
$no_bpom = $_POST['no_bpom'];
$telepon = $_POST['phone'];
$email = $_POST['email'];


$cek=mysql_num_rows(mysql_query("select * from supplier where email='".$_POST["email"]."'"));
if($cek > 0){
echo "<script type='text/javascript'>
alert('Email ini sudah ada didalam database.');
window.location='javascript:history.go(-1)';
</script>";
}else{
mysql_query("INSERT INTO supplier(nama, username, password, jenis_kelamin, tanggal_lahir, alamat, kode_pos, keterangan, no_bpom, phone, email, tipe)
			VALUES('$nama','$username','$password','$jenis_kelamin','$tanggal_lahir','$alamat','$kode_pos', '$keterangan', 'no_bpom', '$telepon','$email',2)");
			
echo "Anda Telah berhasil menjadi member silahkan untuk <a href='login.html'>login</a>";
}
}
	
?>