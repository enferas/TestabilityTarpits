<?php

class Foo{
    static $b = 2;
    //function F(){
    //    echo self::$b; // this line
    //}
}

Foo::$b = 2;
echo Foo::$b;

