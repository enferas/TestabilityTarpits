1
$_main:
     ; (lines=17, args=0, vars=2, tmps=5)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/15.php:1-16
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($arr) array(...)
0001 V3 = FE_RESET_R CV0($arr) 0005
0002 FE_FETCH_R V3 CV1($a) 0005
0003 ECHO CV1($a)
0004 JMP 0002
0005 FE_FREE V3
0006 V4 = FE_RESET_RW CV0($arr) 0010
0007 FE_FETCH_RW V4 CV1($a) 0010
0008 PRE_INC CV1($a)
0009 JMP 0007
0010 FE_FREE V4
0011 V6 = FE_RESET_R CV0($arr) 0015
0012 FE_FETCH_R V6 CV1($a) 0015
0013 ECHO CV1($a)
0014 JMP 0012
0015 FE_FREE V6
0016 RETURN int(1)
LIVE RANGES:
     3: 0002 - 0005 (loop)
     4: 0007 - 0010 (loop)
     6: 0012 - 0015 (loop)
23233