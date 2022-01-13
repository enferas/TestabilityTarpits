1
$_main:
     ; (lines=15, args=0, vars=4, tmps=7)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/28.php:1-12
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($arr) array(...)
0001 T5 = FETCH_DIM_IS CV0($arr) int(4)
0002 T6 = COALESCE T5 0005
0003 T7 = FETCH_DIM_R CV0($arr) int(0)
0004 T6 = QM_ASSIGN T7
0005 ECHO T6
0006 JMPZ bool(false) 0009
0007 T8 = QM_ASSIGN int(4)
0008 JMP 0010
0009 T8 = QM_ASSIGN int(5)
0010 ASSIGN CV1($a) T8
0011 BIND_GLOBAL CV2($gb) string("gb")
0012 ASSIGN CV2($gb) int(5)
0013 BIND_STATIC (ref) CV3($st)
0014 RETURN int(1)
