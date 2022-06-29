# Discovery rules for patterns - CPG Queries

Every pattern instances in [Testability_Patterns](https://github.com/enferas/TestabilityTarpits/tree/main/PHP/TestabilityPatterns) folder, defines its discovery rule in scala language. 
All the discovery rules are reported in [queries.sc](https://github.com/enferas/TestabilityTarpits/tree/main/PHP/Queries/queries.sc) for simplicity, grouped depending on their type (Variables, Objects, Functions, etc.). 

### Examples:

The following discovery rule is defined for all the instances ( _iall_ ) of the pattern [Static Variable](https://github.com/enferas/TestabilityTarpits/tree/main/PHP/TestabilityPatterns/1_static_variables): 

```scala
val x1 = (name, "1_static_variables_iall", cpg.call(".*BIND_STATIC.*").size);
```

While for [foreach with array](https://github.com/enferas/TestabilityTarpits/tree/main/PHP/TestabilityPatterns/59_foreach_with_array) pattern, each instance has its own query, respectively for instance 1 ( _i1_ ) and instance 2 ( _i2_ ):

```scala
val x54 = (name, "59_foreach_with_array_i1", cpg.call(".*INIT_FCALL.*").argument.order(2).code("array_keys").size);

val x55 = (name, "59_foreach_with_array_i2", cpg.call(".*FE_FETCH_R.*").size);
```

