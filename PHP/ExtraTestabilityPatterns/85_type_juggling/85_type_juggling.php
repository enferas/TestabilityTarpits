<?php
$N = $_GET["p1"];
$S = $_GET["p2"];
$res = "";
// for each char in the string $S
for ($i = 0; $i < len($N); $i++) {
    // Take the index for each char
    $od = ord($S[$i]) + 1;
    $od = $od - 1;
    // return the index to char, and concat with $res 
    $res = $res.chr($od);
}
// XSS vulnerability, it will print $S
echo($res);
