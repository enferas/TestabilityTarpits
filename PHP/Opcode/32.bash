string(3) "
$_main:
     ; (lines=14, args=0, vars=1, tmps=7)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/32.php:1-31
     ; return  [] RANGE[0..0]
0000 INIT_STATIC_METHOD_CALL 0 string("foo") string("test")
0001 DO_UCALL
0002 INIT_STATIC_METHOD_CALL 0 string("bar") string("test")
0003 DO_UCALL
0004 V3 = NEW 0 string("foo2")
0005 DO_FCALL
0006 ASSIGN CV0($bar) V3
0007 ECHO string("Its name is ")
0008 T6 = GET_CLASS CV0($bar)
0009 ECHO T6
0010 ECHO string("
")
0011 INIT_METHOD_CALL 0 CV0($bar) string("name")
0012 DO_FCALL
0013 RETURN int(1)
LIVE RANGES:
     3: 0005 - 0006 (new)

foo::test:
     ; (lines=5, args=0, vars=0, tmps=2)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/32.php:4-6
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 1 96 string("var_dump")
0001 T0 = GET_CALLED_CLASS
0002 SEND_VAL T0 1
0003 DO_ICALL
0004 RETURN null

foo2::name:
     ; (lines=6, args=0, vars=0, tmps=2)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/32.php:17-20
     ; return  [] RANGE[0..0]
0000 ECHO string("My name is ")
0001 T0 = FETCH_THIS
0002 T1 = GET_CLASS T0
0003 ECHO T1
0004 ECHO string("
")
0005 RETURN null
foo"
string(3) "bar"
Its name is foo2
My name is foo2
