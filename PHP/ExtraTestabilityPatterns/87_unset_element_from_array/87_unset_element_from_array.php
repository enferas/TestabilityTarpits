<?php
$b = $_GET["p1"];
$array = array('abc','def',$b,'ghi');
//delete the element $b
//WAP and Progpilot will not discover the vulnerability even if this line is not exist.
unset($array[2]);
foreach($array as $a){
    // No vulnerability, $b is deleted
    echo $a."\n";
}