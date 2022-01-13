
$_main:
     ; (lines=6, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/5.php:1-8
     ; return  [] RANGE[0..0]
0000 V1 = NEW 0 string("myclass")
0001 DO_FCALL
0002 ASSIGN CV0($mc) V1
0003 ASSIGN_OBJ CV0($mc) string("a")
0004 OP_DATA string("abc")
0005 RETURN int(1)
LIVE RANGES:
     1: 0001 - 0002 (new)
