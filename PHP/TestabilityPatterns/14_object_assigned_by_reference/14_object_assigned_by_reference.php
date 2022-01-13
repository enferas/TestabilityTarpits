<?php
    class myclass{
	    public $prop;
    };
    $x = "safe";
    $obj = "abc";
    $obj->prop = &$x;
    $x = $_GET["p1"];
    echo $obj->prop;