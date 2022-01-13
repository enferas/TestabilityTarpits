<?php
class foo {
    public $value = 42;

    public function &getValue() {
        return $this->value;
    }
}

$b = $_GET["p1"];
$obj = new foo;
// $myValue is a reference to $obj->value, which is 42.
$myValue = &$obj->getValue(); 
$obj->value = $b;
// prints the new value of $obj->value, which is the value of $b.
// Here there is XSS vulnerability.
echo $myValue; 
