coffee is brown and caffeine makes it special.

$_main:
     ; (lines=17, args=0, vars=4, tmps=12)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/19.php:1-8
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($info) array(...)
0001 T5 = QM_ASSIGN CV0($info)
0002 V6 = FETCH_LIST_R T5 int(0)
0003 ASSIGN CV1($drink) V6
0004 V8 = FETCH_LIST_R T5 int(1)
0005 ASSIGN CV2($color) V8
0006 V10 = FETCH_LIST_R T5 int(2)
0007 ASSIGN CV3($power) V10
0008 FREE T5
0009 T13 = ROPE_INIT 6 CV1($drink)
0010 T13 = ROPE_ADD 1 T13 string(" is ")
0011 T13 = ROPE_ADD 2 T13 CV2($color)
0012 T13 = ROPE_ADD 3 T13 string(" and ")
0013 T13 = ROPE_ADD 4 T13 CV3($power)
0014 T12 = ROPE_END 5 T13 string(" makes it special.
")
0015 ECHO T12
0016 RETURN int(1)
LIVE RANGES:
     5: 0002 - 0008 (tmp/var)
     13: 0009 - 0014 (rope)
