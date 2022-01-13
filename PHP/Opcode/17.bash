
$_main:
     ; (lines=100, args=0, vars=5, tmps=45)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/17.php:1-55
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($x) int(3)
0001 ASSIGN CV1($y) string("x")
0002 ASSIGN CV2($fv) string("F2")
0003 INIT_DYNAMIC_CALL 1 CV2($fv)
0004 CHECK_FUNC_ARG 1
0005 V8 = FETCH_FUNC_ARG (local) CV1($y)
0006 SEND_FUNC_ARG V8 1
0007 DO_FCALL
0008 INIT_FCALL_BY_NAME 1 string("Func")
0009 CHECK_FUNC_ARG 1
0010 V10 = FETCH_FUNC_ARG (local) CV1($y)
0011 SEND_FUNC_ARG V10 1
0012 DO_FCALL_BY_NAME
0013 ASSIGN CV3($arr) array(...)
0014 INIT_DYNAMIC_CALL 1 CV2($fv)
0015 CHECK_FUNC_ARG 1
0016 V13 = FETCH_DIM_FUNC_ARG CV3($arr) int(1)
0017 SEND_FUNC_ARG V13 1
0018 DO_FCALL
0019 INIT_FCALL_BY_NAME 1 string("Func")
0020 CHECK_FUNC_ARG 1
0021 V15 = FETCH_DIM_FUNC_ARG CV3($arr) int(1)
0022 SEND_FUNC_ARG V15 1
0023 DO_FCALL_BY_NAME
0024 V17 = NEW 0 string("myclass")
0025 DO_FCALL
0026 ASSIGN CV4($obj) V17
0027 ASSIGN_OBJ CV4($obj) string("prop")
0028 OP_DATA int(2)
0029 INIT_DYNAMIC_CALL 1 CV2($fv)
0030 CHECK_FUNC_ARG 1
0031 V21 = FETCH_OBJ_FUNC_ARG (ref) CV4($obj) string("prop")
0032 SEND_FUNC_ARG V21 1
0033 DO_FCALL
0034 INIT_DYNAMIC_CALL 1 CV2($fv)
0035 CHECK_FUNC_ARG 1
0036 V23 = FETCH_OBJ_FUNC_ARG (ref) CV4($obj) string("prop")
0037 SEND_FUNC_ARG V23 1
0038 DO_FCALL
0039 ASSIGN_STATIC_PROP string("sprop") string("myclass")
0040 OP_DATA int(2)
0041 INIT_DYNAMIC_CALL 1 CV2($fv)
0042 CHECK_FUNC_ARG 1
0043 V26 = FETCH_STATIC_PROP_FUNC_ARG (ref) string("sprop") string("myclass")
0044 SEND_FUNC_ARG V26 1
0045 DO_FCALL
0046 INIT_FCALL_BY_NAME 1 string("Func")
0047 CHECK_FUNC_ARG 1
0048 V28 = FETCH_STATIC_PROP_FUNC_ARG (ref) string("sprop") string("myclass")
0049 SEND_FUNC_ARG V28 1
0050 DO_FCALL_BY_NAME
0051 INIT_FCALL_BY_NAME 1 string("Func")
0052 CHECK_FUNC_ARG 1
0053 INIT_FCALL 0 112 string("f_array")
0054 V30 = DO_UCALL
0055 V30 = SEPARATE V30
0056 V31 = FETCH_DIM_FUNC_ARG V30 int(1)
0057 SEND_FUNC_ARG V31 1
0058 DO_FCALL_BY_NAME
0059 INIT_FCALL_BY_NAME 1 string("Func")
0060 CHECK_FUNC_ARG 1
0061 INIT_FCALL 0 160 string("f_object")
0062 V33 = DO_UCALL
0063 V33 = SEPARATE V33
0064 V34 = FETCH_OBJ_FUNC_ARG (ref) V33 string("prop")
0065 SEND_FUNC_ARG V34 1
0066 DO_FCALL_BY_NAME
0067 INIT_FCALL_BY_NAME 1 string("Func")
0068 CHECK_FUNC_ARG 1
0069 INIT_FCALL 0 160 string("f_object")
0070 V36 = DO_UCALL
0071 V37 = FETCH_CLASS (exception) V36
0072 V38 = FETCH_STATIC_PROP_FUNC_ARG (ref) string("sprop") V37
0073 SEND_FUNC_ARG V38 1
0074 DO_FCALL_BY_NAME
0075 INIT_DYNAMIC_CALL 1 CV2($fv)
0076 CHECK_FUNC_ARG 1
0077 INIT_FCALL 0 112 string("f_array")
0078 V40 = DO_UCALL
0079 V40 = SEPARATE V40
0080 V41 = FETCH_DIM_FUNC_ARG V40 int(1)
0081 SEND_FUNC_ARG V41 1
0082 DO_FCALL
0083 INIT_DYNAMIC_CALL 1 CV2($fv)
0084 CHECK_FUNC_ARG 1
0085 INIT_FCALL 0 112 string("f_array")
0086 V43 = DO_UCALL
0087 V43 = SEPARATE V43
0088 V44 = FETCH_OBJ_FUNC_ARG (ref) V43 string("prop")
0089 SEND_FUNC_ARG V44 1
0090 DO_FCALL
0091 INIT_DYNAMIC_CALL 1 CV2($fv)
0092 CHECK_FUNC_ARG 1
0093 INIT_FCALL 0 160 string("f_object")
0094 V46 = DO_UCALL
0095 V47 = FETCH_CLASS (exception) V46
0096 V48 = FETCH_STATIC_PROP_FUNC_ARG (ref) string("sprop") V47
0097 SEND_FUNC_ARG V48 1
0098 DO_FCALL
0099 RETURN int(1)
LIVE RANGES:
     17: 0025 - 0026 (new)

F_array:
     ; (lines=3, args=0, vars=1, tmps=1)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/17.php:8-11
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($arr) array(...)
0001 RETURN CV0($arr)
0002 RETURN null

F_object:
     ; (lines=7, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/17.php:13-17
     ; return  [] RANGE[0..0]
0000 V1 = NEW 0 string("myclass")
0001 DO_FCALL
0002 ASSIGN CV0($obj) V1
0003 ASSIGN_OBJ CV0($obj) string("prop")
0004 OP_DATA int(2)
0005 RETURN CV0($obj)
0006 RETURN null
LIVE RANGES:
     1: 0001 - 0002 (new)

F2:
     ; (lines=3, args=1, vars=1, tmps=0)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/17.php:19-19
     ; return  [] RANGE[0..0]
0000 CV0($t) = RECV 1
0001 ECH3O CV0($t)
0002 RETURN null

Fatal error: Uncaught Error: Call to undefined function Func() in /usr/src/myapp/codes/opcode_examples/17.php:29
Stack trace:
#0 {main}
  thrown in /usr/src/myapp/codes/opcode_examples/17.php on line 29
