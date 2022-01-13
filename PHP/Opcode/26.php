<?php

function gen(){
    for ($i = 1; $i <= 3; $i++) {
        yield $i;
    }
    return 4;
}

foreach(gen() as $n){
	echo "$n\n";
}


function inner() {
    yield 1; // key 0
    yield 2; // key 1
    yield 3; // key 2
}
function gen2() {
    yield 0; // key 0
    yield from inner(); // keys 0-2
    yield 4; // key 1
}
// pass false as second parameter to get an array [0, 1, 2, 3, 4]
var_dump(iterator_to_array(gen2()));
