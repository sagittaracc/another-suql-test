<?php

$types = [
    'integer' => 'INT(10) NOT NULL',
    'double' => 'BIGINT(20) NOT NULL',
    'string' => "VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci'",
];

$json = file_get_contents('data/e2.txt');

$json = json_decode($json, true);
readObjectData($json, 'receipt.csv', ['content']);
readObjectData($json['content'], 'content.csv', ['items']);
readArrayData($json['content']['items'], 'items.csv');

readObjectStructure($json, 'receipt', ['content']);
readObjectStructure($json['content'], 'content', ['items']);
readArrayStructure($json['content']['items'], 'items');

function readArrayData($json, $file)
{
    foreach ($json as $line) {
        $values = implode(';', array_values($line));
        shell_exec("echo $values >> $file");
    }
}

function readObjectData($json, $file, $except = [])
{
    foreach ($except as $item) {
        unset($json[$item]);
    }

    $keys = implode(';', array_keys($json));
    $values = implode(';', array_values($json));
    shell_exec("echo $keys >> $file");
    shell_exec("echo $values >> $file");
}

function readArrayStructure($json, $table)
{
    readObjectStructure($json[0], $table);
}

function readObjectStructure($json, $table, $except = [])
{
    global $types;
    
    $file = "$table-structure.txt";
    shell_exec("echo CREATE TABLE `$table` ( >> $file");
    foreach ($json as $key => $value) {
        if (in_array($key, $except)) continue;

        $line = "    `$key` " . $types[gettype($value)];
        shell_exec("echo $line >> $file");
    }
    shell_exec("echo ) >> $file");
    shell_exec("echo COLLATE='utf8mb4_general_ci' >> $file");
    shell_exec("echo ENGINE=InnoDB >> $file");
}