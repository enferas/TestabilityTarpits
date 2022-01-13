
$_main: ; (lines=46, args=0, vars=5, tmps=18)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/51_implement_interfaces/51_implement_interfaces.php:1-29
L0 (4):     NOP
L1 (2):     EXT_STMT
L2 (2):     DECLARE_CLASS string("mycollection")
L3 (18):    EXT_STMT
L4 (18):    INIT_FCALL 2 112 string("fopen")
L5 (18):    SEND_VAL string("php://stdin") 1
L6 (18):    SEND_VAL string("r") 2
L7 (18):    V5 = DO_FCALL
L8 (18):    ASSIGN CV0($_fp) V5
L9 (19):    EXT_STMT
L10 (19):   T7 = FETCH_R (global) string("_GET")
L11 (19):   T8 = FETCH_DIM_R T7 string("p1")
L12 (19):   ASSIGN CV1($b) T8
L13 (22):   EXT_STMT
L14 (22):   V10 = NEW 0 string("MyCollection")
L15 (22):   DO_FCALL
L16 (22):   ASSIGN CV2($coll) V10
L17 (23):   EXT_STMT
L18 (23):   INIT_METHOD_CALL 2 CV2($coll) string("add")
L19 (23):   SEND_VAL_EX int(1) 1
L20 (23):   SEND_VAL_EX string("value 1") 2
L21 (23):   DO_FCALL
L22 (24):   EXT_STMT
L23 (24):   INIT_METHOD_CALL 2 CV2($coll) string("add")
L24 (24):   SEND_VAL_EX int(2) 1
L25 (24):   SEND_VAR_EX CV1($b) 2
L26 (24):   DO_FCALL
L27 (25):   EXT_STMT
L28 (25):   INIT_METHOD_CALL 2 CV2($coll) string("add")
L29 (25):   SEND_VAL_EX int(3) 1
L30 (25):   SEND_VAL_EX string("value 3") 2
L31 (25):   DO_FCALL
L32 (27):   EXT_STMT
L33 (27):   V16 = FE_RESET_R CV2($coll) L44
L34 (27):   T17 = FE_FETCH_R V16 CV3($val) L44
L35 (27):   ASSIGN CV4($key) T17
L36 (28):   EXT_STMT
L37 (28):   T20 = ROPE_INIT 5 string("key/value: [")
L38 (28):   T20 = ROPE_ADD 1 T20 CV4($key)
L39 (28):   T20 = ROPE_ADD 2 T20 string(" -> ")
L40 (28):   T20 = ROPE_ADD 3 T20 CV3($val)
L41 (28):   T19 = ROPE_END 4 T20 string("]

")
L42 (28):   ECHO T19
L43 (27):   JMP L34
L44 (27):   FE_FREE V16
L45 (29):   RETURN int(1)
LIVE RANGES:
        10: L15 - L16 (new)
        16: L34 - L44 (loop)
        20: L37 - L41 (rope)

MyCollection::getIterator: ; (lines=10, args=0, vars=0, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/51_implement_interfaces/51_implement_interfaces.php:8-10
L0 (8):     EXT_NOP
L1 (9):     EXT_STMT
L2 (9):     V0 = NEW 1 string("ArrayIterator")
L3 (9):     CHECK_FUNC_ARG 1
L4 (9):     V1 = FETCH_OBJ_FUNC_ARG (ref) THIS string("items")
L5 (9):     SEND_FUNC_ARG V1 1
L6 (9):     DO_FCALL
L7 (9):     RETURN V0
L8 (10):    EXT_STMT
L9 (10):    RETURN null
LIVE RANGES:
        0: L3 - L7 (new)

MyCollection::add: ; (lines=12, args=2, vars=2, tmps=3)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/51_implement_interfaces/51_implement_interfaces.php:12-15
L0 (12):    EXT_NOP
L1 (12):    CV0($key) = RECV 1
L2 (12):    CV1($value) = RECV 2
L3 (13):    EXT_STMT
L4 (13):    ASSIGN_OBJ THIS string("st")
L5 (13):    OP_DATA CV1($value)
L6 (14):    EXT_STMT
L7 (14):    V3 = FETCH_OBJ_W (dim write) THIS string("items")
L8 (14):    ASSIGN_DIM V3 CV0($key)
L9 (14):    OP_DATA CV0($key)
L10 (15):   EXT_STMT
L11 (15):   RETURN null


