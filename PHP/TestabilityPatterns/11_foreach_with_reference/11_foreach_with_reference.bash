
$_main: ; (lines=26, args=0, vars=5, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/20_foreach_with_reference/20_foreach_with_reference.php:1-12
L0 (2):     EXT_STMT
L1 (2):     ASSIGN CV0($x) string("abc")
L2 (2):     EXT_STMT
L3 (2):     ASSIGN CV1($y) string("def")
L4 (2):     EXT_STMT
L5 (2):     ASSIGN CV2($z) string("ghi")
L6 (3):     EXT_STMT
L7 (3):     T8 = INIT_ARRAY 3 (packed) CV0($x) NEXT
L8 (3):     T8 = ADD_ARRAY_ELEMENT CV1($y) NEXT
L9 (3):     T8 = ADD_ARRAY_ELEMENT CV2($z) NEXT
L10 (3):    ASSIGN CV3($arr) T8
L11 (4):    EXT_STMT
L12 (4):    T10 = FETCH_R (global) string("_GET")
L13 (4):    T11 = FETCH_DIM_R T10 string("p1")
L14 (4):    ASSIGN CV4($b) T11
L15 (5):    EXT_STMT
L16 (5):    V13 = FE_RESET_RW CV3($arr) L21
L17 (5):    FE_FETCH_RW V13 CV0($x) L21
L18 (8):    EXT_STMT
L19 (8):    ASSIGN CV0($x) CV4($b)
L20 (5):    JMP L17
L21 (5):    FE_FREE V13
L22 (11):   EXT_STMT
L23 (11):   T15 = FETCH_DIM_R CV3($arr) int(0)
L24 (11):   ECHO T15
L25 (12):   RETURN int(1)
LIVE RANGES:
        8: L8 - L10 (tmp/var)
        13: L17 - L21 (loop)