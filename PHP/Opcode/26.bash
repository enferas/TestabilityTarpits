1

$_main:
     ; (lines=18, args=0, vars=1, tmps=6)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/26.php:1-27
     ; return  [] RANGE[0..0]
0000 INIT_FCALL 0 160 string("gen")
0001 V1 = DO_UCALL
0002 V2 = FE_RESET_R V1 0008
0003 FE_FETCH_R V2 CV0($n) 0008
0004 NOP
0005 T3 = FAST_CONCAT CV0($n) string("
")
0006 ECHO T3
0007 JMP 0003
0008 FE_FREE V2
0009 INIT_FCALL 1 96 string("var_dump")
0010 INIT_FCALL 1 96 string("iterator_to_array")
0011 INIT_FCALL 0 144 string("gen2")
0012 V4 = DO_UCALL
0013 SEND_VAR V4 1
0014 V5 = DO_ICALL
0015 SEND_VAR V5 1
0016 DO_ICALL
0017 RETURN int(1)
LIVE RANGES:
     2: 0003 - 0008 (loop)

gen:
     ; (lines=9, args=0, vars=1, tmps=4)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/26.php:3-8
     ; return  [] RANGE[0..0]
0000 GENERATOR_CREATE
0001 ASSIGN CV0($i) int(1)
0002 JMP 0005
0003 YIELD CV0($i)
0004 PRE_INC CV0($i)
0005 T4 = IS_SMALLER_OR_EQUAL CV0($i) int(3)
0006 JMPNZ T4 0003
0007 GENERATOR_RETURN int(4)
0008 GENERATOR_RETURN null

inner:
     ; (lines=5, args=0, vars=0, tmps=3)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/26.php:15-19
     ; return  [] RANGE[0..0]
0000 GENERATOR_CREATE
0001 YIELD int(1)
0002 YIELD int(2)
0003 YIELD int(3)
0004 GENERATOR_RETURN null

gen2:
     ; (lines=8, args=0, vars=0, tmps=4)
     ; (before optimizer)
     ; /usr/src/myapp/codes/opcode_examples/26.php:20-24
     ; return  [] RANGE[0..0]
0000 GENERATOR_CREATE
0001 YIELD int(0)
0002 INIT_FCALL 0 128 string("inner")
0003 V1 = DO_UCALL
0004 T2 = YIELD_FROM V1
0005 FREE T2
0006 YIELD int(4)
0007 GENERATOR_RETURN null
2
3
array(3) {
  [0]=>
  int(1)
  [1]=>
  int(4)
  [2]=>
  int(3)
}
