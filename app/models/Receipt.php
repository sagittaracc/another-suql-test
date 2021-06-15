<?php

namespace app\models;

use app\records\ActiveRecord;

class Receipt extends ActiveRecord
{
    public function table()
    {
        return 'receipt';
    }

    public function create()
    {
        return [
            'id' => 'integer',
            'ofdId' => 'string',
            'receiveDate' => 'string',
            'subtype' => 'string',
            'address' => 'string',
        ];
    }

    public function fields()
    {
        return [];
    }
}