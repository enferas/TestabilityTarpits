
Fatal error: Uncaught Error: Class "A" not found in /usr/src/myapp/codes/opcode_examples/14.php:9
Stack trace:
#0 {main}
  thrown in /usr/src/myapp/codes/opcode_examples/14.php on line 9

$_main:
     ; (lines=9, args=0, vars=3, tmps=5)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/14.php:1-11
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($x) int(1)
0001 UNSET_CV CV0($x)
0002 ASSIGN CV1($y) array(...)
0003 UNSET_DIM CV1($y) int(0)
0004 V5 = NEW 0 string("A")
0005 DO_FCALL
0006 ASSIGN CV2($obj) V5
0007 UNSET_OBJ CV2($obj) string("num")
0008 RETURN int(1)
LIVE RANGES:
     5: 0005 - 0006 (new)
