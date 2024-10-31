<?php

namespace RobotStores\Services;
use RobotStores\Entities\Item;

class PageDisplay
{

    public static function pageDisplayor(Item $item){

        echo "<form method='POST' action='index.php' style='display: inline-block;'>";
        echo "<input type='hidden' name='product_id' value='$item->id' " . htmlspecialchars($item->id) . "' </input>";
        echo "<button type='submit' style='all: unset; display: block; height: 200px; width: 100px; cursor: pointer;'>";
        echo "<div class='product' style='height: 100%; width: 100%; overflow: hidden;'>";
        echo "<h1 style='font-size: 14px; margin: 0;'>" . htmlspecialchars($item->title) . "</h1>";
        echo "<p style='font-size: 12px; margin: 0;'>Price: $" . htmlspecialchars($item->price) . "</p>";
        echo "<img src='" . htmlspecialchars($item->image) . "' alt='" . htmlspecialchars($item->title) . "' style='width: 100%; height: auto;' </image>";
        echo "</div>";
        echo "</button>";
        echo "</form>";






}
}