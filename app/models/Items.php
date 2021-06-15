<?php

namespace app\models;

use app\records\ActiveRecord;

class Items extends ActiveRecord
{
    public function table()
    {
        return 'items';
    }

    public function create()
    {
        return [
            'name' => 'string',
            'price' => 'integer',
            'quantity' => 'integer',
            'sum' => 'integer',
            'nds' => 'integer',
            'productType' => 'integer',
            'paymentType' => 'integer',
        ];
    }

    public function fields()
    {
        return ['*'];
    }
}