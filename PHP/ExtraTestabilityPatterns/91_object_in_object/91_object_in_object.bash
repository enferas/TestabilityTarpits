
$_main: ; (lines=32, args=0, vars=3, tmps=15)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/75_object_in_object.php:1-10
L0 (3):     EXT_STMT
L1 (3):     INCLUDE_OR_EVAL (include) string("class1.php")
L2 (4):     EXT_STMT
L3 (4):     INCLUDE_OR_EVAL (include) string("class2.php")
L4 (5):     EXT_STMT
L5 (5):     V5 = NEW 0 string("classB")
L6 (5):     DO_FCALL
L7 (5):     ASSIGN CV0($b2) V5
L8 (6):     EXT_STMT
L9 (6):     INIT_METHOD_CALL 1 CV0($b2) string("set")
L10 (6):    CHECK_FUNC_ARG 1
L11 (6):    V8 = FETCH_FUNC_ARG (global) string("_GET")
L12 (6):    V9 = FETCH_DIM_FUNC_ARG V8 string("p1")
L13 (6):    SEND_FUNC_ARG V9 1
L14 (6):    DO_FCALL
L15 (7):    EXT_STMT
L16 (7):    V11 = NEW 0 string("classA")
L17 (7):    DO_FCALL
L18 (7):    ASSIGN CV1($a) V11
L19 (8):    EXT_STMT
L20 (8):    INIT_METHOD_CALL 1 CV1($a) string("set")
L21 (8):    SEND_VAR_EX CV0($b2) 1
L22 (8):    DO_FCALL
L23 (9):    EXT_STMT
L24 (9):    INIT_METHOD_CALL 0 CV1($a) string("get")
L25 (9):    V15 = DO_FCALL
L26 (9):    ASSIGN CV2($b3) V15
L27 (10):   EXT_STMT
L28 (10):   INIT_METHOD_CALL 0 CV2($b3) string("get")
L29 (10):   V17 = DO_FCALL
L30 (10):   ECHO V17
L31 (10):   RETURN int(1)
LIVE RANGES:
        5: L6 - L7 (new)
        11: L17 - L18 (new)

$_main: ; (lines=2, args=0, vars=0, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class1.php:1-11
L0 (11):    EXT_STMT
L1 (11):    RETURN int(1)

classA::set: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class1.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($d) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_OBJ THIS string("data")
L4 (6):     OP_DATA CV0($d)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

classA::get: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class1.php:8-10
L0 (8):     EXT_NOP
L1 (9):     EXT_STMT
L2 (9):     T0 = FETCH_OBJ_R THIS string("data")
L3 (9):     RETURN T0
L4 (10):    EXT_STMT
L5 (10):    RETURN null

$_main: ; (lines=2, args=0, vars=0, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class2.php:1-11
L0 (11):    EXT_STMT
L1 (11):    RETURN int(1)

classB::set: ; (lines=7, args=1, vars=1, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class2.php:5-7
L0 (5):     EXT_NOP
L1 (5):     CV0($d) = RECV 1
L2 (6):     EXT_STMT
L3 (6):     ASSIGN_OBJ THIS string("data")
L4 (6):     OP_DATA CV0($d)
L5 (7):     EXT_STMT
L6 (7):     RETURN null

classB::get: ; (lines=6, args=0, vars=0, tmps=1)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/class2.php:8-10
L0 (8):     EXT_NOP
L1 (9):     EXT_STMT
L2 (9):     T0 = FETCH_OBJ_R THIS string("data")
L3 (9):     RETURN T0
L4 (10):    EXT_STMT
L5 (10):    RETURN null
PHP Notice:  Undefined index: p1 in /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/75_object_in_object.php on line 6
PHP Stack trace:
PHP   1. {main}() /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/75_object_in_object/75_object_in_object.php:0
