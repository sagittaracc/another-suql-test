<?php

use app\models\Receipt;
use suql\db\Container;

require 'vendor/autoload.php';

// Connect to the database
Container::create(require __DIR__ . '/app/config/db.php');

// Fetch data from the database
$data = Receipt::all()->getContent()->getItems()->getItem()->getDiscounts()->fetchAll();

echo "<pre>";
print_r($data);
echo "</pre>";