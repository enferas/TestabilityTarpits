
$_main:
     ; (lines=31, args=0, vars=3, tmps=30)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/2.php:1-21
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) int(1)
0001 ASSIGN CV1($b) int(2)
0002 T5 = ADD CV0($a) CV1($b)
0003 ASSIGN CV2($c) T5
0004 T7 = SUB CV0($a) CV1($b)
0005 ASSIGN CV2($c) T7
0006 T9 = MUL CV0($a) CV1($b)
0007 ASSIGN CV2($c) T9
0008 T11 = DIV CV0($a) CV1($b)
0009 ASSIGN CV2($c) T11
0010 T13 = MOD CV0($a) CV1($b)
0011 ASSIGN CV2($c) T13
0012 T15 = SL CV1($b) int(1)
0013 ASSIGN CV2($c) T15
0014 T17 = SR CV1($b) int(1)
0015 ASSIGN CV2($c) T17
0016 T19 = BW_XOR CV0($a) CV1($b)
0017 ASSIGN CV2($c) T19
0018 T21 = POW CV0($a) CV1($b)
0019 ASSIGN CV2($c) T21
0020 T23 = BW_NOT CV1($b)
0021 ASSIGN CV2($c) T23
0022 T25 = BW_OR CV0($a) CV1($b)
0023 ASSIGN CV2($c) T25
0024 T27 = BW_AND CV0($a) CV1($b)
0025 ASSIGN CV2($c) T27
0026 T29 = IS_SMALLER CV0($a) CV1($b)
0027 ASSIGN CV2($c) T29
0028 T31 = IS_SMALLER_OR_EQUAL CV0($a) CV1($b)
0029 ASSIGN CV2($c) T31
0030 RETURN int(1)