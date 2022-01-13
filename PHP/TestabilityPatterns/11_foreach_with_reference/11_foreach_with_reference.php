<?php
  $x = "abc"; $y = "def"; $z = "ghi";
  $arr = array($x, $y, $z);
  $b = $_GET["p1"];
  foreach ($arr as &$x) {
    // copy $b for all the elements in the array.
    // the changes will be in $x and $arr in the same time.
    $x = $b;
  }
  // will print the value of $b, there is vulnerability
  echo $arr[0];
