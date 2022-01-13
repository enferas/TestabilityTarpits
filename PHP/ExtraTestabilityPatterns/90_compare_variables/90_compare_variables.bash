
$_main: ; (lines=21, args=0, vars=3, tmps=9)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/64_compare_variables/64_compare_variables.php:1-22
L0 (3):     EXT_STMT
L1 (3):     T3 = FETCH_R (global) string("_GET")
L2 (3):     T4 = FETCH_DIM_R T3 string("p1")
L3 (3):     ASSIGN CV0($a) T4
L4 (5):     EXT_STMT
L5 (5):     ASSIGN CV1($b) int(5)
L6 (6):     EXT_STMT
L7 (6):     T7 = IS_IDENTICAL CV0($a) CV1($b)
L8 (6):     JMPZ T7 L12
L9 (8):     EXT_STMT
L10 (8):    T8 = CONCAT CV0($a) string("
")
L11 (8):    ECHO T8
L12 (11):   EXT_STMT
L13 (11):   ASSIGN CV2($c) string("7")
L14 (12):   EXT_STMT
L15 (12):   T10 = IS_EQUAL CV0($a) CV2($c)
L16 (12):   JMPZ T10 L20
L17 (14):   EXT_STMT
L18 (14):   T11 = CONCAT CV0($a) string("
")
L19 (14):   ECHO T11
L20 (22):   RETURN int(1)
