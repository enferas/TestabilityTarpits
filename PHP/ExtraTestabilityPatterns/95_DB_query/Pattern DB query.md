# Pattern: DB query

## Category

Built-in Functions

## Definition

## Instances

### Instance 1

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php

$dbh = new PDO('odbc:sample', 'db2inst1', 'ibmdb2');
$x = $_GET["p1"];
$dbh->query('SELECT name, color, calories FROM $x ORDER BY name');
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=16, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/95_DB_query/first_ex/first_ex.php:1-5
L0 (3):     EXT_STMT
L1 (3):     V2 = NEW 3 string("PDO")
L2 (3):     SEND_VAL_EX string("odbc:sample") 1
L3 (3):     SEND_VAL_EX string("db2inst1") 2
L4 (3):     SEND_VAL_EX string("ibmdb2") 3
L5 (3):     DO_FCALL
L6 (3):     ASSIGN CV0($dbh) V2
L7 (4):     EXT_STMT
L8 (4):     T5 = FETCH_R (global) string("_GET")
L9 (4):     T6 = FETCH_DIM_R T5 string("p1")
L10 (4):    ASSIGN CV1($x) T6
L11 (5):    EXT_STMT
L12 (5):    INIT_METHOD_CALL 1 CV0($dbh) string("query")
L13 (5):    SEND_VAL_EX string("SELECT name, color, calories FROM $x ORDER BY name") 1
L14 (5):    DO_FCALL
L15 (5):    RETURN int(1)
LIVE RANGES:
        2: L2 - L6 (new)
```

- DISCOVERY:

```bash

```

- PRECONDITIONS:
  1.

- TRANSFORMATION: 

### Instance 2

- CATEGORY: S0
- FEATURE vs INTERNAL API: API
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: YES
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
  $val = $_GET["p1"];
  $mysqli = new mysqli("localhost", "my_user", "my_password", "world");

  /* Select queries return a resultset */
  $result = $mysqli->query("SELECT $val FROM City LIMIT 10");
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | YES  | YES       | YES     | YES       | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=21, args=0, vars=3, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/95_DB_query/second_ex/second_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($val) T4
L4 (3):     EXT_STMT
L5 (3):     V6 = NEW 4 string("mysqli")
L6 (3):     SEND_VAL_EX string("localhost") 1
L7 (3):     SEND_VAL_EX string("my_user") 2
L8 (3):     SEND_VAL_EX string("my_password") 3
L9 (3):     SEND_VAL_EX string("world") 4
L10 (3):    DO_FCALL
L11 (3):    ASSIGN CV1($mysqli) V6
L12 (6):    EXT_STMT
L13 (6):    INIT_METHOD_CALL 1 CV1($mysqli) string("query")
L14 (6):    T10 = ROPE_INIT 3 string("SELECT ")
L15 (6):    T10 = ROPE_ADD 1 T10 CV0($val)
L16 (6):    T9 = ROPE_END 2 T10 string(" FROM City LIMIT 10")
L17 (6):    SEND_VAL_EX T9 1
L18 (6):    V12 = DO_FCALL
L19 (6):    ASSIGN CV2($result) V12
L20 (6):    RETURN int(1)
LIVE RANGES:
        6: L6 - L11 (new)
        10: L14 - L16 (rope)
```

- DISCOVERY:

```bash

```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

