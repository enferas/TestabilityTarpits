
Warning: include(file.php): Failed to open stream: No such file or directory in /usr/src/myapp/codes/opcode_examples/13.php on line 3

$_main:
     ; (lines=8, args=0, vars=1, tmps=6)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/13.php:1-7
     ; return  [] RANGE[0..0]
0000 INCLUDE_OR_EVAL (include) string("file.php")
0001 T3 = ROPE_INIT 3 string("$str = "")
0002 T3 = ROPE_ADD 1 T3 CV0($str)
0003 T2 = ROPE_END 2 T3 string("";")
0004 INCLUDE_OR_EVAL (eval) T2
0005 T6 = CONCAT CV0($str) string("
")
0006 ECHO T6
0007 RETURN int(1)
LIVE RANGES:
     3: 0001 - 0003 (rope)

Warning: include(): Failed opening 'file.php' for inclusion (include_path='.:') in /usr/src/myapp/codes/opcode_examples/13.php on line 3

Warning: Undefined variable $str in /usr/src/myapp/codes/opcode_examples/13.php on line 5

