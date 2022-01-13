<?php
$a = $_GET["p1"];
//$a = "abc";
$a++;
echo $a."\n";

$a = $_GET["p1"];
//$a = "abc";
$a--;
echo $a."\n";

$a = $_GET["p1"];
//$a = "abc";
++$a;
echo $a."\n";

$a = $_GET["p1"];
//$a = "abc";
--$a;
echo $a."\n";

class static_class{
	public static $a;
}

$a = $_GET["p1"];
static_class::$a = "abc";
--static_class::$a;
echo static_class::$a."\n";

$a = $_GET["p1"];
static_class::$a = "abc";
++static_class::$a;
echo static_class::$a."\n";

$a = $_GET["p1"];
static_class::$a = "abc";
static_class::$a--;
echo static_class::$a."\n";

$a = $_GET["p1"];
static_class::$a = "abc";
static_class::$a++;
echo static_class::$a."\n";

class myclass{
	public $a;
}

$a = $_GET["p1"];
//$b = "abc";
$obj = new myclass();
$obj->a = $a;
--$obj->a;
echo $obj->a."\n";

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$obj->a = $a;
++$obj->a;
echo $obj->a."\n";

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$obj->a = $a;
$obj->a--;
echo $obj->a."\n";

$a = $_GET["p1"];
//$a = "abc";
$obj = new myclass();
$obj->a = $a;
$obj->a++;
echo $obj->a."\n";
