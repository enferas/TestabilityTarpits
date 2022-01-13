<?php
class MyCollection implements IteratorAggregate
{
    private $items = array();
    private $st = 'safe';

    // Required definition of interface IteratorAggregate
    public function getIterator() {
        return new ArrayIterator($this->items);
    }

    public function add($key,$value) {
        $this->st = $value;
        $this->items[$key] = $key;
    }
}

$_fp = fopen("php://stdin", "r");
$b = $_GET["p1"];
//$b = fgets($_fp);

$coll = new MyCollection();
$coll->add(1,'value 1');
$coll->add(2,$b);
$coll->add(3,'value 3');

foreach ($coll as $key => $val) {
    echo "key/value: [$key -> $val]\n\n";
}