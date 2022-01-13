<?php
   //input: #000' onload='alert(document.cookie)
   $b = $_GET['p1'];
   //defualt flag ENT_COMPAT: Will convert double-quotes and leave single-quotes alone
   $href = htmlEntities($b);
   //Print: <body bgcolor='#000' onload='alert(document.cookie)'>
   echo "<body bgcolor='$href'>";
?>

