<?php

// this is an endpoint.
require ('vendor/autoload.php');



use RobotStores\DatabaseConnector;
use RobotStores\Hydrators\ProductHydrator;
use RobotStores\Services\PageDisplay;


$db = DatabaseConnector::connect();

$products = ProductHydrator::getProducts($db);




//POST body contents (JSON) get put into this
$json = file_get_contents('php://input');

//once we get the contents we must decode them
$data = json_decode($json, true);



//data is now an associative array
// this will allow us to access it from a superglobal
$_POST = $data;





if (!empty($_POST)) {
    $output = [
        'success' => true,
        'message' => 'Success!',
        'request_data' => $data,
    ];
    http_response_code(201);
    echo json_encode($output);
} else {
    $output = [
        'success' => false,
        'message' => 'It didn\'t work'
    ];
    http_response_code(500);
    echo json_encode($output);
}

