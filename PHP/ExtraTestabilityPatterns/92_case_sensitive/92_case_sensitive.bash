
$_main: ; (lines=14, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/77_case_sensitive/77_case_sensitive.php:1-13
L0 (4):     NOP
L1 (10):    EXT_STMT
L2 (10):    V2 = NEW 0 string("Myclass")
L3 (10):    DO_FCALL
L4 (10):    ASSIGN CV0($obj1) V2
L5 (11):    EXT_STMT
L6 (11):    T5 = FETCH_R (global) string("_GET")
L7 (11):    T6 = FETCH_DIM_R T5 string("p1")
L8 (11):    ASSIGN CV1($x) T6
L9 (13):    EXT_STMT
L10 (13):   INIT_METHOD_CALL 1 CV0($obj1) string("f")
L11 (13):   SEND_VAR_EX CV1($x) 1
L12 (13):   DO_FCALL
L13 (13):   RETURN int(1)
LIVE RANGES:
        2: L3 - L4 (new)

myclass::F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/77_case_sensitive/77_case_sensitive.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($x) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ECHO CV0($x)
L4 (7):     EXT_STMT
L5 (7):     RETURN null
