<?php

// this is an endpoint.
require ('vendor/autoload.php');


use RobotStores\DatabaseConnector;
use RobotStores\Hydrators\ProductHydrator;
use RobotStores\Services\PageDisplay;


$db = DatabaseConnector::connect();

$product = ProductHydrator::getProducts($db);

//POST body contents (JSON) get put into this
//$json = file_get_contents('php://input');
//once we get the contents we must decode them
//$data = json_decode($json, true);

//data is now an associative array
// this will allow us to access it from a superglobal
//$_POST = $data;

// now we can put the $data in the DB if we w


header('Content-Type: application/json');

echo json_encode($product);


