# Pattern: Foreach with Reference

## Category

References

## Definition

Foreach is used by high level programming languages to iterate over arrays and objects.

```php
<?php
$arr = array(1,2,3);
foreach($arr as $value){
   echo $value;
}
```

In this example, any change on the variable $value will not change on the array $arr. If we want to keep the changes we have to add a reference.

```php
<?php
$arr = array(1,2,3);
foreach($arr as &$value){
   ...
}
```

## Instances

### Instance 1

- CATEGORY:  S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
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
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=26, args=0, vars=5, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/20_foreach_with_reference/20_foreach_with_reference.php:1-12
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($x) string("abc")
L2 (2):     EXT_STMT
L3 (2):     ASSIGN CV1($y) string("def")
L4 (2):     EXT_STMT
L5 (2):     ASSIGN CV2($z) string("ghi")
L6 (3):     EXT_STMT
L7 (3):     T8 = INIT_ARRAY 3 (packed) CV0($x) NEXT
L8 (3):     T8 = ADD_ARRAY_ELEMENT CV1($y) NEXT
L9 (3):     T8 = ADD_ARRAY_ELEMENT CV2($z) NEXT
L10 (3):    ASSIGN CV3($arr) T8
L11 (4):    EXT_STMT
L12 (4):    T10 = FETCH_R (global) string("_GET")
L13 (4):    T11 = FETCH_DIM_R T10 string("p1")
L14 (4):    ASSIGN CV4($b) T11
L15 (5):    EXT_STMT
L16 (5):    V13 = FE_RESET_RW CV3($arr) L21
L17 (5):    FE_FETCH_RW V13 CV0($x) L21
L18 (8):    EXT_STMT
L19 (8):    ASSIGN CV0($x) CV4($b)
L20 (5):    JMP L17
L21 (5):    FE_FREE V13
L22 (11):   EXT_STMT
L23 (11):   T15 = FETCH_DIM_R CV3($arr) int(0)
L24 (11):   ECHO T15
L25 (12):   RETURN int(1)
LIVE RANGES:
        8: L8 - L10 (tmp/var)
        13: L17 - L21 (loop)
```

- DISCOVERY:

```bash
cpg.call(".*FE_FETCH_RW.*").size
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

