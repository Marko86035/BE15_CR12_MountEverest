<?php

header("Content-Type:application/json");
require_once("display.php");

function response($status, $status_message, $data)
{
    $response['data'] = $data;
    $json_response = json_encode($response);
    echo $json_response;
}
response(200, "working", $rows);  
?>