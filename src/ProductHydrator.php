<?php

require_once 'Entity/Item.php';

class ProductHydrator
{
    public static function getProducts(PDO $db): array
    {
        $query = $db->prepare("SELECT * FROM `products`");
        $query->execute();
        $query->setFetchMode(PDO::FETCH_CLASS, Item::class);
        return $query->fetchAll();
    }
}
//    public static function getProduct(PDO $db, int $id):array
//    {
//        $personQuery = $db->prepare('SELECT * FROM `posts` WHERE `id` = :id;');
//        $personQuery->execute(['id' => $id]);
//
//        $personQuery->setFetchMode(PDO::FETCH_CLASS, Item::class);
//        $person = $personQuery->fetch();
//        return $person;
//    }
//