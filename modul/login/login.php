<?php
	
  echo "<div class='center_title_bar'>Login Member</div>";

    	  echo "<div class='prod_box_big'>
        	<div class='top_prod_box_big'></div>
        <div class='center_prod_box_big'>            
          <div class='details_big_cari'>
              <div>
      <form name=form action=simpan-login.html method=POST onSubmit=\"return validasi(this)\">
      <table>
      <tr><td>Email</td><td> : <input type=text name='email' size=30></td></tr>
	  <tr><td>Password</td><td> : <input type=password name=password size=30></td></tr>
   
      <tr><td colspan=2><input type=submit value=Login></td></tr>
      </table>
              </div>
          </div>    
          </div>
            <div class='bottom_prod_box_big'></div>
          </div>";   
	
?>