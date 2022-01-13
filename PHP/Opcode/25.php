<?php

$x = 1;
$y = &$x;
$y = 5;
echo $x;

$arr = array(1,2,3,4);
$arr[1] = &$arr[3];
$arr[3] = 5;
echo $arr[1];

class myclass{
	public $prop;
	static $sprop;
};

$x = 5;
$obj = new myclass();
$obj->prop = &$x;

$y = 3;
myclass::$sprop = &$y;
