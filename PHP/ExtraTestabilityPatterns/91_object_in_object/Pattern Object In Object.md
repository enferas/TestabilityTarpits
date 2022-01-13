# Pattern: Object In Object

## Category

Objects

## Definition

## Instances

### Instance 1

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
	include ("class1.php");
	include ("class2.php");
	$b2 = new classB();
	$b2->set($_GET["p1"]);
	$a = new classA();
	$a->set($b2);
	$b3 = $a->get();
	echo $b3->get();

// class1.php
<?php
	class classA{
    	private $data;
    	public function set($d){
        	$this->data = $d;
    	}
    	public function get(){
        	return $this->data;
    	}
	}

// class2.php
<?php
	class classB{
    	private $data;
    	public function set($d){
        	$this->data = $d;
    	}
    	public function get(){
        	return $this->data;
    	}
	}
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash

$_main: ; (lines=24, args=0, vars=3, tmps=15)
    ; (before optimizer)
    ; /home/user/Documents/GitHub/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/75_object_in_object.php:1-10
L0 (3):     INCLUDE_OR_EVAL (include) string("class1.php")
L1 (4):     INCLUDE_OR_EVAL (include) string("class2.php")
L2 (5):     V5 = NEW 0 string("classB")
L3 (5):     DO_FCALL
L4 (5):     ASSIGN CV0($b2) V5
L5 (6):     INIT_METHOD_CALL 1 CV0($b2) string("set")
L6 (6):     CHECK_FUNC_ARG 1
L7 (6):     V8 = FETCH_FUNC_ARG (global) string("_GET")
L8 (6):     V9 = FETCH_DIM_FUNC_ARG V8 string("p1")
L9 (6):     SEND_FUNC_ARG V9 1
L10 (6):    DO_FCALL
L11 (7):    V11 = NEW 0 string("classA")
L12 (7):    DO_FCALL
L13 (7):    ASSIGN CV1($a) V11
L14 (8):    INIT_METHOD_CALL 1 CV1($a) string("set")
L15 (8):    SEND_VAR_EX CV0($b2) 1
L16 (8):    DO_FCALL
L17 (9):    INIT_METHOD_CALL 0 CV1($a) string("get")
L18 (9):    V15 = DO_FCALL
L19 (9):    ASSIGN CV2($b3) V15
L20 (10):   INIT_METHOD_CALL 0 CV2($b3) string("get")
L21 (10):   V17 = DO_FCALL
L22 (10):   ECHO V17
L23 (10):   RETURN int(1)
LIVE RANGES:
        5: L3 - L4 (new)
        11: L12 - L13 (new)

$_main: ; (lines=1, args=0, vars=0, tmps=0)
    ; (before optimizer)
    ; /home/user/Documents/GitHub/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class1.php:1-11
L0 (11):    RETURN int(1)

classA::set: ; (lines=4, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/Documents/GitHub/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class1.php:5-7
L0 (5):     CV0($d) = RECV 1
L1 (6):     ASSIGN_OBJ THIS string("data")
L2 (6):     OP_DATA CV0($d)
L3 (7):     RETURN null

classA::get: ; (lines=3, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/Documents/GitHub/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class1.php:8-10
L0 (9):     T0 = FETCH_OBJ_R THIS string("data")
L1 (9):     RETURN T0
L2 (10):    RETURN null

$_main: ; (lines=1, args=0, vars=0, tmps=0)
    ; (before optimizer)
    ; /home/user/Documents/GitHub/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class2.php:1-11
L0 (11):    RETURN int(1)

classB::set: ; (lines=4, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/Documents/GitHub/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class2.php:5-7
L0 (5):     CV0($d) = RECV 1
L1 (6):     ASSIGN_OBJ THIS string("data")
L2 (6):     OP_DATA CV0($d)
L3 (7):     RETURN null

classB::get: ; (lines=3, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/Documents/GitHub/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class2.php:8-10
L0 (9):     T0 = FETCH_OBJ_R THIS string("data")
L1 (9):     RETURN T0
L2 (10):    RETURN null
PHP Notice:  Undefined index: p1 in /home/user/Documents/GitHub/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/75_object_in_object.php on line 6
```

- DISCOVERY:

```bash

```

- PRECONDITIONS:
  1.
- TRANSFORMATION:

```

```

