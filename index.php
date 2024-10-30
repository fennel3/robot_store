<?php

require ('vendor/autoload.php');

use RobotStores\DatabaseConnector;
use RobotStores\Hydrators\ProductHydrator;

$db = DatabaseConnector::connect();

$product = ProductHydrator::getProducts($db);

foreach ($product as $item){
    echo "<div class='product'>";
    echo "<h1>" . htmlspecialchars($item->title) . "</h1>";
    echo "<p>Price" . htmlspecialchars($item->price) . "</p>";
    echo "<img src='" . htmlspecialchars($item->image) . "' alt='" . htmlspecialchars($item->title) . "' />";
    echo "</div>";

}

?>











