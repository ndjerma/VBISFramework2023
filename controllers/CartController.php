<?php

namespace app\controllers;

use app\core\Constant;
use app\core\Controller;

class CartController extends Controller
{
    public function cart(){
        return $this->view("cart", "main", null);
    }

    public function noItemsInCart(){
        return $this->view("noItemsInCart", "main", null);
    }

    public function authorizeRoles(): array
    {
        return [Constant::$korisnik_role];
    }
}