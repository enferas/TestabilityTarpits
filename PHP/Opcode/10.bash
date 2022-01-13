
Warning: Undefined variable $php_errormsg in /usr/src/myapp/codes/opcode_examples/10.php on line 3

$_main:
     ; (lines=13, args=0, vars=2, tmps=6)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/10.php:1-4
     ; return  [] RANGE[0..0]
0000 T2 = BEGIN_SILENCE
0001 INIT_FCALL 1 96 string("file")
0002 SEND_VAL string("non_existent_file") 1
0003 V3 = DO_ICALL
0004 END_SILENCE T2
0005 T4 = ASSIGN CV0($my_file) V3
0006 T4 = JMPNZ_EX T4 0012
0007 T6 = ROPE_INIT 3 string("error:'")
0008 T6 = ROPE_ADD 1 T6 CV1($php_errormsg)
0009 T5 = ROPE_END 2 T6 string("'")
0010 EXIT T5
0011 T4 = BOOL bool(true)
0012 RETURN int(1)
LIVE RANGES:
     2: 0001 - 0004 (silence)
     3: 0004 - 0005 (tmp/var)
     6: 0007 - 0009 (rope)
error:''