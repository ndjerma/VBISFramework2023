<?php

namespace app\controllers;

use app\core\Constant;
use app\core\Controller;
use app\models\ReportModel;

class ReportController extends Controller
{
    public function totalPricePerMonth()
    {
        $model = new ReportModel();
        $model->mapData($this->request->all());
        $model->getTotalPricePerMonth();
    }

    public function totalPricePerTitle()
    {
        $model = new ReportModel();
        $model->mapData($this->request->all());
        $model->getTotalPricePerTitle();
    }

    public function authorizeRoles(): array
    {
        return [Constant::$korisnik_role];
    }
}