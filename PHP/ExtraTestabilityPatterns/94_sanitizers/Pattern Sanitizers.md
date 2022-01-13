# Pattern: Sanitizers

## Category

Built-in Functions

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  YES
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
   //input: #000' onload='alert(document.cookie)
   $b = $_GET['p1'];
   //defualt flag ENT_COMPAT: Will convert double-quotes and leave single-quotes alone
   $href = htmlEntities($b);
   //Print: <body bgcolor='#000' onload='alert(document.cookie)'>
   echo "<body bgcolor='$href'>";
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability |  NO  |  NO     | YES  |     YES   |  YES    |  YES      | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=17, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/119_sanitizers/first_ex/first_ex.php:1-10
L0 (3):     EXT_STMT
L1 (3):     T2 = FETCH_R (global) string("_GET")
L2 (3):     T3 = FETCH_DIM_R T2 string("p1")
L3 (3):     ASSIGN CV0($b) T3
L4 (5):     EXT_STMT
L5 (5):     INIT_FCALL 1 96 string("htmlentities")
L6 (5):     SEND_VAR CV0($b) 1
L7 (5):     V5 = DO_FCALL
L8 (5):     ASSIGN CV1($href) V5
L9 (7):     EXT_STMT
L10 (7):    T8 = ROPE_INIT 3 string("<body bgcolor='")
L11 (7):    T8 = ROPE_ADD 1 T8 CV1($href)
L12 (7):    T7 = ROPE_END 2 T8 string("'>")
L13 (7):    ECHO T7
L14 (9):    EXT_STMT
L15 (9):    ECHO string("
")
L16 (10):   RETURN int(1)
LIVE RANGES:
        8: L10 - L12 (rope)
```

- DISCOVERY:

```bash

```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  YES
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: YES
- CODE:

```php
<?php
	$b = $_GET['p1'];
	$neu = htmlspecialchars($b, ENT_QUOTES);
	echo $neu;
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES     | NO        | NO      |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=15, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/119_sanitizers/second_ex/second_ex.php:1-7
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($b) T3
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 2 112 string("htmlspecialchars")
L6 (3):     SEND_VAR CV0($b) 1
L7 (3):     SEND_VAL int(3) 2
L8 (3):     V5 = DO_FCALL
L9 (3):     ASSIGN CV1($neu) V5
L10 (4):    EXT_STMT
L11 (4):    ECHO CV1($neu)
L12 (6):    EXT_STMT
L13 (6):    ECHO string("
")
L14 (7):    RETURN int(1)
```

- DISCOVERY:

```bash

```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

### Instance 3

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: YES
- CODE:

```php
<?php
	$b = $_GET['p1'];
	echo urlencode($b);
?>
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | YES     | NO        | NO      |

Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=12, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/119_sanitizers/third_ex/125_urlencode.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T1 = FETCH_R (global) string("_GET")
L2 (2):     T2 = FETCH_DIM_R T1 string("p1")
L3 (2):     ASSIGN CV0($b) T2
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 1 96 string("urlencode")
L6 (3):     SEND_VAR CV0($b) 1
L7 (3):     V4 = DO_FCALL
L8 (3):     ECHO V4
L9 (5):     EXT_STMT
L10 (5):    ECHO string("
")
L11 (6):    RETURN int(1)
```

- DISCOVERY:

```bash

```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

```

```

