<?php
$b = $_GET["p1"];
$array = array('abc','def',$b,'ghi');
$x = 3;
$x = $x - 1;
// will print "def", No vulnerability
echo $array[$x-1];