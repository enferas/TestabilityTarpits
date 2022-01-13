
$_main:
     ; (lines=4, args=0, vars=1, tmps=3)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/31.php:1-11
     ; return  [] RANGE[0..0]
0000 V1 = NEW 0 string("foo")
0001 DO_FCALL
0002 ASSIGN CV0($obj) V1
0003 RETURN int(1)
LIVE RANGES:
     1: 0001 - 0002 (new)

foo::getValue:
     ; (lines=3, args=0, vars=0, tmps=1)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/31.php:5-7
     ; return  [] RANGE[0..0]
0000 V0 = FETCH_OBJ_W (ref) THIS string("value")
0001 RETURN_BY_REF V0
0002 RETURN_BY_REF (function) null
