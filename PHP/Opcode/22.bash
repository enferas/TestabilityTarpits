Method

$_main:
     ; (lines=8, args=0, vars=1, tmps=5)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/22.php:1-14
     ; return  [] RANGE[0..0]
0000 V1 = NEW 0 string("Foo")
0001 DO_FCALL
0002 ASSIGN CV0($obj) V1
0003 INIT_METHOD_CALL 0 CV0($obj) string("F")
0004 DO_FCALL
0005 INIT_STATIC_METHOD_CALL 0 string("Foo") string("sF")
0006 DO_UCALL
0007 RETURN int(1)
LIVE RANGES:
     1: 0001 - 0002 (new)

Foo::F:
     ; (lines=2, args=0, vars=0, tmps=0)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/22.php:4-6
     ; return  [] RANGE[0..0]
0000 ECHO string("Method
")
0001 RETURN null

Foo::sF:
     ; (lines=2, args=0, vars=0, tmps=0)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/22.php:7-9
     ; return  [] RANGE[0..0]
0000 ECHO string("Static Method
")
0001 RETURN null
Static Method
