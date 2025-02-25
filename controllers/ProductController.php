<?php

namespace app\controllers;

use app\core\Constant;
use app\core\Controller;
use app\models\ProductModel;

class ProductController extends Controller
{
    public function create()
    {
        $model = new ProductModel();
        $model->mapData($this->request->all());
        $model->create();exit;
    }

    public function list(): array
    {
        $model = new ProductModel();
        var_dump($model->list("")); exit;
    }

    public function one(): array
    {
        $model = new ProductModel();
        $model->mapData($model->one(""));
        echo "<pre>";
        var_dump($model); exit;
    }

    public function authorizeRoles(): array
    {
        return [Constant::$administrator_role];
    }
}