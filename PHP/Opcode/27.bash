2
$_main:
     ; (lines=5, args=0, vars=0, tmps=2)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/27.php:1-13
     ; return  [] RANGE[0..0]
0000 ASSIGN_STATIC_PROP string("b") string("Foo")
0001 OP_DATA int(2)
0002 T1 = FETCH_STATIC_PROP_R string("b") string("Foo")
0003 ECHO T1
0004 RETURN int(1)
