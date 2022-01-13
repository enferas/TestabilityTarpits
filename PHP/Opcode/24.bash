15
$_main:
     ; (lines=7, args=0, vars=1, tmps=3)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/24.php:1-15
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($str) string("String Variable")
0001 T2 = STRLEN CV0($str)
0002 ECHO T2
0003 T3 = TYPE_CHECK (string) CV0($str)
0004 JMPZ T3 0006
0005 ECHO string("It is String
")
0006 RETURN int(1)

F:
     ; (lines=5, args=0, vars=1, tmps=1)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/24.php:11-14
     ; return  [] RANGE[0..0]
0000 ASSIGN CV0($x) string("abc")
0001 VERIFY_RETURN_TYPE CV0($x)
0002 RETURN CV0($x)
0003 VERIFY_RETURN_TYPE
0004 RETURN null
It is String
