<?php 

    session_start();
    unset($_SESSION['user_login']);
    unset($_SESSION['admin_login']);
    
    setcookie(session_name(),'',time() - 36000,);

	session_destroy(); // ทำลาย session
    
    header('location: signin.php');
?>