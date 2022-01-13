2
$_main:
     ; (lines=5, args=0, vars=1, tmps=2)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/12.php:1-10
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) int(1)
0001 INIT_FCALL 1 112 string("f")
0002 SEND_REF CV0($a) 1
0003 DO_UCALL
0004 RETURN int(1)

F:
     ; (lines=4, args=1, vars=1, tmps=1)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/12.php:3-6
     ; return  [] RANGE[0..0]
0000 CV0($a) = RECV 1
0001 PRE_INC CV0($a)
0002 ECHO CV0($a)
0003 RETURN null
