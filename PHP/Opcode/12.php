<?php

function F(&$a){
	++$a; 
	echo $a;
}

$a = 1;
F($a);
