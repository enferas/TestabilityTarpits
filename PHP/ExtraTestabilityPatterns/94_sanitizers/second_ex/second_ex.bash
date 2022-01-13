
$_main: ; (lines=15, args=0, vars=2, tmps=5)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/119_sanitizers/second_ex/second_ex.php:1-7
L0 (2):     EXT_STMT
L1 (2):     T2 = FETCH_R (global) string("_GET")
L2 (2):     T3 = FETCH_DIM_R T2 string("p1")
L3 (2):     ASSIGN CV0($b) T3
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 2 112 string("htmlspecialchars")
L6 (3):     SEND_VAR CV0($b) 1
L7 (3):     SEND_VAL int(3) 2
L8 (3):     V5 = DO_FCALL
L9 (3):     ASSIGN CV1($neu) V5
L10 (4):    EXT_STMT
L11 (4):    ECHO CV1($neu)
L12 (6):    EXT_STMT
L13 (6):    ECHO string("
")
L14 (7):    RETURN int(1)
