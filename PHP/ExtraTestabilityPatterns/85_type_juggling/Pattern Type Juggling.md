# Pattern: Type Juggling

## Category

Variables

## Definition

## Instances

### Instance 1

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
$N = $_GET["p1"];
$S = $_GET["p2"];
$res = "";
// for each char in the string $S
for ($i = 0; $i < $N; $i++) {
    // Take the index for each char
    $od = ord($S[$i]) + 1;
    $od = $od - 1;
    // return the index to char, and concat with $res 
    $res = $res.chr($od);
}
// XSS vulnerability, it will print $S
echo($res);
```

- MEASUREMENT:

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |
Measurements Date: 8 June 2021

- OPCODE:

```bash
$_main: ; (lines=40, args=0, vars=5, tmps=20)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/5_type_juggling/5_type_juggling.php:1-15
L0 (2):     EXT_STMT
L1 (2):     T5 = FETCH_R (global) string("_GET")
L2 (2):     T6 = FETCH_DIM_R T5 string("p1")
L3 (2):     ASSIGN CV0($N) T6
L4 (3):     EXT_STMT
L5 (3):     T8 = FETCH_R (global) string("_GET")
L6 (3):     T9 = FETCH_DIM_R T8 string("p2")
L7 (3):     ASSIGN CV1($S) T9
L8 (4):     EXT_STMT
L9 (4):     ASSIGN CV2($res) string("")
L10 (6):    EXT_STMT
L11 (6):    ASSIGN CV3($i) int(0)
L12 (6):    JMP L31
L13 (8):    EXT_STMT
L14 (8):    INIT_FCALL 1 96 string("ord")
L15 (8):    T13 = FETCH_DIM_R CV1($S) CV3($i)
L16 (8):    SEND_VAL T13 1
L17 (8):    V14 = DO_FCALL
L18 (8):    T15 = ADD V14 int(1)
L19 (8):    ASSIGN CV4($od) T15
L20 (9):    EXT_STMT
L21 (9):    T17 = SUB CV4($od) int(1)
L22 (9):    ASSIGN CV4($od) T17
L23 (11):   EXT_STMT
L24 (11):   INIT_FCALL 1 96 string("chr")
L25 (11):   SEND_VAR CV4($od) 1
L26 (11):   V19 = DO_FCALL
L27 (11):   T20 = CONCAT CV2($res) V19
L28 (11):   ASSIGN CV2($res) T20
L29 (6):    T22 = POST_INC CV3($i)
L30 (6):    FREE T22
L31 (6):    INIT_FCALL_BY_NAME 1 string("len")
L32 (6):    SEND_VAR_EX CV0($N) 1
L33 (6):    V23 = DO_FCALL
L34 (6):    T24 = IS_SMALLER CV3($i) V23
L35 (6):    EXT_STMT
L36 (6):    JMPNZ T24 L13
L37 (14):   EXT_STMT
L38 (14):   ECHO CV2($res)
L39 (15):   RETURN int(1)
LIVE RANGES:
        24: L35 - L36 (tmp/var)
```

- DISCOVERY:

```bash
if(cycle on string variable)
	if(variable's characters are manipulated in the loop)
----------------------------------------------------------------------------
JMP
if(CV is string)
JMPNZ
```

- PRECONDITIONS:
   1.

- TRANSFORMATION: 

```

```

