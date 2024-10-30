<?php

require ('vendor/autoload.php');

use RobotStores\DatabaseConnector;
use RobotStores\Hydrators\ProductHydrator;

$db = DatabaseConnector::connect();

$product = ProductHydrator::getProducts($db);



foreach ($product as $item) {
    echo "<form method='POST' style='display: inline-block;'>";
    echo "<input type='hidden' name='product_id' value='" . htmlspecialchars($item->id) . "' />";
    echo "<button type='submit' style='all: unset; display: block; height: 200px; width: 100px; cursor: pointer;'>";
    echo "<div class='product' style='height: 100%; width: 100%; overflow: hidden;'>";
    echo "<h1 style='font-size: 14px; margin: 0;'>" . htmlspecialchars($item->title) . "</h1>";
    echo "<p style='font-size: 12px; margin: 0;'>Price: $" . htmlspecialchars($item->price) . "</p>";
    echo "<img src='" . htmlspecialchars($item->image) . "' alt='" . htmlspecialchars($item->title) . "' style='width: 100%; height: auto;' />";
    echo "</div>";
    echo "</button>";
    echo "</form>";


}

?>











