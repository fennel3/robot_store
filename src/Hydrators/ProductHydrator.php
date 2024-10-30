<?php


namespace RobotStores\Hydrators;

use PDO;
use RobotStores\Entities\Item;

class ProductHydrator {


    public static function getProducts(PDO $db): array
    {
        $query = $db->prepare("SELECT * FROM `products`");
        $query->execute();
        $query->setFetchMode(PDO::FETCH_CLASS, Item::class);
        return $query->fetchAll();
    }
}



