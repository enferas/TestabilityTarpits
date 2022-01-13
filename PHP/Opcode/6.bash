
$_main:
     ; (lines=28, args=0, vars=2, tmps=23)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/6.php:1-21
     ; return  [] RANGE[0..0]
0000 ASSIGN_STATIC_PROP string("a") string("myclass")
0001 OP_DATA int(5)
0002 T3 = PRE_INC_STATIC_PROP string("a") string("myclass")
0003 T4 = POST_INC_STATIC_PROP string("a") string("myclass")
0004 T5 = ADD T3 T4
0005 ASSIGN CV0($c) T5
0006 T7 = PRE_DEC_STATIC_PROP string("a") string("myclass")
0007 T8 = POST_DEC_STATIC_PROP string("a") string("myclass")
0008 T9 = ADD T7 T8
0009 ASSIGN CV0($c) T9
0010 ASSIGN_STATIC_PROP_OP (ADD) string("a") string("myclass")
0011 OP_DATA int(2)
0012 V12 = NEW 0 string("myclass")
0013 DO_FCALL
0014 ASSIGN CV1($obj) V12
0015 ASSIGN_OBJ CV1($obj) string("b")
0016 OP_DATA int(2)
0017 T16 = PRE_INC_OBJ CV1($obj) string("b")
0018 T17 = POST_INC_OBJ CV1($obj) string("b")
0019 T18 = ADD T16 T17
0020 ASSIGN CV0($c) T18
0021 T20 = PRE_DEC_OBJ CV1($obj) string("b")
0022 T21 = POST_DEC_OBJ CV1($obj) string("b")
0023 T22 = ADD T20 T21
0024 ASSIGN CV0($c) T22
0025 ASSIGN_OBJ_OP (ADD) CV1($obj) string("b")
0026 OP_DATA int(2)
0027 RETURN int(1)
LIVE RANGES:
     3: 0003 - 0004 (tmp/var)
     7: 0007 - 0008 (tmp/var)
     12: 0013 - 0014 (new)
     16: 0018 - 0019 (tmp/var)
     20: 0022 - 0023 (tmp/var)
