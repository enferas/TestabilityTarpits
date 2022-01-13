<?php
$result="";
function F($word) {
    global $result;
    // will change the value of $result
    $result = $word;
}
$words= $_GET["p1"];
F($words);
// XSS vulnerability, will print $word
echo $result;