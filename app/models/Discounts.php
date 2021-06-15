<?php

namespace app\models;

use app\records\ActiveRecord;

class Discounts extends ActiveRecord
{
    public function table()
    {
        return 'discounts';
    }

    public function fields()
    {
        return [];
    }
}