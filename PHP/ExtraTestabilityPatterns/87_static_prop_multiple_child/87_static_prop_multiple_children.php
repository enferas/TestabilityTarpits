<?php
class father{
    static $b = 'safe';
}
class child1 extends father{}
class child2 extends father{}

$b = $_GET["p1"];
$C1 = new child1();
$C2 = new child2();
$C2::$b = $b;
echo $C1::$b;