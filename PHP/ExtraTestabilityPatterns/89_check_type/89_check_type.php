<?php

$a = $_GET["p1"];
//$a = 7;
if (is_int($a)){
	echo $a."\n";
}

//$a = 5.2;
if(is_float($a)){
	echo $a."\n";
}

//$a = TRUE;
if(is_bool($a)){
	echo $a."\n";
}