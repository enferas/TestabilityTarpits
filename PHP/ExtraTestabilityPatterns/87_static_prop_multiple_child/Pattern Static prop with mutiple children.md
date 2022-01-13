# Pattern: Static Property with Multiple Children

## Category

Objects

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
class father{
    static $b = 'safe';
}
class child1 extends father{}
class child2 extends father{}

$b = $_GET["p1"];
$C1 = new child1();
$C2 = new child2();
$C2::$b = $b;
echo $C1::$b;
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability |YES   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=22, args=0, vars=3, tmps=13)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/87_static_prop_multiple_child/87_static_prop_multiple_children.php:1-12
L0 (3):     NOP
L1 (8):     EXT_STMT
L2 (8):     T3 = FETCH_R (global) string("_GET")
L3 (8):     T4 = FETCH_DIM_R T3 string("p1")
L4 (8):     ASSIGN CV0($b) T4
L5 (9):     EXT_STMT
L6 (9):     V6 = NEW 0 string("child1")
L7 (9):     DO_FCALL
L8 (9):     ASSIGN CV1($C1) V6
L9 (10):    EXT_STMT
L10 (10):   V9 = NEW 0 string("child2")
L11 (10):   DO_FCALL
L12 (10):   ASSIGN CV2($C2) V9
L13 (11):   EXT_STMT
L14 (11):   V12 = FETCH_CLASS (exception) CV2($C2)
L15 (11):   ASSIGN_STATIC_PROP string("b") V12
L16 (11):   OP_DATA CV0($b)
L17 (12):   EXT_STMT
L18 (12):   V14 = FETCH_CLASS (exception) CV1($C1)
L19 (12):   T15 = FETCH_STATIC_PROP_R string("b") V14
L20 (12):   ECHO T15
L21 (12):   RETURN int(1)
LIVE RANGES:
        6: L7 - L8 (new)
        9: L11 - L12 (new)
```

- DISCOVERY:

```bash
FETCH_STATIC_PROP_R string("b") V12
V12 = FETCH_CLASS (exception) CV1($C1)
ASSIGN CV1($C1) V4
V4 = NEW 0 string("child1") //where "child1" is a class
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

