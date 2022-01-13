
$_main: ; (lines=20, args=0, vars=3, tmps=10)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/59_arithmetic_operation_on_index/second_ex/second_ex.php:1-7
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($b) T4
L4 (3):     EXT_STMT
L5 (3):     T6 = INIT_ARRAY 4 (packed) string("abc") NEXT
L6 (3):     T6 = ADD_ARRAY_ELEMENT string("def") NEXT
L7 (3):     T6 = ADD_ARRAY_ELEMENT CV0($b) NEXT
L8 (3):     T6 = ADD_ARRAY_ELEMENT string("ghi") NEXT
L9 (3):     ASSIGN CV1($array) T6
L10 (4):    EXT_STMT
L11 (4):    ASSIGN CV2($x) int(3)
L12 (5):    EXT_STMT
L13 (5):    T9 = SUB CV2($x) int(1)
L14 (5):    ASSIGN CV2($x) T9
L15 (7):    EXT_STMT
L16 (7):    T11 = SUB CV2($x) int(1)
L17 (7):    T12 = FETCH_DIM_R CV1($array) T11
L18 (7):    ECHO T12
L19 (7):    RETURN int(1)
LIVE RANGES:
        6: L6 - L9 (tmp/var)
