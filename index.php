<?php

echo 'hello phpers';

require_once 'src/DatabaseConnector.php';
require_once 'src/Entity/Item.php';
require_once 'src/ProductHydrator.php';

$db = DatabaseConnector::connect();

$allProducts = ProductHydrator::getProducts($db);

$product = $allProducts[0];


echo '<pre>';
var_dump($product->id);
