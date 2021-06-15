<?php

namespace app\models;

use app\records\ActiveRecord;

class Item extends ActiveRecord
{
    public function table()
    {
        return 'item';
    }

    public function fields()
    {
        return ['*'];
    }
}