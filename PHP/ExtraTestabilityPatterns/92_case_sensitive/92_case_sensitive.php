<?php

Class myclass{
    public $b = "safe";
    funcTion F($x){
        echo $x;
    }
 }

$obj1 = new Myclass();
$x = $_GET["p1"];
// XSS vulnerability
$obj1->f($x);