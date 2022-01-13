<?php

class Foo {
    public static function M() {
            echo "Method\n";
    }
}

function F($x){
	echo "function ";
	echo "$x\n";
}

function f_get(){
	$x = func_num_args();
	echo $x;
	$args = func_get_args();
	foreach($args as $a){
		echo $a;
	}
}

$func = "F";
call_user_func($func,"First");
call_user_func_array($func,array("Second"));
$func("Third");


$obj = new Foo();
call_user_func(array($obj,"M"));

array(new Foo(), "M")();

f_get("First","second","third");
