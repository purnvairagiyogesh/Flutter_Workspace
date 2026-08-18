<?php


    include('connection.php');


    //this is our upload folder
    $upload_path = 'images/';

    //creating the upload url
    $upload_url = 'https://'.$_SERVER['SERVER_NAME'] . "/Mini Projct API/" . $upload_path;


    $id = $_POST['id'];
    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $gender = $_POST['gender'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $pass = $_POST['password'];


    //getting user photo information
    $fileinfo1 = pathinfo($_FILES["user_photo"]["name"]);

    //getting user photo extension
    $extension1 = $fileinfo1["extension"];

    //random name for user photo
    $random1 = 'user_' . rand(1000,9999);

    //user photo url
    $user_photo_url = $upload_url . $random1 . '.' . $extension1;

    //user photo path
    $user_photo_path = $upload_path . $random1 . '.' . $extension1;


    //getting adharcard photo information
    $fileinfo2 = pathinfo($_FILES["user_adharcard"]["name"]);

    //getting adharcard photo extension
    $extension2 = $fileinfo2["extension"];

    //random name for adharcard photo
    $random2 = 'adhar_' . rand(1000,9999);

    //adharcard photo url
    $user_adharcard_url = $upload_url . $random2 . '.' . $extension2;

    //adharcard photo path
    $user_adharcard_path = $upload_path . $random2 . '.' . $extension2;


    //saving user photo
    move_uploaded_file(
        $_FILES["user_photo"]["tmp_name"],
        $user_photo_path
    );


    //saving adharcard photo
    move_uploaded_file(
        $_FILES["user_adharcard"]["tmp_name"],
        $user_adharcard_path
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
        user_photo = '$user_photo_url',
        user_adharcard = '$user_adharcard_url'
        where id = '$id'";


        mysqli_query($con, $sql);
        echo '1';   
    }
        

?>