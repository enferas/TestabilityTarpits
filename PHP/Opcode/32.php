<?php

class foo {
    static public function test() {
        var_dump(get_called_class());
    }
}

class bar extends foo {
}

foo::test();
bar::test();


class foo2 {
    function name()
    {
        echo "My name is " , get_class($this) , "\n";
    }
}

// create an object
$bar = new foo2();

// external call
echo "Its name is " , get_class($bar) , "\n";

// internal call
$bar->name();
