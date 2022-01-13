
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
