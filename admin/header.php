

<header class="header">

   <div class="flex">

      <a href="#" class="logo">Pigmecafe</a>

      <nav class="navbar">
         <a href="adminedit.php">add products</a>
         <a href="products.php">view products</a>
         <a href="jsondata.php">view shopping</a>
         <a href="get.html">view user</a>
      </nav>

      <?php
      $select_rows = mysqli_query($conn, "SELECT * FROM `cart`") or die('query failed');
      $select_user = mysqli_query($conn, "SELECT * FROM `users` WHERE id = '$admin_id'") or die('query failed');
         if(mysqli_num_rows($select_user) > 0){
         $fetch_user = mysqli_fetch_assoc($select_user);
      };
      
      $row_count = mysqli_num_rows($select_rows);
      

      ?>
     
      <a href="cart.php" class="cart">cart</a>
      <a  class="cart"><span><?php echo $fetch_user['urole']; ?> <?php echo $fetch_user['firstname']; ?></span> </a>
      <nav class="navbar">
      <a href="http://localhost/ajaxsuccess/logout.php" >Logout</a>
      
         
      </nav>

      


      <div id="menu-btn" class="fas fa-bars"></div>

   </div>
   

</header>


