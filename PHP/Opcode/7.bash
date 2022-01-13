i equals 1
$_main:
     ; (lines=37, args=0, vars=3, tmps=7)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/7.php:1-37
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($i) int(1)
0001 T4 = IS_EQUAL CV0($i) int(0)
0002 JMPNZ T4 0006
0003 T4 = IS_EQUAL CV0($i) int(1)
0004 JMPNZ T4 0008
0005 JMP 0010
0006 ECHO string("i equals 0")
0007 JMP 0012
0008 ECHO string("i equals 1")
0009 JMP 0012
0010 ECHO string("i equals 2")
0011 JMP 0012
0012 ASSIGN CV1($str) string("abcdef")
0013 ASSIGN CV2($x) string("abc")
0014 SWITCH_STRING CV1($str) "abc": 0020, "abcdef": 0022, default: 0024
0015 T7 = IS_EQUAL CV1($str) string("abc")
0016 JMPNZ T7 0020
0017 T7 = IS_EQUAL CV1($str) string("abcdef")
0018 JMPNZ T7 0022
0019 JMP 0024
0020 ECHO string("first")
0021 JMP 0025
0022 ECHO string("second")
0023 JMP 0025
0024 ECHO string("not exist")
0025 T8 = STRLEN CV1($str)
0026 T9 = CASE T8 int(5)
0027 JMPNZ T9 0031
0028 T9 = CASE T8 int(6)
0029 JMPNZ T9 0033
0030 JMP 0035
0031 ECHO string("five")
0032 JMP 0035
0033 ECHO string("six")
0034 JMP 0035
0035 FREE T8
0036 RETURN int(1)
LIVE RANGES:
     8: 0026 - 0035 (tmp/var)
secondsix