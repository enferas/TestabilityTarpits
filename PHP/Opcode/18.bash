5
$_main:
     ; (lines=41, args=0, vars=3, tmps=27)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/18.php:1-29
     ; return  [] RANGE[0..0]
0000 ASSIGN_STATIC_PROP string("sprop") string("myclass")
0001 OP_DATA int(5)
0002 V4 = NEW 0 string("myclass")
0003 DO_FCALL
0004 ASSIGN CV0($obj) V4
0005 V7 = FETCH_CLASS (exception) CV0($obj)
0006 T8 = FETCH_STATIC_PROP_R string("sprop") V7
0007 ECHO T8
0008 V9 = FETCH_CLASS (exception) CV0($obj)
0009 T10 = ISSET_ISEMPTY_STATIC_PROP (isset) string("sprop") V9
0010 FREE T10
0011 V11 = FETCH_CLASS (exception) CV0($obj)
0012 UNSET_STATIC_PROP string("sprop") V11
0013 T12 = FETCH_CLASS_NAME CV0($obj)
0014 ECHO T12
0015 T13 = CLONE CV0($obj)
0016 ASSIGN CV1($obj2) T13
0017 T15 = INSTANCEOF CV1($obj2) string("myclass")
0018 JMPZ T15 0020
0019 ECHO string("instance of myclass
")
0020 V16 = FETCH_STATIC_PROP_W (dim write) string("dict") string("myclass")
0021 ASSIGN_DIM V16 string("abc")
0022 OP_DATA int(1)
0023 T18 = FETCH_STATIC_PROP_R string("dict") string("myclass")
0024 T19 = FETCH_DIM_R T18 string("abc")
0025 ECHO T19
0026 V20 = FETCH_STATIC_PROP_RW string("dict") string("myclass")
0027 V21 = FETCH_DIM_RW V20 string("abc")
0028 PRE_INC V21
0029 T23 = FETCH_STATIC_PROP_IS string("dict") string("myclass")
0030 T24 = ISSET_ISEMPTY_DIM_OBJ (isset) T23 string("abc")
0031 ASSIGN CV2($c) T24
0032 INIT_FCALL_BY_NAME 1 string("Func")
0033 CHECK_FUNC_ARG 1
0034 V26 = FETCH_STATIC_PROP_FUNC_ARG string("dict") string("myclass")
0035 V27 = FETCH_DIM_FUNC_ARG V26 string("abc")
0036 SEND_FUNC_ARG V27 1
0037 DO_FCALL_BY_NAME
0038 V29 = FETCH_STATIC_PROP_UNSET string("dict") string("myclass")
0039 UNSET_DIM V29 string("abc")
0040 RETURN int(1)
LIVE RANGES:
     4: 0003 - 0004 (new)

Fatal error: Uncaught Error: Attempt to unset static property myclass::$sprop in /usr/src/myapp/codes/opcode_examples/18.php:13
Stack trace:
#0 {main}
  thrown in /usr/src/myapp/codes/opcode_examples/18.php on line 13
