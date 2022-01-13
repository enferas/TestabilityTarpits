
Fatal error: Uncaught Error: Undefined constant "ASSERT_QUIET_EVAL" in /usr/src/myapp/codes/opcode_examples/36.php:5
Stack trace:
#0 {main}
  thrown in /usr/src/myapp/codes/opcode_examples/36.php on line 5

$_main:
     ; (lines=28, args=0, vars=0, tmps=7)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/36.php:1-23
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 2 112 string("assert_options")
0001 SEND_VAL int(1) 1
0002 SEND_VAL int(1) 2
0003 DO_ICALL
0004 INIT_FCALL 2 112 string("assert_options")
0005 SEND_VAL int(4) 1
0006 SEND_VAL int(0) 2
0007 DO_ICALL
0008 INIT_FCALL 2 112 string("assert_options")
0009 T2 = FETCH_CONSTANT string("ASSERT_QUIET_EVAL")
0010 SEND_VAL T2 1
0011 SEND_VAL int(1) 2
0012 DO_ICALL
0013 INIT_FCALL 2 112 string("assert_options")
0014 SEND_VAL int(2) 1
0015 SEND_VAL string("my_assert_handler") 2
0016 DO_ICALL
0017 ASSERT_CHECK 0022
0018 INIT_FCALL 2 112 string("assert")
0019 SEND_VAL string("2 < 1") 1
0020 SEND_VAL string("assert('2 < 1')") 2
0021 DO_ICALL
0022 ASSERT_CHECK 0027
0023 INIT_FCALL 2 112 string("assert")
0024 SEND_VAL string("2 < 1") 1
0025 SEND_VAL string("Two is less than one") 2
0026 DO_ICALL
0027 RETURN int(1)

my_assert_handler:
     ; (lines=17, args=4, vars=4, tmps=5)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/36.php:8-15
     ; return  [] RANGE[0..0]
0000 CV0($file) = RECV 1
0001 CV1($line) = RECV 2
0002 CV2($code) = RECV 3
0003 CV3($desc) = RECV_INIT 4 null
0004 T5 = ROPE_INIT 6 string("Assertion failed at ")
0005 T5 = ROPE_ADD 1 T5 CV0($file)
0006 T5 = ROPE_ADD 2 T5 string(":")
0007 T5 = ROPE_ADD 3 T5 CV1($line)
0008 T5 = ROPE_ADD 4 T5 string(": ")
0009 T4 = ROPE_END 5 T5 CV2($code)
0010 ECHO T4
0011 JMPZ CV3($desc) 0015
0012 NOP
0013 T8 = FAST_CONCAT string(": ") CV3($desc)
0014 ECHO T8
0015 ECHO string("
")
0016 RETURN null
LIVE RANGES:
     5: 0004 - 0009 (rope)
