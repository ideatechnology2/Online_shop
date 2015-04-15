<html>
<head>
<title>Admin SerbaKuliner</title>
<script language="javascript">
function validasi(form){
  if (form.username.value == ""){
    alert("Anda Belum Mengisikan UserName.");
    form.username.focus();
    return (false);
  }
     
  if (form.password.value == ""){
    alert("Anda Belum Mengisikan Password.");
    form.password.focus();
    return (false);
  }
  return (true);
}
</script>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body OnLoad="document.login.username.focus();" style="background-color:#BF3E11;">
<div id="main_container">
<div id="banner"><img src="../images/banner4.jpg"></div>
	<div id="header">
  		<div id="content">
		<h2>Silakan Login Administrator</h2>
    <img src="images/login-welcome.gif" width="97" height="105" hspace="10" align="left">

<form name="login" action="cek_login.php" method="POST" onSubmit="return validasi(this)">
<table>
<tr><td>Username</td><td> : <input type="text" name="username"></td></tr>
<tr><td>Password</td><td> : <input type="password" name="password"></td></tr>
<tr><td colspan="2"><input type="submit" value="Login"></td></tr>
</table>
</form>
  </div>
	
</div>
</div>
        <div id="center_footer">
         <br />copyright © 2015 - SerbaKuliner - DEVELOPER BY SWATECH S3 2015. All Rights Reserved. 
        </div>
        

</body>
</html>
