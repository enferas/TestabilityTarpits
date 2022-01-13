<?php

function F($a){
    static $b = 'abc';
    echo $b;
    $b = $a;
}

$a = $_GET["p1"];
F($a);
F('abc');