<?php
$b = $_GET["p1"];
$message = "safe";
// Inherit $message
$example = function () use (&$message) {
    // it will print $b, because of & for $message
    // XSS vulnerability
    echo $message;
};
$message = $b;
$example();
