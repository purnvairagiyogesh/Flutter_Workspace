<?php


    include('connection.php');


    $sql = "select * from users where identifier = 'user'";
    $request = mysqli_query($con, $sql);
    $response = array();


    while($row = mysqli_fetch_array($request)){
        $data["id"] = $row["id"];
        $data["name"] = $row["name"];
        $data["surname"] = $row["surname"];
        $data["gender"] = $row["gender"];
        $data["email"] = $row["email"];
        $data["phone"] = $row["phone"];
        $data["password"] = $row["password"];
        $data["identifier"] = $row["identifier"]; 
        
        array_push($response, $data);


    }


    echo json_encode($response) . "\n";
    mysqli_close($con);


?>