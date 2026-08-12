<?php


    include('connection.php');


    $id = $_POST['id'];
    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $gender = $_POST['gender'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $pass = $_POST['password'];


    if($name == "" && $surname == "" && $gender == "" && $email == "" && $phone == "" && $pass == "" && $id == "")
    {
        echo '0';
    }
    else 
    {
        $sql = "update users set name = '$name', surname = '$surname', gender = '$gender', email = '$email', phone = '$phone', password = '$pass' where id = '$id'";


        mysqli_query($con, $sql);
        echo '1';   
    }
        

?>