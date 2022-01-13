# Pattern: Check Type

## Category

Variables

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: YES
- CODE:

```php
<?php

$a = $_GET["p1"];
//$a = 7;
if (is_int($a)){
	echo $a."\n";
}

//$a = 5.2;
if(is_float($a)){
	echo $a."\n";
}

//$a = TRUE;
if(is_bool($a)){
	echo $a."\n";
}
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability |YES   |YES      | YES  | NO        | YES     | YES       | NO      |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=23, args=0, vars=1, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/63_check_type/63_check_type.php:1-17
L0 (3):     EXT_STMT
L1 (3):     T1 = FETCH_R (global) string("_GET")
L2 (3):     T2 = FETCH_DIM_R T1 string("p1")
L3 (3):     ASSIGN CV0($a) T2
L4 (5):     EXT_STMT
L5 (5):     T4 = TYPE_CHECK (long) CV0($a)
L6 (5):     JMPZ T4 L10
L7 (6):     EXT_STMT
L8 (6):     T5 = CONCAT CV0($a) string("
")
L9 (6):     ECHO T5
L10 (10):   EXT_STMT
L11 (10):   T6 = TYPE_CHECK (double) CV0($a)
L12 (10):   JMPZ T6 L16
L13 (11):   EXT_STMT
L14 (11):   T7 = CONCAT CV0($a) string("
")
L15 (11):   ECHO T7
L16 (15):   EXT_STMT
L17 (15):   T8 = TYPE_CHECK (bool) CV0($a)
L18 (15):   JMPZ T8 L22
L19 (16):   EXT_STMT
L20 (16):   T9 = CONCAT CV0($a) string("
")
L21 (16):   ECHO T9
L22 (17):   RETURN int(1)
```

- DISCOVERY:

```bash
ZEND_TYPE_CHECK
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```
