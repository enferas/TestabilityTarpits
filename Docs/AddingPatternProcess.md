## Create a pattern from the documentation

For example, if the developer suspects the PHP API function [substr](https://www.php.net/manual/en/function.substr.php) to be a potential tarpit for SAST tools, she will first tune the pattern stub by adding substr between the source and the sink:
```php
$a = $_GET["p1"];
$b = substr($a,0,15);
echo $b; // XSS
```

Second, she would trigger the SAST tools scan (our framework will support this operation). Third, if one tool does not discover the vulnerability, the pattern will be added and a discovery rule will need to be created. This can be easily done by tuning any of the discovery rule created for other API patterns via a simple replacement of the API fuction name with INIT_FCALL opcode is used to call internal functions and the name of the function is the second argument.}
```bash
cpg.call(".*INIT_FCALL.*").argument.order(2).code("substr").size
```


## Extract the pattern from old CVE
Simplify the code to cover only the challenge.
For example, if you have two functions in the code, try to delete each one and scan the code with the tool.
If the tool discover the vulnerability then the problem is in the deleted function.
Then try to delete line of codes and so on. Until you achieve the exact problem for the tool.

Real example in Mantisbt project CVE-2011-3357

**Explain code**:

```php

function gpc_get( $p_var_name, $p_default = null ) {
	if( isset( $_POST[$p_var_name] ) ) {
		$t_result = gpc_strip_slashes( $_POST[$p_var_name] );
	} else if( isset( $_GET[$p_var_name] ) ) {
		$t_result = gpc_strip_slashes( $_GET[$p_var_name] );
	}
	else if( func_num_args() > 1 ) {
		# check for a default passed in (allowing null)
		$t_result = $p_default;
	} else {
		error_parameters( $p_var_name );
		trigger_error( ERROR_GPC_VAR_NOT_FOUND, ERROR );
		$t_result = null;
	}

	return $t_result;
}

function gpc_get_string( $p_var_name, $p_default = null ) {

    # Don't pass along a default unless one was given to us
    #  otherwise we prevent an error being triggered
    $args = func_get_args();
    // The dynamic call
    $t_result = call_user_func_array( 'gpc_get', $args );


    if( is_array( $t_result ) ) {
        error_parameters( $p_var_name );
        trigger_error( ERROR_GPC_ARRAY_UNEXPECTED, ERROR );
    }

    return $t_result;
}

```

In file **bug_actiongroup_ext.php**

```php
$f_action = gpc_get_string( 'action' );

$t_action_include_file = 'bug_actiongroup_' . $f_action . '_inc.php';

require_once( dirname( __FILE__ ) . DIRECTORY_SEPARATOR . $t_action_include_file );
```

We change in the code until the tool discover the vulnerability, and in this example we found that the tool is able to discover the vulnerability after we change the call_user_func_array to a normal call.


### Test the challenge and create simple example
Create multiple situations that include the challenge and check them with the tool. The tool shouldn't be able to discover the vulnerabilities.

After we detected the problem is from call_user_func_array, we generate the snap codes and check them with the tool.

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
call_user_func('F', $a);
```

### Check if the challenge is new
Check if the challenge is not already reported in the library.

### Scan the code with all the tools
Scan the snap code with all the tools in the testbed.

| Tool   | RIPS | phpSAFE | WAP | Progpilot | Comm_1 | Comm_2 | Correct |
| ----   | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| Vulnerability | NO | NO | NO | YES | NO | YES | YES |

### Over-approximation and Dynamic features
- Check if the tools are applying over-approximation by generating negative test cases.

- If the feature is dynamic, check the tools with D1, D2, D3 and D4 categories. 
1. **D1**: the core parameter of the dynamic operation (e.g., the first parameter in call_user_func_array is an hardcoded constant.
2. **D2**: the parameter is an expression whose value can be univocally computed statically via constant propagation.
3. **D3**: the parameter is an expression whose value can only be partially computed statically.
4. **D4**: the parameter is an expression whose value cannot be computed statically.

**Instance 1**

- CATEGORY: D1
- NAME: hardcoded function name
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
call_user_func_array('F', array($a));
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | NO      | YES       | YES     |

Measurements Date: 8 June 2021

**Instance 2**

- CATEGORY: D2
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
$func = 'F';
call_user_func_array($func, array($a));
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | YES       | NO      | NO        | YES     |

Measurements Date: 8 June 2021

**Instance 3**

- CATEGORY: D3
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
call_user_func_array($func . "_something", array($a));
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |

Measurements Date: 8 June 2021

**Instance 4**

- CATEGORY: D4
- FEATURE vs INTERNAL API: FEATURE
- INPUT SANITIZERS:  NO
- SOURCES AND SINKS: NO 
- NEGATIVE TEST CASES: NO
- CODE:

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
call_user_func_array($func, array($a));
```

- MEASUREMENT

| Tool          | RIPS | phpSAFE | WAP  | Progpilot | Comm_1 | Comm_2 | Correct |
| ------------- | ---- | ------- | ---- | --------- | ------- | --------- | ------- |
| Vulnerability | NO   | NO      | NO   | NO        | NO      | NO        | YES     |

Measurements Date: 8 June 2021

### Discovery rule
Generate the opcode for PHP or the AST for JS, then extract the discovery rules for the pattern.

For example,

- Code

```php
<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
call_user_func('F', $a);
```

- OPCODE:

```bash
$_main: ; (lines=9, args=0, vars=1, tmps=4)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/first_ex/first_ex.php:1-7
L0 (6):     EXT_STMT
L1 (6):     T1 = FETCH_R (global) string("_GET")
L2 (6):     T2 = FETCH_DIM_R T1 string("p1")
L3 (6):     ASSIGN CV0($a) T2
L4 (7):     EXT_STMT
L5 (7):     INIT_FCALL 1 96 string("f")
L6 (7):     SEND_USER CV0($a) 1
L7 (7):     DO_FCALL
L8 (7):     RETURN int(1)

F: ; (lines=6, args=1, vars=1, tmps=0)
    ; (before optimizer)
    ; /home/user/gitlab/static-tools---latex/paper_code/PHP/Testability_Patterns/6_callback_functions/first_ex/first_ex.php:2-4
L0 (2):     EXT_NOP
L1 (2):     CV0($var) = RECV 1
L2 (3):     EXT_STMT
L3 (3):     ECHO CV0($var)
L4 (4):     EXT_STMT
L5 (4):     RETURN null
```

### Discovery Query

Write the discovery query that Joern can use to discover the pattern.

```bash
cpg.call(".*INIT_USER_CALL.*").map{x => (x.argument.order(1).code("call_user_func_array"),x.argument.order(2).code("CV*|T*|V*"))}.size
```