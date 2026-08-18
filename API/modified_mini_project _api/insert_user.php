<?php 
 
    include('connection.php'); 
 
    //this is our upload folder
    $upload_path = 'images/';

    //creating the upload url
    $upload_url = 'https://'.$_SERVER['SERVER_NAME'] . "/Mini Projct API/" . $upload_path;


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

    //user photo url to store in database
    $user_photo_url = $upload_url . $random1 . '.' . $extension1;

    //user photo path to upload in server
    $user_photo_path = $upload_path . $random1 . '.' . $extension1;


    //getting adharcard photo information
    $fileinfo2 = pathinfo($_FILES["user_adharcard"]["name"]);

    //getting adharcard photo extension
    $extension2 = $fileinfo2["extension"];

    //random name for adharcard photo
    $random2 = 'adhar_' . rand(1000,9999);

    //adharcard photo url to store in database
    $user_adharcard_url = $upload_url . $random2 . '.' . $extension2;

    //adharcard photo path to upload in server
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


    if($name == "" && $surname == "" && $gender == "" && $email == "" && $phone == "" && $pass == "") 
    { 
        echo '0'; 
    } 
    else  
    { 
        $sql = "insert into mini_users
        (
            name,
            surname,
            gender,
            email,
            phone,
            password,
            identifier,
            user_photo,
            user_adharcard
        ) 
        values
        (
            '$name',
            '$surname',
            '$gender',
            '$email',
            '$phone',
            '$pass',
            'user',
            '$user_photo_url',
            '$user_adharcard_url'
        )"; 
        
        mysqli_query($con, $sql); 
    } 
         
?>