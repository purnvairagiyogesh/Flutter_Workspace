<?php

    include('connection.php');


    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $gender = $_POST['gender'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $pass = $_POST['password'];


    if($name == "" && $surname == "" && $gender == "" && $email == "" && $phone == "" && $pass == "")
    {
        echo '0';
    }
    else 
    {
        $sql = "insert into users(name, surname, gender, email, phone, password, identifier) values('$name', '$surname', '$gender', '$email', '$phone', '$pass', 'user')";
        mysqli_query($con, $sql);
    }
        
?>