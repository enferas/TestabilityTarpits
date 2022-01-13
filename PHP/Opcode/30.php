<?php

function F1(...$arr){
	foreach($arr as $a){
		echo "$a\n";
	}
}

function F2($a1,$a2){
	echo "$a1\n";
	echo "$a2\n";
}

F1("one","two","three");
$arr = array("one","two");
F2(...$arr);

$arr_small = array(1,2,3);
$arr_big = array('a','b','c',...$arr_small);
foreach($arr_big as $a){
	echo "$a\n";
}

//key
if(array_key_exists(1,$arr)){
	echo "key exist";
}

//value
$t = "two";
if(in_array($t,array("one","two","three"))){
	echo "value exist";
}
