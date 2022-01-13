something
$_main:
     ; (lines=7, args=0, vars=0, tmps=2)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/20.php:1-5
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 2 112 string("define")
0001 SEND_VAL string("FOO") 1
0002 SEND_VAL string("something") 2
0003 DO_ICALL
0004 T1 = FETCH_CONSTANT string("FOO")
0005 ECHO T1
0006 RETURN int(1)
