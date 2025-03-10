<?php

namespace app\models;

use app\core\Model;

class OrderItemModel extends Model
{
    public string $title;
    public string $author;
    public int $price;
    public string $image;
    public string $description;
    public int $quantity;
    public string $created_on;
    public int $order_id;
    public string $created_by;

    public function writeAttributes(): array
    {
        return ["title", "author", "price", "image", "description", "quantity", "created_on", "order_id", "created_by"];
    }

    public function readAttributes(): array
    {
        return ["id", "title", "price", "image", "description", "quantity", "created_on", "order_id", "created_by"];
    }

    public function rules(): array
    {
        return [];
    }

    public function tableName(): string
    {
        return "order_items";
    }
}