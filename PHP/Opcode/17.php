<?php

class myclass{
	public $prop;
	static $sprop;
}

function F_array(){
	$arr = array(1,2,3);
	return $arr;
}

function F_object(){
	$obj = new myclass();
	$obj->prop = 2;
	return $obj;
}

function F2($t){echo $t;}

// Func_arg when the engine cannot find the called function statically.
// Another example can be when the name of the function is inside a variable.

$x = 3;
$y = 'x';
$fv = "F2";
$fv($$y);
// or
Func($$y);

$arr = array(1,2,3);
$fv($arr[1]);
// or
Func($arr[1]);

$obj = new myclass();
$obj->prop = 2;
$fv($obj->prop);
// or
$fv($obj->prop);
myclass::$sprop = 2;
$fv(myclass::$sprop);
// or
Func(myclass::$sprop);


// SEPARATE
Func(F_array()[1]);
Func(F_object()->prop);
Func(F_object()::$sprop);
// OR
$fv(F_array()[1]);
$fv(F_array()->prop);
$fv(F_object()::$sprop);
