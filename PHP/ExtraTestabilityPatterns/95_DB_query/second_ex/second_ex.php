<?php
  $val = $_GET["p1"];
  $mysqli = new mysqli("localhost", "my_user", "my_password", "world");

  /* Select queries return a resultset */
  $result = $mysqli->query("SELECT $val FROM City LIMIT 10");