one

$_main:
     ; (lines=31, args=0, vars=5, tmps=11)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/30.php:1-34
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 3 192 string("f1")
0001 SEND_VAL string("one") 1
0002 SEND_VAL string("two") 2
0003 SEND_VAL string("three") 3
0004 DO_UCALL
0005 ASSIGN CV0($arr) array(...)
0006 INIT_FCALL 0 144 string("f2")
0007 SEND_UNPACK CV0($arr)
0008 CHECK_UNDEF_ARGS
0009 DO_UCALL
0010 ASSIGN CV1($arr_small) array(...)
0011 T9 = INIT_ARRAY 4 (packed) string("a") NEXT
0012 T9 = ADD_ARRAY_ELEMENT string("b") NEXT
0013 T9 = ADD_ARRAY_ELEMENT string("c") NEXT
0014 T9 = ADD_ARRAY_UNPACK CV1($arr_small)
0015 ASSIGN CV2($arr_big) T9
0016 V11 = FE_RESET_R CV2($arr_big) 0022
0017 FE_FETCH_R V11 CV3($a) 0022
0018 NOP
0019 T12 = FAST_CONCAT CV3($a) string("
")
0020 ECHO T12
0021 JMP 0017
0022 FE_FREE V11
0023 T13 = ARRAY_KEY_EXISTS int(1) CV0($arr)
0024 JMPZ T13 0026
0025 ECHO string("key exist")
0026 ASSIGN CV4($t) string("two")
0027 T15 = IN_ARRAY 0 CV4($t) array(...)
0028 JMPZ T15 0030
0029 ECHO string("value exist")
0030 RETURN int(1)
LIVE RANGES:
     9: 0012 - 0015 (tmp/var)
     11: 0017 - 0022 (loop)

F1:
     ; (lines=9, args=0, vars=2, tmps=2)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/30.php:3-7
     ; return  [] RANGE[0..0]
0000 CV0($arr) = RECV_VARIADIC 1
0001 V2 = FE_RESET_R CV0($arr) 0007
0002 FE_FETCH_R V2 CV1($a) 0007
0003 NOP
0004 T3 = FAST_CONCAT CV1($a) string("
")
0005 ECHO T3
0006 JMP 0002
0007 FE_FREE V2
0008 RETURN null
LIVE RANGES:
     2: 0002 - 0007 (loop)

F2:
     ; (lines=9, args=2, vars=2, tmps=2)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/30.php:9-12
     ; return  [] RANGE[0..0]
0000 CV0($a1) = RECV 1
0001 CV1($a2) = RECV 2
0002 NOP
0003 T2 = FAST_CONCAT CV0($a1) string("
")
0004 ECHO T2
0005 NOP
0006 T3 = FAST_CONCAT CV1($a2) string("
")
0007 ECHO T3
0008 RETURN null
two
three
one
two
a
b
c
1
2
3
key existvalue exist