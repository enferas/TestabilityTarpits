<?php

$str = "String Variable";

echo strlen($str);

if(is_string($str)){
	echo "It is String\n";
}

function F():string{
	$x = "abc";
	return $x;
}
