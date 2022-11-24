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

</head>
<body>

<?php include 'header.php'; ?>

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
         
         $jsondata = file_get_contents("data.json");
         $json=json_decode($jsondata);
   ?>
         <tr>
         <td><?php foreach($json as $page){ echo $page->firstname."<br>";}?></td>
         <td><?php foreach($json as $page){ echo $page->name."<br>";}?></td>
         <td><?php foreach($json as $page){ echo $page->price."<br>";}?></td>
         <td><?php foreach($json as $page){ echo $page->quantity."<br>";}?></td>
         <td><?php foreach($json as $page){ echo $page->total."<br>";}?></td>
</tr>
      </tbody>

   </table>

 

</section>

   
<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>