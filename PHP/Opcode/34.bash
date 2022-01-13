string
$_main:
     ; (lines=7, args=0, vars=2, tmps=4)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/34.php:1-10
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($a) string("hello")
0001 T3 = GET_TYPE CV0($a)
0002 ECHO T3
0003 ASSIGN CV1($arr) array(...)
0004 T5 = COUNT CV1($arr)
0005 ECHO T5
0006 RETURN int(1)
3