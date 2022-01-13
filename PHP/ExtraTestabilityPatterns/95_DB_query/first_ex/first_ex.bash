
$_main: ; (lines=16, args=0, vars=2, tmps=7)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/95_DB_query/first_ex/first_ex.php:1-5
L0 (3):     EXT_STMT
L1 (3):     V2 = NEW 3 string("PDO")
L2 (3):     SEND_VAL_EX string("odbc:sample") 1
L3 (3):     SEND_VAL_EX string("db2inst1") 2
L4 (3):     SEND_VAL_EX string("ibmdb2") 3
L5 (3):     DO_FCALL
L6 (3):     ASSIGN CV0($dbh) V2
L7 (4):     EXT_STMT
L8 (4):     T5 = FETCH_R (global) string("_GET")
L9 (4):     T6 = FETCH_DIM_R T5 string("p1")
L10 (4):    ASSIGN CV1($x) T6
L11 (5):    EXT_STMT
L12 (5):    INIT_METHOD_CALL 1 CV0($dbh) string("query")
L13 (5):    SEND_VAL_EX string("SELECT name, color, calories FROM $x ORDER BY name") 1
L14 (5):    DO_FCALL
L15 (5):    RETURN int(1)
LIVE RANGES:
        2: L2 - L6 (new)
