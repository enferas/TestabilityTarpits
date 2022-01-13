
$_main:
     ; (lines=21, args=0, vars=3, tmps=18)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/3.php:1-14
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) bool(true)
0001 ASSIGN CV1($b) bool(false)
0002 T5 = BOOL_NOT CV0($a)
0003 ASSIGN CV2($c) T5
0004 T7 = ASSIGN CV2($c) CV0($a)
0005 T8 = BOOL_XOR CV1($b) T7
0006 FREE T8
0007 T9 = IS_IDENTICAL CV0($a) CV1($b)
0008 ASSIGN CV2($c) T9
0009 T11 = IS_NOT_IDENTICAL CV0($a) CV1($b)
0010 ASSIGN CV2($c) T11
0011 T13 = IS_EQUAL CV0($a) CV1($b)
0012 ASSIGN CV2($c) T13
0013 T15 = IS_NOT_EQUAL CV0($a) CV1($b)
0014 ASSIGN CV2($c) T15
0015 T17 = JMPNZ_EX CV0($a) 0017
0016 T17 = BOOL CV1($b)
0017 ASSIGN CV2($c) T17
0018 T19 = SPACESHIP CV0($a) CV1($b)
0019 ASSIGN CV2($c) T19
0020 RETURN int(1)
