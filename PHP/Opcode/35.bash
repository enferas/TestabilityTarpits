something
$_main:
     ; (lines=9, args=0, vars=0, tmps=3)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/35.php:1-8
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 2 112 string("define")
0001 SEND_VAL string("FOO") 1
0002 SEND_VAL string("something") 2
0003 DO_ICALL
0004 T1 = DEFINED string("FOO")
0005 JMPZ T1 0008
0006 T2 = FETCH_CONSTANT string("FOO")
0007 ECHO T2
0008 RETURN int(1)
