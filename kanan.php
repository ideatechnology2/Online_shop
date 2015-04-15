	   <div class="shopping_cart">
        <div class="cart_title">Keranjang belanja</div>
        <div class="cart_details">
           <?php require_once "item.php";?>
        </div>    
        <div class="cart_icon"><img src="images/shoppingcart.png" alt="" title="" width="48" border="0" height="48">
        </div>        
      </div>	

      
	 <!--
	   <div class="title_box">Live Chat</div>  -->
     <div class="border_box">
 <!--
      <?php
      
	 

  echo "
        <br />";
  echo "<iframe src='shoutbox.php' width='170' height='280' border='0'></iframe><br /><br />";
   if($_SESSION[namauser]){
  echo "<table class=shout width=100%>
        <form name=formshout action=simpanshoutbox.php method=POST>
        <input class=shout type=hidden name=nama size=21 value='".$_SESSION["namauser"]."'>
		<tr><td align='left'>Pesan :</td></tr>
        <tr><td align='left'> <textarea class=shout name='pesan' style='width: 180px; height: 35px;'></textarea></td></tr>";
  ?>
        <tr><td colspan=2>
        <a onClick="addSmiley(':-)')"><img src='smiley/1.gif'></a> 
        <a onClick="addSmiley(':-(')"><img src='smiley/2.gif'></a>
        <a onClick="addSmiley(';-)')"><img src='smiley/3.gif'></a>
        <a onClick="addSmiley(';-D')"><img src='smiley/4.gif'></a>
        <a onClick="addSmiley(';;-)')"><img src='smiley/5.gif'></a>
        <a onClick="addSmiley('<:D>')"><img src='smiley/6.gif'></a>
        </td></tr>
  <?php
  
  echo "<tr><td colspan=2><input class=shout type=submit name=submit value=Kirim><input class=shout type=reset name=reset value=Reset></td></tr>
        </form></table><br />";
		
   }

?>
-->
</div>

