<?php
$a = $_GET["p1"];
$foo = 'Bob';
$bar = &$foo;
$bar = $a;
// $foo will have the value of $a (XSS)
echo $foo;