<?php

require ('vendor/autoload.php');

use RobotStores\DatabaseConnector;
use RobotStores\Hydrators\ProductHydrator;

echo 'hello phpers';

$db = DatabaseConnector::connect();

$allProducts = ProductHydrator::getProducts($db);

$product = $allProducts[0];


echo '<pre>';
var_dump($product->id);
