<?php
$greet = function($name)
{
    printf("Hello %s\r\n", $name);
};
$b = $_GET["p1"];
$greet($b);