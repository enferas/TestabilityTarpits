function 
$_main:
     ; (lines=30, args=0, vars=2, tmps=14)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/23.php:1-35
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($func) string("F")
0001 INIT_USER_CALL 1 string("call_user_func") CV0($func)
0002 SEND_USER string("First") 1
0003 DO_FCALL
0004 INIT_USER_CALL 0 string("call_user_func_array") CV0($func)
0005 SEND_ARRAY 0 array(...)
0006 CHECK_UNDEF_ARGS
0007 DO_FCALL
0008 INIT_DYNAMIC_CALL 1 CV0($func)
0009 SEND_VAL_EX string("Third") 1
0010 DO_FCALL
0011 V6 = NEW 0 string("Foo")
0012 DO_FCALL
0013 ASSIGN CV1($obj) V6
0014 T9 = INIT_ARRAY 2 (packed) CV1($obj) NEXT
0015 T9 = ADD_ARRAY_ELEMENT string("M") NEXT
0016 INIT_USER_CALL 0 string("call_user_func") T9
0017 DO_FCALL
0018 V11 = NEW 0 string("Foo")
0019 DO_FCALL
0020 T13 = INIT_ARRAY 2 (packed) V11 NEXT
0021 T13 = ADD_ARRAY_ELEMENT string("M") NEXT
0022 INIT_DYNAMIC_CALL 0 T13
0023 DO_FCALL
0024 INIT_FCALL 3 256 string("f_get")
0025 SEND_VAL string("First") 1
0026 SEND_VAL string("second") 2
0027 SEND_VAL string("third") 3
0028 DO_UCALL
0029 RETURN int(1)
LIVE RANGES:
     6: 0012 - 0013 (new)
     9: 0015 - 0016 (tmp/var)
     11: 0019 - 0020 (new)
     13: 0021 - 0022 (tmp/var)

F:
     ; (lines=6, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/23.php:9-12
     ; return  [] RANGE[0..0]
0000 CV0($x) = RECV 1
0001 ECHO string("function ")
0002 NOP
0003 T1 = FAST_CONCAT CV0($x) string("
")
0004 ECHO T1
0005 RETURN null

f_get:
     ; (lines=11, args=0, vars=3, tmps=5)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/23.php:14-21
     ; return  [] RANGE[0..0]
0000 T3 = FUNC_NUM_ARGS
0001 ASSIGN CV0($x) T3
0002 ECHO CV0($x)
0003 T5 = FUNC_GET_ARGS
0004 ASSIGN CV1($args) T5
0005 V7 = FE_RESET_R CV1($args) 0009
0006 FE_FETCH_R V7 CV2($a) 0009
0007 ECHO CV2($a)
0008 JMP 0006
0009 FE_FREE V7
0010 RETURN null
LIVE RANGES:
     7: 0006 - 0009 (loop)

Foo::M:
     ; (lines=2, args=0, vars=0, tmps=0)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/23.php:4-6
     ; return  [] RANGE[0..0]
0000 ECHO string("Method
")
0001 RETURN null
First
function Second
function Third
Method
Method
3Firstsecondthird