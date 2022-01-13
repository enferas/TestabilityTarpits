<?php

$x = 1;
unset($x);

$y = array(1,2,3);
unset($y[0]);

$obj = new A();
unset($obj->num);
