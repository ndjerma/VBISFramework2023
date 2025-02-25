<?php

namespace app\controllers;

use app\core\Constant;
use app\core\Controller;
use app\models\BookModel;


class BookController extends Controller
{
    public function bookList()
    {
        return $this->view("bookList", "main", null);
    }

    public function bookListApi()
    {
        $model = new BookModel();
        echo json_encode($model->list(""));
    }



    public function authorizeRoles(): array
    {
        return [Constant::$korisnik_role];
    }
}