<?php

function F(){
    function D($b){
        echo $b;
    }
}
$b = $_GET["p1"];
F();
D($b);