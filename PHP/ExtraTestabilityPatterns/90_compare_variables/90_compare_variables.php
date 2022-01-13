<?php

$a = $_GET["p1"];

$b = 5;
if($a === $b){
        // No vulnerability
	echo $a."\n";
}

$c = "7";
if($a == $c){
        // No vulnerability
	echo $a."\n";
}

/*
if($a != $c){
        // vulnerability
	echo $a."\n";
}
*/