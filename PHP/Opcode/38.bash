1
$_main:
     ; (lines=19, args=0, vars=3, tmps=12)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/38.php:1-18
     ; return  [] RANGE[0..0]
0000 DECLARE_CONST string("my\name\MYCONST") int(1)
0001 V3 = NEW 0 string("my\name\MyClass")
0002 DO_FCALL
0003 ASSIGN CV0($a) V3
0004 V6 = NEW 0 string("my\name\MyClass")
0005 DO_FCALL
0006 ASSIGN CV1($c) V6
0007 INIT_NS_FCALL_BY_NAME 1 string("my\name\strlen")
0008 SEND_VAL_EX string("hi") 1
0009 V9 = DO_FCALL_BY_NAME
0010 ASSIGN CV0($a) V9
0011 T11 = FETCH_CONSTANT string("my\name\MYCONST")
0012 ASSIGN CV2($d) T11
0013 ASSIGN CV2($d) string("my\name\MYCONST")
0014 INIT_NS_FCALL_BY_NAME 1 string("my\name\constant")
0015 SEND_VAR_EX CV2($d) 1
0016 V14 = DO_FCALL_BY_NAME
0017 ECHO V14
0018 RETURN int(1)
LIVE RANGES:
     3: 0002 - 0003 (new)
     6: 0005 - 0006 (new)

my\name\myfunction:
     ; (lines=1, args=0, vars=0, tmps=0)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/38.php:5-5
     ; return  [] RANGE[0..0]
0000 RETURN null
