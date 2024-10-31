<?php

require ('vendor/autoload.php');


use RobotStores\DatabaseConnector;
use RobotStores\Hydrators\ProductHydrator;
use RobotStores\Services\PageDisplay;


$db = DatabaseConnector::connect();

$product = ProductHydrator::getProducts($db);



foreach ($product as $item) {

    PageDisplay::pageDisplayor($item);


}

if (isset($_POST['product_id'])) {
    echo $_POST['product_id'];
} else {
    echo 'no data here';
}






?>











