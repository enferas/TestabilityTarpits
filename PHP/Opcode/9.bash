
$_main:
     ; (lines=14, args=0, vars=3, tmps=11)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/9.php:1-11
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) string("abc")
0001 ASSIGN CV1($b) string("cde")
0002 T5 = CONCAT CV0($a) CV1($b)
0003 ASSIGN CV2($c) T5
0004 NOP
0005 T7 = FAST_CONCAT CV0($a) string("
")
0006 ASSIGN CV2($c) T7
0007 T10 = ROPE_INIT 5 string("--")
0008 T10 = ROPE_ADD 1 T10 CV0($a)
0009 T10 = ROPE_ADD 2 T10 string("--")
0010 T10 = ROPE_ADD 3 T10 CV1($b)
0011 T9 = ROPE_END 4 T10 string("--
")
0012 ASSIGN CV2($c) T9
0013 RETURN int(1)
LIVE RANGES:
     10: 0007 - 0011 (rope)
