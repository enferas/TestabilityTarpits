5
$_main:
     ; (lines=23, args=0, vars=4, tmps=17)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/25.php:1-24
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($x) int(1)
0001 ASSIGN_REF CV1($y) CV0($x)
0002 ASSIGN CV1($y) int(5)
0003 ECHO CV0($x)
0004 ASSIGN CV2($arr) array(...)
0005 V9 = FETCH_DIM_W CV2($arr) int(3)
0006 V10 = MAKE_REF V9
0007 V8 = FETCH_DIM_W CV2($arr) int(1)
0008 ASSIGN_REF V8 V10
0009 ASSIGN_DIM CV2($arr) int(3)
0010 OP_DATA int(5)
0011 T13 = FETCH_DIM_R CV2($arr) int(1)
0012 ECHO T13
0013 ASSIGN CV0($x) int(5)
0014 V15 = NEW 0 string("myclass")
0015 DO_FCALL
0016 ASSIGN CV3($obj) V15
0017 ASSIGN_OBJ_REF CV3($obj) string("prop")
0018 OP_DATA CV0($x)
0019 ASSIGN CV1($y) int(3)
0020 ASSIGN_STATIC_PROP_REF string("sprop") string("myclass")
0021 OP_DATA CV1($y)
0022 RETURN int(1)
LIVE RANGES:
     10: 0007 - 0008 (tmp/var)
     15: 0015 - 0016 (new)
5