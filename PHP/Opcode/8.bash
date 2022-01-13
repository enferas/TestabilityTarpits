1
$_main:
     ; (lines=5, args=0, vars=2, tmps=3)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/8.php:1-5
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) string("1")
0001 T3 = CAST (long) CV0($a)
0002 ASSIGN CV1($b) T3
0003 ECHO CV1($b)
0004 RETURN int(1)
