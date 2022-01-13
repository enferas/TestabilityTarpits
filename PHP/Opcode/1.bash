
$_main:
     ; (lines=14, args=0, vars=3, tmps=12)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/1.php:1-10
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) int(1)
0001 T4 = PRE_INC CV0($a)
0002 T5 = POST_INC CV0($a)
0003 T6 = ADD T4 T5
0004 ASSIGN CV1($c) T6
0005 T8 = PRE_DEC CV0($a)
0006 T9 = POST_DEC CV0($a)
0007 T10 = ADD T8 T9
0008 ASSIGN CV1($c) T10
0009 ASSIGN_OP (ADD) CV0($a) int(3)
0010 ASSIGN CV2($arr) array(...)
0011 ASSIGN_DIM_OP (ADD) CV2($arr) int(0)
0012 OP_DATA int(2)
0013 RETURN int(1)
LIVE RANGES:
     4: 0002 - 0003 (tmp/var)
     8: 0006 - 0007 (tmp/var)
