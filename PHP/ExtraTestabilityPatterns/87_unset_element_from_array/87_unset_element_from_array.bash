
$_main: ; (lines=21, args=0, vars=3, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/58_unset_element_from_array/58_unset_element_from_array.php:1-10
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
L10 (6):    EXT_STMT
L11 (6):    UNSET_DIM CV1($array) int(2)
L12 (7):    EXT_STMT
L13 (7):    V8 = FE_RESET_R CV1($array) L19
L14 (7):    FE_FETCH_R V8 CV2($a) L19
L15 (9):    EXT_STMT
L16 (9):    T9 = CONCAT CV2($a) string("
")
L17 (9):    ECHO T9
L18 (7):    JMP L14
L19 (7):    FE_FREE V8
L20 (10):   RETURN int(1)
LIVE RANGES:
        6: L6 - L9 (tmp/var)
        8: L14 - L19 (loop)
