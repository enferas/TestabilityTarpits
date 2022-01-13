
Warning: Undefined variable $message in /usr/src/myapp/codes/opcode_examples/29.php on line 10

$_main:
     ; (lines=14, args=0, vars=4, tmps=8)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/29.php:1-23
     ; return  [] RANGE[0..0]
0000 V4 = DECLARE_ANON_CLASS string("class@anonymous")
0001 V5 = NEW 0 V4
0002 DO_FCALL
0003 ASSIGN CV0($util) V5
0004 T8 = DECLARE_LAMBDA_FUNCTION 0
0005 ASSIGN CV1($func) T8
0006 T10 = DECLARE_LAMBDA_FUNCTION 1
0007 BIND_LEXICAL T10 CV3($message)
0008 ASSIGN CV2($example) T10
0009 JMPZ bool(true) 0011
0010 DECLARE_FUNCTION string("f") 2
0011 JMPZ bool(true) 0013
0012 DECLARE_CLASS string("myclass")
0013 RETURN int(1)
LIVE RANGES:
     5: 0002 - 0003 (new)
     10: 0007 - 0008 (tmp/var)

{closure}:
     ; (lines=5, args=2, vars=2, tmps=1)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/29.php:7-7
     ; return  [] RANGE[0..0]
0000 CV0($a) = RECV 1
0001 CV1($b) = RECV 2
0002 T2 = MUL CV0($a) CV1($b)
0003 RETURN T2
0004 RETURN null

{closure}:
     ; (lines=3, args=0, vars=1, tmps=0)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/29.php:10-12
     ; return  [] RANGE[0..0]
0000 BIND_STATIC CV0($message)
0001 ECHO CV0($message)
0002 RETURN null

F:
     ; (lines=1, args=0, vars=0, tmps=0)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/29.php:16-16
     ; return  [] RANGE[0..0]
0000 RETURN null
