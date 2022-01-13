1
$_main:
     ; (lines=10, args=0, vars=2, tmps=4)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/11.php:1-12
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) int(1)
0001 ASSIGN CV1($x) string("F")
0002 INIT_DYNAMIC_CALL 1 CV1($x)
0003 SEND_VAR_EX CV0($a) 1
0004 DO_FCALL
0005 INIT_FCALL 2 112 string("f")
0006 SEND_VAR CV0($a) 1
0007 SEND_VAL int(3) 2
0008 DO_UCALL
0009 RETURN int(1)

F:
     ; (lines=4, args=2, vars=2, tmps=0)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/11.php:3-5
     ; return  [] RANGE[0..0]
0000 CV0($a) = RECV 1
0001 CV1($b) = RECV_INIT 2 int(2)
0002 ECHO CV0($a)
0003 RETURN null
1