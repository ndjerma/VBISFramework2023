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
        $result = $model->query("SELECT MONTHNAME(created_on) as 'month', sum(total_price) as 'total_price' FROM `orders` group by MONTHNAME(created_on)");

        echo json_encode($model->fetchList($result));
    }
    public function authorizeRoles(): array
    {
        return [Constant::$korisnik_role];
    }
}