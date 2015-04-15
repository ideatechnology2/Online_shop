 <form name='form' action='simpan-daftar.html' method='POST' onSubmit=\"return validasi(this)\">
      <table>
      <tr><td>Nama</td><td> : <input type=text name='nama' size=30></td></tr>
	  <tr><td>Username</td><td> : <input type=text name='username' size=30></td></tr>
	  <tr><td>Password</td><td> : <input type=password name='password' size=30></td></tr>
	  <tr><td>Tanggal Lahir</td><td> : <input type=tanggal_lahir name='tanggal_lahir' size=30></td></tr>
	  <tr><td>Jenis Kelamin</td><td> :
	  <select name='jenis_kelamin' id='status'>
	  	<option>Pilihan</option>
	  	<option value='P'>Pria</option>
		<option value='W'>Wanita</option></select></tr>
      <tr><td>Alamat Lengkap</td><td> : <textarea name='alamat' size=80></textarea></td></tr>
	  <tr><td>Provinsi</td><td> :
	  <select name='provinsi'>
      <option value=0 selected>- Pilih Provinsi -</option>";
      $tampil=mysql_query("SELECT * FROM provinsi ORDER BY nama_provinsi");
      while($r=mysql_fetch_array($tampil)){
         echo "<option value=$r[id_provinsi]>$r[nama_provinsi]</option>";
      }
	  echo "</select> <br>
	  <tr><td>Kota</td><td> :
	  <select name='kota_kabupaten'>
	  <option value=0 selected>- Pilih Kota -</option>";
      $tampil=mysql_query("SELECT * FROM kota_kabupaten ORDER BY nama_kota");
      while($r=mysql_fetch_array($tampil)){
         echo "<option value=$r[id_kota]>$r[nama_kota]</option>";
      }
	  echo "</select> <br>
	  
      <tr><td>Telpon/HP</td><td> : <input type=text name='phone'></td></tr>
      <tr><td>Email</td><td> : <input type=text name='email'></td></tr>
           <tr><td colspan=2><input type=submit value=Proses></td></tr>
		   
      </table>