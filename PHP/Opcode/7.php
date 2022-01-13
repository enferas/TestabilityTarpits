<?php

$i = 1;
switch ($i) {
    case 0:
        echo "i equals 0";
        break;
    case 1:
        echo "i equals 1";
        break;
    default:
        echo "i equals 2";
        break;
}

$str = "abc"."def";
$x = "abc";
switch($str){
	case "abc":
		echo "first";
		break;
	case "abcdef":
		echo "second";
		break;
	default:
		echo "not exist";
}

switch(strlen($str)){
	case 5:
		echo "five";
		break;
	case 6:
		echo "six";
		break;
}
