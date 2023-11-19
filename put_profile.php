<?php

require "config.php";

if ($_SERVER['REQUEST_METHOD'] == "PUT") {
    // Assuming the JSON payload is sent in the request body
    $json_data = file_get_contents("php://input");

    // Debugging: Output the raw JSON data
    file_put_contents("debug.json", $json_data);

    $data = json_decode($json_data, true);

    // Debugging: Output the result of json_decode
    file_put_contents("debug_decoded.json", json_encode($data));

    if ($data === null) {
        $response['value'] = 2;
        $response['message'] = "Oops, Invalid JSON data.";
        echo json_encode($response);
        exit; // Exit the script if JSON decoding fails
    }

    $response = array();

    $id_user = isset($data['id_user']) ? $data['id_user'] : null;

    if ($id_user == null) {
        $response['value'] = 2;
        $response['message'] = "Oops, 'id_user' is missing in the JSON data.";
        echo json_encode($response);
        exit; // Exit the script if 'id_user' is missing
    }

    $name = isset($data['name']) ? $data['name'] : '';
    $email = isset($data['email']) ? $data['email'] : '';
    $phone = isset($data['phone']) ? $data['phone'] : '';
    $address = isset($data['address']) ? $data['address'] : '';

    // Perform necessary validation on the input data if needed

    $query_update_user = mysqli_query($connection, "UPDATE user SET name='$name', email='$email', phone='$phone', address='$address' WHERE id_user = '$id_user'");

    if ($query_update_user) {
        $response['value'] = 1;
        $response['message'] = "Yeay, Profile update is successful.";
        echo json_encode($response);
    } else {
        $response['value'] = 2;
        $response['message'] = "Oops, Profile update failed";
        echo json_encode($response);
    }
}
?>
