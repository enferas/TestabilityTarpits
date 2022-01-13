
$_main: ; (lines=12, args=0, vars=2, tmps=6)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/first_ex/13_closures.php:1-7
L0 (2):     EXT_STMT
L1 (2):     T2 = DECLARE_LAMBDA_FUNCTION string("")
L2 (5):     ASSIGN CV0($greet) T2
L3 (6):     EXT_STMT
L4 (6):     T4 = FETCH_R (global) string("_GET")
L5 (6):     T5 = FETCH_DIM_R T4 string("p1")
L6 (6):     ASSIGN CV1($b) T5
L7 (7):     EXT_STMT
L8 (7):     INIT_DYNAMIC_CALL 1 CV0($greet)
L9 (7):     SEND_VAR_EX CV1($b) 1
L10 (7):    DO_FCALL
L11 (7):    RETURN int(1)

{closure}: ; (lines=9, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/13_closures/first_ex/13_closures.php:2-5
L0 (2):     EXT_NOP
L1 (2):     CV0($name) = RECV 1
L2 (4):     EXT_STMT
L3 (4):     INIT_FCALL 2 112 string("printf")
L4 (4):     SEND_VAL string("Hello %s
") 1
L5 (4):     SEND_VAR CV0($name) 2
L6 (4):     DO_FCALL
L7 (5):     EXT_STMT
L8 (5):     RETURN null

