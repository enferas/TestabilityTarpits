<?php

class Foo {
    public static function F() {
            echo "Method\n";
    }
    public static function sF() {
            echo "Static Method\n";
    }
}
$obj = new Foo();
$obj->F();
Foo::sF();
