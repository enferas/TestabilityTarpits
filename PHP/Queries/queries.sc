@main def main(name : String): Unit = {
    importCpg(name)
    println("*********************************************")

    /* Variables */
    val x1 = (name, "1_static_variables_iall", cpg.call(".*BIND_STATIC.*").size);
    println(x1)
    val x2 = (name, "2_global_variables_iall", cpg.call(".*BIND_GLOBAL.*").size);
    println(x2)
    val x3 = (name, "3_global_array_iall", cpg.call(".*FETCH_W.*|.*FETCH_R.*|.*FETCH_RW.*").argument.code("GLOBALS").size);
    println(x3)
    val x4 = (name, "4_conditional_assignment_iall", cpg.call(".*QM_ASSIGN.*").size);
    println(x4)
    val x5 = (name, "5_combined_operator_iall", cpg.call(".*CONCAT.*").size);
    println(x5)
    val x6 = (name, "6_coalesce_iall", cpg.call(".*COALESCE.*").size);
    println(x6)
    val x7 = (name, "7_string_arithmetic_operations_iall", cpg.call(".*PRE_INC.*|.*POST_INC.*|.*PRE_DEC.*|.*POST_DEC.*").size);
    println(x7)

    /* References */
    val x8 = (name, "8_simple_reference_iall", cpg.call(".*ASSIGN_REF.*").size);
    println(x8)
    val x9 = (name, "9_reference_argument_iall", cpg.call(".*SEND_REF.*").size);
    println(x9)
    val x10 = (name, "10_return_by_reference_iall", cpg.call(".*RETURN_BY_REF.*").argument.code("function").size);
    println(x10)
    val x11 = (name, "11_foreach_with_reference_iall", cpg.call(".*FE_FETCH_RW.*").size);
    println(x11)
    val x12 = (name, "12_make_ref_iall", cpg.call(".*MAKE_REF.*").size);
    println(x12)
    val x13 = (name, "13_assign_static_prop_ref_iall", cpg.call(".*ASSIGN_STATIC_PROP_REF.*").size);
    println(x13)
    val x14 = (name, "14_object_assigned_by_reference_iall", cpg.call(".*ASSIGN_OBJ_REF.*").size);
    println(x14)

    /* Functions */
    val x15 = (name, "15_nested_function_iall", cpg.call(".*DECLARE_FUNCTION.*").size);
    println(x15)
    val x16 = (name, "16_variadic_functions_iall", cpg.call(".*RECV_VARIADIC.*").size);
    println(x16)
    val x17 = (name, "17_get_arguments_iall", cpg.call(".*FUNC_GET_ARGS.*").size);
    println(x17)
    val x18 = (name, "18_send_unpack_iall", cpg.call(".*SEND_UNPACK.*").size);
    println(x18)
    val x19 = (name, "19_closures_iall", cpg.call(".*DECLARE_LAMBDA_FUNCTION.*").size);
    println(x19)
    val x20 = (name, "20_use_with_closures_iall", cpg.call(".*BIND_LEXICAL.*").size);
    println(x20)

    /* Objects */
    val x21 = (name, "21_simple_object_iall", cpg.call(".*OBJ.*|.*NEW.*|.*CLONE.*|.*METHOD.*").size);
    println(x21)
    val G1 = cpg.call("ASSIGN").reachableByFlows(cpg.call.code(".*NEW.*")).map(_.elements.last).collect{ case c : nodes.Call => c}.argument.order(0).isIdentifier.name.l.distinct
    val R1 = cpg.call("ASSIGN").code(".*CV.*CV.*").l
    val x22 = (name, "22_assign_object_iall", R1.filter{ call => G1.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.size);
    println(x22)
    /*val G1 = cpg.call("ASSIGN").reachableByFlows(cpg.call.code(".*NEW.*")).map(_.elements.last).collect{ case c : nodes.Call => c}.argument.order(0).isIdentifier.name.l.distinct*/
    val R2 = cpg.call("SEND.*").code(".*CV.*").l
    val x23 = (name, "23_object_argument_iall", R2.filter{ call => G1.exists{ h => call.argument.order(0).code.l.contains("CV($" + h + ")")} }.size);
    println(x23)
    val x24 = (name, "24_new_self_iall", cpg.call(".*NEW.*").argument.order(1).code("self").size);
    println(x24)
    val x25 = (name, "25_clone_iall", cpg.call(".*CLONE.*").size);
    println(x25)
    val x26 = (name, "26_late_static_binding_iall", cpg.call(".*INIT_STATIC_METHOD_CALL.*").argument.order(1).code("static").size);
    println(x26)
    val x27 = (name, "27_get_called_class_iall", cpg.call(".*GET_CALLED_CLASS.*").size);
    println(x27)
    val x28 = (name, "28_static_methods_iall", cpg.call(".*INIT_STATIC_METHOD_CALL.*").size);
    println(x28)
    val x29 = (name, "29_static_properties_iall", cpg.call(".*ASSIGN_STATIC_PROP.*|.*FETCH_STATIC_PROP_R.*|.*FETCH_STATIC_PROP_W.*|.*FETCH_STATIC_PROP_RW.*").size);
    println(x29)
    val x30 = (name, "30_anonymous_classes_iall", cpg.call(".*DECLARE_ANON_CLASS.*").size);
    println(x30)
    val x31 = (name, "31_static_method_variable_iall", cpg.call(".*INIT_STATIC_METHOD_CALL.*").argument.order(2).code("CV.*|T.*|V.*").size);
    println(x31)
    def methods1 = cpg.typeDecl.filter{x => x.method.name.l.contains("__set")}.name.l
    val x32 = (name, "32_set_overloading_iall", cpg.call("NEW").argument.filter{x => methods1.contains(x.code.toLowerCase)}.size);
    println(x32)
    def methods2 = cpg.typeDecl.filter{x => x.method.name.l.contains("__get")}.name.l
    val x33 = (name, "33_get_overloading_iall", cpg.call("NEW").argument.filter{x => methods2.contains(x.code.toLowerCase)}.size);
    println(x33)
    def methods3 = cpg.typeDecl.filter{x => x.method.name.l.contains("__isset")}.name.l
    val x34 = (name, "34_isset_overloading_iall", cpg.call("NEW").argument.filter{x => methods3.contains(x.code.toLowerCase)}.size);
    println(x34)
    def methods4 = cpg.typeDecl.filter{x => x.method.name.l.contains("__unset")}.name.l
    val x35 = (name, "35_unset_overloading_iall", cpg.call("NEW").argument.filter{x => methods4.contains(x.code.toLowerCase)}.size);
    println(x35)
    def methods5 = cpg.typeDecl.filter{x => x.method.name.l.contains("__call")}.name.l
    val x36 = (name, "36_call_overloading_iall", cpg.call("NEW").argument.filter{x => methods5.contains(x.code.toLowerCase)}.size);
    println(x36)
    def methods6 = cpg.typeDecl.filter{x => x.method.name.l.contains("__callstatic")}.name.l
    val x37 = (name, "37_callstatic_overloading_iall", cpg.call("INIT_STATIC_METHOD_CALL").argument.filter{x => methods6.contains(x.code.toLowerCase)}.size);
    println(x37)
    def methods7 = cpg.typeDecl.filter{x => x.method.name.l.contains("__invoke")}.name.l
    val x38 = (name, "38_invoke_iall", cpg.call("NEW").argument.filter{x => methods7.contains(x.code.toLowerCase)}.size);
    println(x38)
    val x39 = (name, "39_serialize_unserialize_iall", cpg.call("INIT_FCALL").argument.order(2).code("serialize|unserialize").size);
    println(x39)
    val x40 = (name, "40_trait_iall", cpg.call(".*DECLARE_CLASS.*").size);
    println(x40)
    val x41 = (name, "41_self_methods_iall", cpg.call(".*INIT_STATIC_METHOD_CALL.*").argument.order(1).code("self").size);
    println(x41)
    def methods8 = cpg.typeDecl.filter{x => x.method.name.l.contains("__destruct")}.name.l
    val x42 = (name, "42_destructor_iall", cpg.call("NEW").argument.filter{x => methods8.contains(x.code.toLowerCase)}.size);
    println(x42)
    def methods9 = cpg.typeDecl.filter{x => x.method.name.l.contains("__tostring")}.name.l
    val x43 = (name, "43_tostring_echo_object_iall", cpg.call("NEW").argument.filter{x => methods9.contains(x.code.toLowerCase)}.size);
    println(x43)
    val x44 = (name, "44_verify_return_type_iall", cpg.call(".*VERIFY_RETURN_TYPE.*").size);
    println(x44)
    val x45 = (name, "45_static_method_from_variable_iall", cpg.call.name(".*INIT_STATIC_METHOD_CALL.*").argument.order(1).code("CV.*|T.*|V.*").size);
    println(x45)
    val x46 = (name, "46_object_to_array_iall", cpg.call(".*CAST.*").argument.order(0).code("array").size);
    println(x46)
    val x47 = (name, "49_static_instance", cpg.method.filter{ m =>

val fieldsHoldingConstruct = m.call.name(".*__construct.*").cfgNext.isLiteral.where(_.inCall.name("ASSIGN_STATIC_PROP_1")).code.l

val returnedVars = m.call.name("FETCH_STATIC_PROP_R").inCall.name("=").filter{ assign =>
                                                val target = assign.argument.order(0).code.headOption
                                                target.isDefined && assign.cfgNext.cfgNext.isCall.codeExact(s"RETURN ${target.get}").size > 0
                                                }.flatMap{ assign =>  assign.argument.order(1).isCall.argument.order(0).isLiteral.code.headOption }.l  

                                    (returnedVars intersect fieldsHoldingConstruct).size > 0

                                    }.size);
    println(x47)

    /* Exceptions */
    val x48 = (name, "50_throw_exception_iall", cpg.call(".*THROW.*").size);
    println(x48)
    val x49 = (name, "51_catch_exception_iall", cpg.call(".*CATCH.*").size);
    println(x49)
    val x50 = (name, "52_try_catch_finally_iall", cpg.call(".*FAST_RET.*").size);
    println(x50)
    val x51 = (name, "53_track_error_iall", cpg.call(".*BEGIN_SILENCE.*").size);
    println(x51)

    /* Generators */
    val x52 = (name, "54_generators_iall", cpg.call(".*GENERATOR_CREATE.*").size);
    println(x52)

    /* GOTO*/

    /* Exit */
    val x52 = (name, "55_Exit_iall", cpg.call(".*EXIT.*").argument.code("CV.*|T.*|V.*").size);
    println(x52)

    /* Array */
    val x53 = (name, "58_simple_array_iall", cpg.call(".*FETCH_DIM_.*|.*FETCH_DIM_FUNC_ARG.*|.*ADD_ARRAY_ELEMENT.*|.*INIT_ARRAY.*|.*ASSIGN_DIM.*").size);
    println(x53)
    val x54 = (name, "59_foreach_with_array_i1", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_keys").size);
    println(x54)
    val x55 = (name, "59_foreach_with_array_i2", cpg.call(".*FE_FETCH_R.*").size);
    println(x55)

    /* PHP API */
    val x56 = (name, "60_array_walk_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_walk").size);
    println(x56)
    val x57 = (name, "61_array_map_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_map").size);
    println(x57)
    val x58 = (name, "62_parse_str_function_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("parse_str").size);
    println(x58)
    val x59 = (name, "63_substring_replace_function_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("substr_replace").size);
    println(x59)
    val x60 = (name, "64_preg_match_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("preg_match").size);
    println(x60)
    val x61 = (name, "65_system_i1", cpg.call(".*INIT_FCALL.*").argument.order(2).code("system").size);
    println(x61)
    val x62 = (name, "65_system_i2", cpg.call(".*INIT_FCALL.*").argument.order(2).code("exec").size);
    println(x62)
    val x63 = (name, "65_system_i3", cpg.call(".*INIT_FCALL.*").argument.order(2).code("unlink").size);
    println(x63)
    val x64 = (name, "66_superglobals_i3", cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_ENV").size);
    println(x64)
    val x65 = (name, "66_superglobals_i2", cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_SESSION").size);
    println(x65)
    val x66 = (name, "66_superglobals_i4", cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_FILES").size);
    println(x66)
    val x67 = (name, "66_superglobals_i1", cpg.call(".*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("global").inCall.argument.order(1).code("_SERVER").size);
    println(x67)
    val x68 = (name, "67_odbc_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("compact").size);
    println(x68)
    val x69 = (name, "75_buffer_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("ob_start").size);
    println(x69)
    val x70 = (name, "68_compact_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("compact").size);
    println(x70)
    val x71 = (name, "69_create_function_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("create_function").size);
    println(x71)
    val x72 = (name, "70__extract_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("extract").size);
    println(x72)
    val x73 = (name, "71_array_functions_i1", cpg.call(".*INIT_FCALL.*").argument.order(2).code("sort").size);
    println(x73)
    val x74 = (name, "71_array_functions_i2", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_pad").size);
    println(x74)
    val x75 = (name, "72_procedural_queries_i1", cpg.call(".*INIT_FCALL.*").argument.order(1).code("mysql_query").size);
    println(x75)
    val x76 = (name, "72_procedural_queries_i2", cpg.call(".*INIT_FCALL.*").argument.order(1).code("mysqli_query").size);
    println(x76)
    val x77 = (name, "73_wrong_sanitizers_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("strip_tags|json_encode").size);
    println(x77)
    


    /* Dynamic */
    val x78 = (name, "76_function_variable_iall", cpg.call("INIT_DYNAMIC_CALL").code(".*false.*").size);
    println(x78)
    val x79 = (name, "77_object_callable_iall", cpg.call("INIT_DYNAMIC_CALL").code(".*true.*").size);
    println(x79)
    val x80 = (name, "78_autoloading_classes_iall", cpg.call(".*INIT_FCALL.*").argument.order(2).code("spl_autoload_register").size);
    println(x80)
    val x81 = (name, "79_dynamic_include_D1", cpg.call.code(".*INCLUDE_OR_EVAL.*.string.*").size);
    println(x81)
    val x82 = (name, "79_dynamic_include_D2", cpg.call.code(".*INCLUDE_OR_EVAL.*include.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).size);
    println(x82)
    val x83 = (name, "79_dynamic_include_D3", cpg.call.code(".*INCLUDE_OR_EVAL.*include.*").reachableBy(cpg.call.code(".*CONCAT.*string.*")).size);
    println(x83)
    val x84 = (name, "79_dynamic_include_D4", cpg.call(".*INCLUDE_OR_EVAL.*").map{x => (x.argument.order(0).code("include"),x.argument.order(1).code("CV*|T*|V*"))}.size);
    println(x84)
    val x85 = (name, "80_callback_functions_D2", cpg.call.code(".*INIT_USER_CALL.*call_user_func.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).size);
    println(x85)
    val x86 = (name, "80_callback_functions_D3", cpg.call.code(".*INIT_USER_CALL.*call_user_func.*").reachableBy(cpg.call.code(".*CONCAT.*string.*")).size);
    println(x86)
    val x87 = (name, "80_callback_functions_D4", cpg.call(".*INIT_USER_CALL.*").map{x => (x.argument.order(1).code("call_user_func.*"),x.argument.order(2).code("CV*|T*|V*"))}.size);
    println(x87)
    def G3 = cpg.call("ASSIGN").code(".*string.*").argument.order(0).isIdentifier.name.l.distinct
    def R4 = cpg.call("FETCH_CLASS").code(".*CV.*").l
    val x88 = (name, "81_new_from_variable_D2", R4.filter{ call => G3.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.size);
    println(x88)
    val G4 = cpg.call("ASSIGN").reachableByFlows(cpg.call("CONCAT").code(".*CONCAT.*string.*")).map(_.elements.last).collect{ case c : nodes.Call => c}.argument.order(0).isIdentifier.name.l.distinct
    def R5 = cpg.call("FETCH_CLASS").code(".*CV.*").l
    val x89 = (name, "81_new_from_variable_D3", R5.filter{ call => G4.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.size);
    println(x89)
    val x90 = (name, "81_new_from_variable_D4", cpg.call(".*NEW.*").argument.order(1).code("CV.*|T.*|V.*").size);
    println(x90)
    val x91 = (name, "82_methods_variable_D2", cpg.call(".*INIT_METHOD_CALL.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).size);
    println(x91)
    val x92 = (name, "82_methods_variable_D4", cpg.call(".*INIT_METHOD_CALL.*").argument.order(2).code("CV.*|T.*|V.*").size);
    println(x92)
    val x93 = (name, "83_array_variable_key_D4", cpg.call(".*FETCH_DIM_.*|.*ADD_ARRAY_ELEMENT.*|.*ASSIGN_DIM.*").argument.order(1).code("CV.*").size+cpg.call(".*INIT_ARRAY.*").argument.order(3).code("CV.*|T.*|V.*").size);
    println(x93)
    def G5 = cpg.call("ASSIGN").code(".*string.*").argument.order(0).isIdentifier.name.l.distinct
    def R6 = cpg.call("ASSIGN_DIM|FETCH_DIM_R|FETCH_DIM_W|FETCH_DIM_RW|ADD_ARRAY_ELEMENT").l
    val x94 = (name, "array_variable_key_D2", R6.filter{ call => G5.exists{ h => call.argument.order(1).code.l.contains("CV($" + h + ")")} }.size);
    println(x94)
    val x95 = (name, "84_variable_variables_D2", cpg.call.code(".*FETCH_W.*local.*|.*FETCH_R.*local.*").reachableBy(cpg.call.code(".*ASSIGN.*string.*")).size);
    println(x95)
    val x96 = (name, "84_variable_variables_D4", cpg.call(".*FETCH_W.*|.*FETCH_R.*|.*FETCH_RW.*").argument.order(0).code("local").size);
    println(x96)

    println("*********************************************")
    close;
} 
