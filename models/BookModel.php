<?php

namespace app\models;

use app\core\Model;

class BookModel extends Model
{
    public int $id;
    public string $title;
    public float $price;
    public string $author;
    public int $publication_year;

    public string $description;
    public string $image;

    public function writeAttributes(): array
    {
        return ["title", "price", "author", "publication_year", "description", "image", "active"];
    }

    public function readAttributes(): array
    {
        return ["id", "title", "price", "author", "publication_year", "description", "image", "active"];
    }

    public function rules(): array
    {
        return [
            "title" => [self::RULE_REQUIRED],
            "author" => [self::RULE_REQUIRED],
            "price" => [self::RULE_REQUIRED, self::RULE_NUMBER],
            "publication_year" => [self::RULE_REQUIRED],
            "description" => [self::RULE_REQUIRED],
            "image" => [self::RULE_REQUIRED],
            "active" => [self::RULE_BOOL]
        ];
    }

    public function tableName(): string
    {
        return "books";
    }
}