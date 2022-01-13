<?php

class myclass{
	static $a;
	public $b;
}

myclass::$a = 5;
$c = ++myclass::$a + myclass::$a++;
$c = --myclass::$a + myclass::$a--;

myclass::$a += 2;


$obj = new myclass();
$obj->b = 2;
$c = ++$obj->b + $obj->b++;
$c = --$obj->b + $obj->b--;

$obj->b += 2;
