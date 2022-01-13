<?php

include ("class1.php");
include ("class2.php");
$b2 = new classB();
$b2->set($_GET["p1"]);
$a = new classA();
$a->set($b2);
$b3 = $a->get();
echo $b3->get();