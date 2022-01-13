<?php

$x = 1;
$a = 'x';
echo $$a;
$$a = 2;
$$a++;
echo isset($x);
echo isset($$a);
echo isset($_SESSION['userid']);
unset($$a);
unset($_SESSION['userid']);

$arr = array(1,array(2,4),3);
$arr[1][1]=5;
echo $arr[1][1];
$arr[1][1]++;
echo isset($ar[1][1]);
unset($arr[1][1]);

$obj = new myclass();
$o = 'obj';
$obj->prop1->prop2 = 5;
echo $obj->prop1->prop2;
$obj->prop1->prop2++;
echo isset($obj->prop1->prop2);
unset($obj->prop1->prop2);


class A{
	public $prop;
	function F(){
		if(isset($this)){
			echo "exist";
		}
	}
}
