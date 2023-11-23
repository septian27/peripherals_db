<?php  

    require 'config.php';

    $response = array();
    $id_user = $_GET['id_user'];
    $cek_user = mysqli_query($connection, "SELECT * FROM user WHERE status ='1'");

    while ($row_user = mysqli_fetch_array($cek_user)) {
        # code...
        $key['id_user'] = $row_user['id_user'];
        $key['email'] = $row_user['email'];
        $key['email'] = $row_user['email'];
        $key['phone'] = $row_user['phone'];
        $key['address'] = $row_user['address'];
        $key['status'] = $row_user['status'];
        $key['created_at'] = $row_user['created_at'];


        array_push($response, $key);
    }
echo json_encode($response);
