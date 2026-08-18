<?php


//importing dbDetails file
include 'connection.php';


//this is our upload folder
$upload_path = 'Product_images/';


//Getting the server ip
$server_ip = gethostbyname(gethostname());


//creating the upload url
$upload_url = 'https://'.$_SERVER['SERVER_NAME'] . "/MiniProject/" . $upload_path;


//getting product details from the request
$product_id = $_POST["product_id"];
$product_name = $_POST["product_name"];
$product_price = $_POST["product_price"];
$final_discounted_price = $_POST["final_discounted_price"];
$features = $_POST["features"];
$ratings = $_POST["ratings"];
$quantity = $_POST["quantity"];


//getting file info from the request
$fileinfo = pathinfo($_FILES["product_image"]["name"]);


//getting the file extension
$extension = $fileinfo["extension"];


$random = 'image_' . rand(1000,9999);


//file url to store in the database
$file_url = $upload_url . $random . '.' . $extension;


//file path to upload in the server
$file_path = $upload_path . $random . '.'. $extension;


//saving the file
move_uploaded_file($_FILES["product_image"]["tmp_name"],$file_path);


//checking product details
if($product_id==""&&$product_name==""&&$product_price==""&&$final_discounted_price==""&&$features==""&&$ratings==""&&$quantity=="")
{
    echo '0';
}
else
{
    $sql = "update mini_products set product_name='$product_name',product_price='$product_price',product_image='$file_url',final_discounted_price='$final_discounted_price',features='$features',ratings='$ratings',quantity='$quantity' where product_id='$product_id'";

    mysqli_query($con,$sql);
}


//closing the connection
mysqli_close($con);


?>