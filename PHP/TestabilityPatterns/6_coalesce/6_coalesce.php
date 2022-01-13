<?php
$b = $_GET["p1"];
//$b = "input";
$arr = array(1,2,3);
$x = $arr[4] ?? $b;
echo $x;

