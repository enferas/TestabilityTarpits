<?php

$arr = array(1,2,3);
echo $arr[4] ?? $arr[0];

$a = 1>2? 4:5;

global $gb;
$gb = 5;

static $st = "static variable";
