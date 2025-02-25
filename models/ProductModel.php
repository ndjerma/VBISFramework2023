<?php

namespace app\models;

use app\core\Model;

class ProductModel extends Model
{
    public string $name;
    public int $price;

    public function writeAttributes(): array
    {
        return ["name", "price", "active"];
    }

    public function readAttributes(): array
    {
        return ["id", "name", "price", "active"];
    }

    public function tableName(): string
    {
        return "products";
    }

    public function rules(): array
    {
        return [];
    }
}