0.2

$_main:
     ; (lines=19, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/21.php:1-19
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 1 160 string("inverse")
0001 SEND_VAL int(5) 1
0002 V2 = DO_UCALL
0003 T3 = CONCAT V2 string("
")
0004 ECHO T3
0005 JMP 0012
0006 CV0($e) = CATCH string("Exception")
0007 ECHO string("Caught exception: ")
0008 INIT_METHOD_CALL 0 CV0($e) string("getMessage")
0009 V4 = DO_FCALL
0010 ECHO V4
0011 ECHO string("
")
0012 T1 = FAST_CALL 0014
0013 JMP 0018
0014 ECHO string("First finally.
")
0015 DISCARD_EXCEPTION T1
0016 RETURN string("finally")
0017 FAST_RET T1
0018 RETURN int(1)
EXCEPTION TABLE:
     0000, 0006, 0014, 0017
inverse:
     ; (lines=10, args=1, vars=1, tmps=4)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/21.php:2-7
     ; return  [] RANGE[0..0]
0000 CV0($x) = RECV 1
0001 T1 = BOOL_NOT CV0($x)
0002 JMPZ T1 0007
0003 V2 = NEW 1 string("Exception")
0004 SEND_VAL_EX string("Division by zero.") 1
0005 DO_FCALL
0006 THROW V2
0007 T4 = DIV int(1) CV0($x)
0008 RETURN T4
0009 RETURN null
LIVE RANGES:
     2: 0004 - 0006 (new)
First finally.
