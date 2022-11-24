<?php
$pdo = new PDO("mysql:host=localhost; dbname=pigmecafe; charset=utf8", "root", "");

$stmt=$pdo->prepare("SELECT * FROM users WHERE firstname = ?");
$stmt->bindParam(1,$_GET["firstname"]);
$stmt->execute();
$row=$stmt->fetch();
if(!empty($row)):
?>
<div class="container">

<section class="shopping-cart">
<table>

<thead>
  
   <th>firstname</th>
   <th>lastname</th>
   <th>email</th>
   <th>create at</th>
</thead>

<tbody>


<tr>
<td><?php echo $row["firstname"]?></td>
<td><?php echo $row["lastname"]?></td>    
<td><?php echo $row["email"]?></td>
<td><?php echo $row["create_at"]?></td>  
<?php else:?>
    <div><h3>Username not Found</h3></div>
<?php endif;?>
</tr>
</tbody>

   </table>

 

</section>

