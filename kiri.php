<script language="JavaScript" type="text/javascript">
  function addSmiley(textToAdd){
  document.formshout.pesan.value += textToAdd;
  document.formshout.pesan.focus();
}
</script>


<div class="title_box">Menu Utama</div>    
      <ul class="left_menu">
                <li class='utama'><a href='index.php'>Beranda</a></li>
                <!--<li class='utama'><a href='profil-kami.html'>Tentang Perusahaan</a></li>-->
                <li class='utama'><a href='cara-pembelian.html'>Cara Pembelian</a></li>
                <li class='utama'><a href='keranjang-belanja.html'>Keranjang Belanja</a></li>
                <li class='utama'><a href='hubungi-kami.html'>Buku Tamu</a></li>
            <?php if($_SESSION[namauser]){?>
                <li class='utama'><a href='member.html'>Member</a></li>
				<li class='utama'><a href='logout.html'>Logout</a></li>
			<?php  }else{ ?>
               <li class='utama'><a href="#" id="login">Login</a></li>
			<!--<li class='utama'><a href="#dialog-member" data-toggle="modal">Daftar Member</a></li>-->
				<li class='utama'><a href="registration.php">Daftar Member</a></li>
                <li class='utama'><a href="registration_supplier.php">Daftar Supplier</a></li>
                 <?php } ?>
      </ul>


    <div class="title_box">Kategori</div>    
      <ul class="left_menu">
            <?php
            $kategori=mysql_query("select nama_kategori, kategori.id_kategori, kategori_seo,  
                                  count(produk.id_produk) as jml 
                                  from kategori left join produk 
                                  on produk.id_kategori=kategori.id_kategori 
                                  group by nama_kategori");
            $no=1;
            while($k=mysql_fetch_array($kategori)){
              if(($no % 2)==0){
                echo "<li class='genap'><a href='kategori-$k[id_kategori]-$k[kategori_seo].html'> $k[nama_kategori] ($k[jml])</a></li>";
              }
              else{
                echo "<li class='ganjil'><a href='kategori-$k[id_kategori]-$k[kategori_seo].html'> $k[nama_kategori] ($k[jml])</a></li>";              
              }
              $no++;
            }
            ?>
      </ul>

<!--Modal Daftar Member -->	  
	<script>  
	$("#dialog_member").on('click', function(){
    $.Dialog({
        overlay: true,
        shadow: true,
		width: 800,
		height:800,
        flat: true,
        icon: '<img src="images/icon_daftar.jpg">',
        title: 'Flat window',
        content: '',
        padding: 10,
        onShow: function(_dialog){
            var content = 
			'<form name="form" action="simpan-daftar.html" method="POST" onSubmit=\"return validasi(this)\">'+
			'<form>' +
                '<label>Nama</label>' +
                '<div class="input-control text"><input type="text" name="nama">' +
				'<label>Username</label>' +
                '<div class="input-control text"><input type="text" name="username">' +
                '<button class="btn-clear"></button></div> ' +
                '<label>Password</label>' +
                '<div class="input-control password">' +
                '<input type="password" name="password">' +
                '<button class="btn-reveal"></button></div> ' +
                '<label>Tanggal Lahir</label>' +
                '<div class="input-control text"><input type="text" name="tanggal_lahir">' +
                '<div class="form-actions">' +
				'<label>Jenis Kelamin</label>' +
					'<div class="input-control radio">' +
						'<label>' +
							'<input name="jenis_kelamin" value="Pria" input type="radio" />' +
								'<span class="check"></span>'+
							'Pria' +
						'</label>' +
					'</div>' +
					'<div class="input-control radio">' +
						'<label>' +
							'<input name="jenis_kelamin" value="Wanita" input type="radio" />' +
								'<span class="check"></span>'+
							'Wanita' +  
						'</label>' +
					'</div>' +
				'<label>Alamat Langkap</label>' +
                '<div class="input-control text"><input type="text" name="alamat">' +
				'<label>Telepon / Hp</label>' +
                '<div class="input-control text"><input type="text" name="phone">' +
				'<label>Email</label>' +
                '<div class="input-control text"><input type="text" name="email">' +
				
                '<button class="button primary" input type="submit" value="Proses">Daftar</button> '+
                '<button class="button" type="button" onclick="$.Dialog.close()">Cancel</button> '+
                '</div>'+
            '</form>';
 
            $.Dialog.title("Daftar Member");
            $.Dialog.content(content);
            $.Metro.initInputs();
        }
		
		
    });
});
</script>
<!--Akhir Modal Member-->


<!--Modal Daftar Supplier -->
<script>  
	$("#dialog_supplier").on('click', function(){
    $.Dialog({
        overlay: true,
        shadow: true,
		width: 800,
		height:800,
        flat: true,
        icon: '<img src="images/icon_daftar.jpg">',
        title: 'Flat window',
        content: '',
        padding: 10,
        onShow: function(_dialog){
            var content = 
			'<form name="form" action="simpan-supplier.html" method="POST" onSubmit=\"return validasi(this)\">'+
			'<form>' +
                '<label>Nama</label>' +
                '<div class="input-control text"><input type="text" name="nama">' +
				'<label>Username</label>' +
                '<div class="input-control text"><input type="text" name="username">' +
                '<button class="btn-clear"></button></div> ' +
                '<label>Password</label>' +
                '<div class="input-control password">' +
                '<input type="password" name="password">' +
                '<button class="btn-reveal"></button></div> ' +
                '<label>Tanggal Lahir</label>' +
                '<div class="input-control text"><input type="text" name="tanggal_lahir">' +
                '<div class="form-actions">' +
				'<label>Jenis Kelamin</label>' +
					'<div class="input-control radio">' +
						'<label>' +
							'<input name="jenis_kelamin" value="Pria" input type="radio" />' +
								'<span class="check"></span>'+
							'Pria' +
						'</label>' +
					'</div>' +
					'<div class="input-control radio">' +
						'<label>' +
							'<input name="jenis_kelamin" value="Wanita" input type="radio" />' +
								'<span class="check"></span>'+
							'Wanita' +  
						'</label>' +
					'</div>' +
				'<label>Alamat Langkap</label>' +
                '<div class="input-control text"><input type="text" name="alamat">' +
				'<label>Kode Pos</label>' +
                '<div class="input-control text"><input type="text" name="kode_pos">' +
				'<label>Keterangan</label>' +
					'<div class="input-control radio">' +
						'<label>' +
							'<input name="keterangan" value="Halal" input type="radio" />' +
								'<span class="check"></span>'+
							'Halal' +
						'</label>' +
					'</div>' +
					'<div class="input-control radio">' +
						'<label>' +
							'<input name="keterangan" value="NonHalal" input type="radio" />' +
								'<span class="check"></span>'+
							'NonHalal' +  
						'</label>' +
					'</div>' +
					'<label>Nomor BPOM</label>' +
                '<div class="input-control text"><input type="text" name="no_bpom">' +
                '<button class="button primary" input type="submit" value="Proses">Daftar</button> '+
                '<button class="button" type="button" onclick="$.Dialog.close()">Cancel</button> '+
                '</div>'+
            '</form>';
 
            $.Dialog.title("Daftar Supplier");
            $.Dialog.content(content);
            $.Metro.initInputs();
        }
		
		
    });
});
</script>
<!--Akhir Modal Supplier -->

<!--Modal Login -->
<script>
$("#login").on('click', function(){
    $.Dialog({
        overlay: true,
        shadow: true,
        flat: true,
        icon: '<img src="images/icon_login3.png">',
        title: 'Flat window',
        content: '',
        padding: 10,
        onShow: function(_dialog){
            var content = 
			'<form name=form action=simpan-login.html method=POST onSubmit=\"return validasi(this)\">'+
			'<form>' +
                '<label>Login</label>' +
                '<div class="input-control text"><input type="text" name="login">'+
                '<button class="btn-clear"></button></div> ' +
                '<label>Password</label>' +
                '<div class="input-control password">'+
                '<input type="password" name="password">'+
                '<button class="btn-reveal"></button></div> ' +
                '<div class="input-control checkbox">'+
                '<div class="form-actions">' +
                '<button class="button primary">Login</button> '+
                '<button class="button" type="button" onclick="$.Dialog.close()">Cancel</button> '+
				'<a href="#" id="dialog_member">Daftar Member</a>'+
                '</div>'+
                '</form>';
 
            $.Dialog.title("Member Login");
            $.Dialog.content(content);
            $.Metro.initInputs();
        }
    });
});
</script>
<!--Akhir Modal Login-->