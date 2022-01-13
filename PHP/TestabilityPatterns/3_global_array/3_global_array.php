<?php

function F(){
    echo $GLOBALS["a"];
}

$a = $_GET["p1"];
F();
