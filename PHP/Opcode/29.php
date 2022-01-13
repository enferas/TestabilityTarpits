<?php

// DECLARE_ANON_CLASS 
$util = (new class{});

// DECLARE_LAMBDA_FUNCTION 
$func = function($a,$b) {return $a*$b;};

// LAMBDA Function with LEXICAL
$example = function () use ($message) {
    echo $message;
};

// ZEND_DECLARE_FUNCTION  
if(True){
    function F(){}
}


if(True){
	class myclass{}
}
