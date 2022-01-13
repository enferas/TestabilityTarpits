
$_main: ; (lines=22, args=0, vars=3, tmps=13)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/87_static_prop_multiple_child/87_static_prop_multiple_children.php:1-12
L0 (3):     NOP
L1 (8):     EXT_STMT
L2 (8):     T3 = FETCH_R (global) string("_GET")
L3 (8):     T4 = FETCH_DIM_R T3 string("p1")
L4 (8):     ASSIGN CV0($b) T4
L5 (9):     EXT_STMT
L6 (9):     V6 = NEW 0 string("child1")
L7 (9):     DO_FCALL
L8 (9):     ASSIGN CV1($C1) V6
L9 (10):    EXT_STMT
L10 (10):   V9 = NEW 0 string("child2")
L11 (10):   DO_FCALL
L12 (10):   ASSIGN CV2($C2) V9
L13 (11):   EXT_STMT
L14 (11):   V12 = FETCH_CLASS (exception) CV2($C2)
L15 (11):   ASSIGN_STATIC_PROP string("b") V12
L16 (11):   OP_DATA CV0($b)
L17 (12):   EXT_STMT
L18 (12):   V14 = FETCH_CLASS (exception) CV1($C1)
L19 (12):   T15 = FETCH_STATIC_PROP_R string("b") V14
L20 (12):   ECHO T15
L21 (12):   RETURN int(1)
LIVE RANGES:
        6: L7 - L8 (new)
        9: L11 - L12 (new)
