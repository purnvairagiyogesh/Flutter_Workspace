<?php

    include('connection.php');

    $email = $_REQUEST['email'];
    $pass = $_REQUEST['password'];

    $sql = "select * from users where email = '$email' and password = '$pass' and identifier = 'Admin'";
    $result = mysqli_query($con, $sql);

    $num = mysqli_num_rows($result);

    if($num > 0)
    {
        $fetch = mysqli_fetch_array($result);
        echo json_encode(['code' => 200]);
    }    
    else 
    {
        echo "0";
    }    

?>