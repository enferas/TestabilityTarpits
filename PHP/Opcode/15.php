<?php

$arr = array(1,2,3);

foreach($arr as $a){
	echo $a;
}

foreach($arr as &$a){
	$a++;
}

foreach($arr as $a){
	echo $a;
}
