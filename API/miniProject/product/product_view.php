<?php

    include('connection.php');


    $order = $_REQUEST['order'];

    if($order == "asc")
    {
        $sql = "select * from products order by product_price asc";
    }
    else if($order == "desc")
    {
        $sql = "select * from products order by product_price desc";
    }
    else
    {
        $sql = "select * from products";
    }

    $request = mysqli_query($con, $sql);
    $response = array();


    while($row = mysqli_fetch_array($request)){
        $data["product_id"] = $row["product_id"];
        $data["product_name"] = $row["product_name"];
        $data["product_price"] = $row["product_price"];
        $data["product_image"] = $row["product_image"];
        $data["final_discounted_price"] = $row["final_discounted_price"];
        $data["features"] = $row["features"];
        $data["ratings"] = $row["ratings"]; 
        
        array_push($response, $data);


    }

    echo json_encode($response) . "\n";
    mysqli_close($con);


?>