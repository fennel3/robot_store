<?php


class DatabaseConnector
{
    public static function connect()
    {
        $db = new PDO(
            'mysql:host=DB;dbname=robot_stores',
            'root',
            'password'
        );
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        return $db;
    }
}