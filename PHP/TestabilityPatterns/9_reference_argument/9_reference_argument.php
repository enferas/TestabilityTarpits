<?php
function foo(&$var,$input){
    $var = $input;
}

$b = $_GET["p1"];
// foo will copy the $b in $a
foo($a,$b);
// XSS, will print the value of $b
echo $a;