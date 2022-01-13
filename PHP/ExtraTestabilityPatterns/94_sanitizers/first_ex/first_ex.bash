
$_main: ; (lines=17, args=0, vars=2, tmps=8)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/119_sanitizers/first_ex/first_ex.php:1-10
L0 (3):     EXT_STMT
L1 (3):     T2 = FETCH_R (global) string("_GET")
L2 (3):     T3 = FETCH_DIM_R T2 string("p1")
L3 (3):     ASSIGN CV0($b) T3
L4 (5):     EXT_STMT
L5 (5):     INIT_FCALL 1 96 string("htmlentities")
L6 (5):     SEND_VAR CV0($b) 1
L7 (5):     V5 = DO_FCALL
L8 (5):     ASSIGN CV1($href) V5
L9 (7):     EXT_STMT
L10 (7):    T8 = ROPE_INIT 3 string("<body bgcolor='")
L11 (7):    T8 = ROPE_ADD 1 T8 CV1($href)
L12 (7):    T7 = ROPE_END 2 T8 string("'>")
L13 (7):    ECHO T7
L14 (9):    EXT_STMT
L15 (9):    ECHO string("
")
L16 (10):   RETURN int(1)
LIVE RANGES:
        8: L10 - L12 (rope)

