<?php

class myclass{
	static $sprop;
	static $dict;
}

myclass::$sprop = 5;

$obj = new myclass();
echo $obj::$sprop;
isset($obj::$sprop);
unset($obj::$sprop);

echo $obj::class;

$obj2 = clone $obj;

if($obj2 instanceof myclass){
	echo "instance of myclass\n";
}

myclass::$dict["abc"] = 1;
echo myclass::$dict["abc"];
myclass::$dict["abc"]++;
$c = isset(myclass::$dict["abc"]);
Func(myclass::$dict["abc"]);
unset(myclass::$dict["abc"]);
