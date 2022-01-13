<?php
function F(&$a, $b){
   $a = $b;
   return 'XSS';
}

$a = 'bbb';
$b = $_GET["p1"];
// it will print the value of $b then it is XSS
// XSS vulnerability
echo $a . F($a,$b);

