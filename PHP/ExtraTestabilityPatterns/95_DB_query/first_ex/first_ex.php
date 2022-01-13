<?php

$dbh = new PDO('odbc:sample', 'db2inst1', 'ibmdb2');
$x = $_GET["p1"];
$dbh->query('SELECT name, color, calories FROM $x ORDER BY name');