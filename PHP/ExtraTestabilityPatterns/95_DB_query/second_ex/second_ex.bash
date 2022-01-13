
$_main: ; (lines=21, args=0, vars=3, tmps=11)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/95_DB_query/second_ex/second_ex.php:1-6
L0 (2):     EXT_STMT
L1 (2):     T3 = FETCH_R (global) string("_GET")
L2 (2):     T4 = FETCH_DIM_R T3 string("p1")
L3 (2):     ASSIGN CV0($val) T4
L4 (3):     EXT_STMT
L5 (3):     V6 = NEW 4 string("mysqli")
L6 (3):     SEND_VAL_EX string("localhost") 1
L7 (3):     SEND_VAL_EX string("my_user") 2
L8 (3):     SEND_VAL_EX string("my_password") 3
L9 (3):     SEND_VAL_EX string("world") 4
L10 (3):    DO_FCALL
L11 (3):    ASSIGN CV1($mysqli) V6
L12 (6):    EXT_STMT
L13 (6):    INIT_METHOD_CALL 1 CV1($mysqli) string("query")
L14 (6):    T10 = ROPE_INIT 3 string("SELECT ")
L15 (6):    T10 = ROPE_ADD 1 T10 CV0($val)
L16 (6):    T9 = ROPE_END 2 T10 string(" FROM City LIMIT 10")
L17 (6):    SEND_VAL_EX T9 1
L18 (6):    V12 = DO_FCALL
L19 (6):    ASSIGN CV2($result) V12
L20 (6):    RETURN int(1)
LIVE RANGES:
        6: L6 - L11 (new)
        10: L14 - L16 (rope)