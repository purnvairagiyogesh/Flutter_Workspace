<?php


    include('connection.php');


    //this is our upload folder
    $upload_path = 'user_images/';

    //creating the upload url
    $upload_url = 'https://'.$_SERVER['SERVER_NAME'] . "/MiniProject/" . $upload_path;


    $id = $_POST['id'];
    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $gender = $_POST['gender'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $pass = $_POST['password'];


    //getting admin photo information
    $fileinfo1 = pathinfo($_FILES["user_photo"]["name"]);

    //getting admin photo extension
    $extension1 = $fileinfo1["extension"];

    //random name for admin photo
    $random1 = 'admin_' . rand(1000,9999);

    //admin photo url
    $admin_photo_url = $upload_url . $random1 . '.' . $extension1;

    //admin photo path
    $admin_photo_path = $upload_path . $random1 . '.' . $extension1;


    //saving admin photo
    move_uploaded_file(
        $_FILES["user_photo"]["tmp_name"],
        $admin_photo_path
    );


    if($name == "" && $surname == "" && $gender == "" && $email == "" && $phone == "" && $pass == "" && $id == "")
    {
        echo '0';
    }
    else 
    {
        $sql = "update mini_users set 
        name = '$name',
        surname = '$surname',
        gender = '$gender',
        email = '$email',
        phone = '$phone',
        password = '$pass',
        user_photo = '$admin_photo_url',
        identifier = 'Admin'
        where id = '$id'";


        mysqli_query($con, $sql);
        echo '1';   
    }
        

?>