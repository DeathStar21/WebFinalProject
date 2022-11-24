<?php

@include 'config.php';
session_start();
$admin_id = $_SESSION['admin_login'];


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>View shopping</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

   <script>
function showUser(str) {
  if (str == "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  } else {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("txtHint").innerHTML = this.responseText;
      }
    };
    xmlhttp.open("GET","getuser.php?q="+str,true);
    xmlhttp.send();
  }
}
</script>

</head>
<body>

<?php include 'header.php'; ?>
<form>
<select name="users" onchange="showUser(this.value)">
  <option value="">prakrit:</option>
  <option value="1">prakritz</option>
 
  </select>
</form>
<br>

<div class="container">

<section class="shopping-cart">

   <h1 class="heading">View shopping</h1>

   <table>

      <thead>
        
         <th>firstname</th>
         <th>name</th>
         <th>price</th>
         <th>quantity</th>
         <th>total price</th>
      </thead>

      <tbody>
      <?php 
  
      
      
      
      ?>

      </tbody>

   </table>

 

</section>

   
<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>