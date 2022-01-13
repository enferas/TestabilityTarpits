<?php
$my_file = @file ('non_existent_file') or
   die ("error:'$php_errormsg'");
