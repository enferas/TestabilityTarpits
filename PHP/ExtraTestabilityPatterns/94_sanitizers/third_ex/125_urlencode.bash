
$_main: ; (lines=12, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/119_sanitizers/third_ex/125_urlencode.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T1 = FETCH_R (global) string("_GET")
L2 (2):     T2 = FETCH_DIM_R T1 string("p1")
L3 (2):     ASSIGN CV0($b) T2
L4 (3):     EXT_STMT
L5 (3):     INIT_FCALL 1 96 string("urlencode")
L6 (3):     SEND_VAR CV0($b) 1
L7 (3):     V4 = DO_FCALL
L8 (3):     ECHO V4
L9 (5):     EXT_STMT
L10 (5):    ECHO string("
")
L11 (6):    RETURN int(1)
