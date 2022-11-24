

<!DOCTYPE html>
<html lang="en">
<head>

</head>
<body>
    <?php 
    $connect=mysqli_connect("localhost","root","","pigmecafe");
    $sql="SELECT u.firstname,u.lastname,c.name,c.price,c.quantity,(c.price*c.quantity)AS total
    FROM cart c
    INNER JOIN users u ON u.id = c.user_id;";
    $result=mysqli_query($connect,$sql);
    $json_array=array();
    while($rows=mysqli_fetch_assoc($result))
        {

         $json_array[]=$rows;

        }   

        $encode_data= json_encode($json_array,JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
        file_put_contents('data.json',$encode_data);
        //echo json_encode($json_array);

        /*echo'<pre>';
        print_r($json_array);
        echo'</pre>';*/
        header('location: result.php');
    ?>   
</body>
</html>