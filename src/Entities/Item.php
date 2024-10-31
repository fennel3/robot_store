<?php

namespace RobotStores\Entities;

use JsonSerializable;

class Item implements JsonSerializable
{
    public string $id;
    public string $title;
    public string $price;
    public string $image;
    public string $category_id;
    public string $category;
    public string $character_id;
    public string $character;
    public string $description;
    public string | null $image2;
    public string | null $image3;

    public function jsonSerialize(): mixed
    {

        return [
            'id' => $this->id,
            'description' => $this->description,
            'category' => $this->category,
            '<br>'

        ];


    }
}

