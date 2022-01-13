# Pattern: Call Function with Concat

## Category

Functions

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F(&$a, $b){
   $a = $b;
   return 'XSS';
}

$a = 'bbb';
$b = $_GET["p1"];
// it will print the value of $b then it is XSS
// XSS vulnerability
echo $a . F($a,$b);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | YES  |  NO     |  YES |   NO      |   NO    |   YES     | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=14, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/118_call_function_with_concat/118_call_function_with_concat.php:1-13
L0 (7):     EXT_STMT
L1 (7):     ASSIGN CV0($a) string("bbb")
L2 (8):     EXT_STMT
L3 (8):     T3 = FETCH_R (global) string("_GET")
L4 (8):     T4 = FETCH_DIM_R T3 string("p1")
L5 (8):     ASSIGN CV1($b) T4
L6 (11):    EXT_STMT
L7 (11):    INIT_FCALL 2 128 string("f")
L8 (11):    SEND_REF CV0($a) 1
L9 (11):    SEND_VAR CV1($b) 2
L10 (11):   V6 = DO_FCALL
L11 (11):   T7 = CONCAT CV0($a) V6
L12 (11):   ECHO T7
L13 (13):   RETURN int(1)

F: ; (lines=9, args=2, vars=2, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/118_call_function_with_concat/118_call_function_with_concat.php:2-5
L0 (2):     EXT_NOP
L1 (2):     CV0($a) = RECV 1
L2 (2):     CV1($b) = RECV 2
L3 (3):     EXT_STMT
L4 (3):     ASSIGN CV0($a) CV1($b)
L5 (4):     EXT_STMT
L6 (4):     RETURN string("XSS")
L7 (5):     EXT_STMT
L8 (5):     RETURN null
```

- DISCOVERY:

```bash

```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

