1
$_main:
     ; (lines=51, args=0, vars=6, tmps=36)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/16.php:1-38
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($x) int(1)
0001 ASSIGN CV1($a) string("x")
0002 T8 = FETCH_R (local) CV1($a)
0003 ECHO T8
0004 V9 = FETCH_W (local) CV1($a)
0005 ASSIGN V9 int(2)
0006 V11 = FETCH_RW (local) CV1($a)
0007 PRE_INC V11
0008 T13 = ISSET_ISEMPTY_CV (isset) CV0($x)
0009 ECHO T13
0010 T14 = ISSET_ISEMPTY_VAR (local) (isset) CV1($a)
0011 ECHO T14
0012 T15 = FETCH_IS (global) string("_SESSION")
0013 T16 = ISSET_ISEMPTY_DIM_OBJ (isset) T15 string("userid")
0014 ECHO T16
0015 UNSET_VAR (local) CV1($a)
0016 V17 = FETCH_UNSET (global) string("_SESSION")
0017 UNSET_DIM V17 string("userid")
0018 ASSIGN CV2($arr) array(...)
0019 V19 = FETCH_DIM_W CV2($arr) int(1)
0020 ASSIGN_DIM V19 int(1)
0021 OP_DATA int(5)
0022 T21 = FETCH_DIM_R CV2($arr) int(1)
0023 T22 = FETCH_DIM_R T21 int(1)
0024 ECHO T22
0025 V23 = FETCH_DIM_RW CV2($arr) int(1)
0026 V24 = FETCH_DIM_RW V23 int(1)
0027 PRE_INC V24
0028 T26 = FETCH_DIM_IS CV3($ar) int(1)
0029 T27 = ISSET_ISEMPTY_DIM_OBJ (isset) T26 int(1)
0030 ECHO T27
0031 V28 = FETCH_DIM_UNSET CV2($arr) int(1)
0032 UNSET_DIM V28 int(1)
0033 V29 = NEW 0 string("myclass")
0034 DO_FCALL
0035 ASSIGN CV4($obj) V29
0036 ASSIGN CV5($o) string("obj")
0037 V33 = FETCH_OBJ_W CV4($obj) string("prop1")
0038 ASSIGN_OBJ V33 string("prop2")
0039 OP_DATA int(5)
0040 T35 = FETCH_OBJ_R CV4($obj) string("prop1")
0041 T36 = FETCH_OBJ_R T35 string("prop2")
0042 ECHO T36
0043 V37 = FETCH_OBJ_RW CV4($obj) string("prop1")
0044 PRE_INC_OBJ V37 string("prop2")
0045 T39 = FETCH_OBJ_IS CV4($obj) string("prop1")
0046 T40 = ISSET_ISEMPTY_PROP_OBJ (isset) T39 string("prop2")
0047 ECHO T40
0048 V41 = FETCH_OBJ_UNSET CV4($obj) string("prop1")
0049 UNSET_OBJ V41 string("prop2")
0050 RETURN int(1)
LIVE RANGES:
     29: 0034 - 0035 (new)

A::F:
     ; (lines=4, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/16.php:32-36
     ; return  [] RANGE[0..0]
0000 T0 = ISSET_ISEMPTY_THIS
0001 JMPZ T0 0003
0002 ECHO string("exist")
0003 RETURN null
11
Warning: Undefined global variable $_SESSION in /usr/src/myapp/codes/opcode_examples/16.php on line 12
5
Fatal error: Uncaught Error: Class "myclass" not found in /usr/src/myapp/codes/opcode_examples/16.php:21
Stack trace:
#0 {main}
  thrown in /usr/src/myapp/codes/opcode_examples/16.php on line 21
