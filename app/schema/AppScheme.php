<?php

namespace app\schema;

use suql\core\Scheme;

class AppScheme extends Scheme
{
    function __construct()
    {
        $this->addTableList([
            'receipt' => 'r',
            'content' => 'c',
            'items' => 'i',
            'item' => 'item',
            'discounts' => 'd'
        ]);

        $this->rel('{{r}}', '{{c}}', '{{r}}.id = {{c}}.receipt_id');
        $this->rel('{{c}}', '{{i}}', '{{c}}.id = {{i}}.content_id');
        $this->rel('{{i}}', '{{item}}', '{{i}}.name = {{item}}.id');
        $this->rel('{{d}}', '{{i}}', '{{d}}.item_id = {{i}}.name');
    }
}