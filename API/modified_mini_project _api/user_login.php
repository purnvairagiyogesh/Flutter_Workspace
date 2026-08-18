<?php

    include('connection.php');


    $email = $_REQUEST['email'];
    $pass = $_REQUEST['password'];


    $sql = "select * from mini_users where email = '$email' and password = '$pass' and identifier = 'user'";
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