/*
 * student ID:
 */

grammar BKOOL;

@lexer::header{
    package bkool.parser;
}

@parser::header{
    package bkool.parser;
}

options{
    language=Java;
}

program: class_decl+;


// student for recognizer start from here

class_decl: CLASS IDENTIFIER (EXTENDS IDENTIFIER)? LEFT_PARENTHESIS member* RIGH_PARENTHESIS  ;
member: constant_decl | variable_decl | method_decl;
method_decl: return_type (STATIC)? IDENTIFIER ((IDENTIFIER)+ COLON type)+ block_statement '}'
            | IDENTIFIER ((IDENTIFIER)+ COLON type)+ block_statement ;
constant_decl: (STATIC)? FINAL type IDENTIFIER CONTANT_ASSIGN expression;
variable_decl: (STATIC)? IDENTIFIER+ COLON type ;
type: primitive_type | array_type | class_type;
class_type: NEW IDENTIFIER;

array_type: (primitive_type | class_type) LEFT_SQUARE_BRACKET POSTIVE_INT RIGH_SQUARE_BRACKET;

primitive_type: INTEGER | FLOAT | BOOL | STRING;



block_statement: ;


return_type: type | VOID;


expression: ;












// student for Lexer start from here

//keywords
CLASS: 'class';
BREAK: 'break';
BOOL: 'bool';
CONTINUE: 'continue';
DO: 'do';
ELSE: 'else';
EXTENDS: 'extends';
FLOAT: 'float';
IF: 'if';
INTEGER: 'integer';
NEW: 'new';
STRING: 'string';
THEN: 'then';
WHILE: 'while';
RETURN: 'return';
TRUE: 'true';
FALSE: 'false';
VOID: 'void';
NULL: 'null';
SELF: 'self';
FINAL: 'final';
STATIC: 'static';
//Operator
ADD: '+';
MUL: '*';
INT_DIV: '\\';
NOT_EQUAL: '<>';
LESS: '<';
LESS_EQUAL: '<=';
OR: '||';
NOT: '!';
OBJECT_CREATE: 'new';
SUB: '-';
FLOAT_DIV: '/';
MODULUS: '%';
EQUAL: '=';
GREATER: '>';
GREATER_EQUAL: '>=';
AND: '&&';
CONCATE: '^';
//Separator
LEFT_SQUARE_BRACKET: '[';
RIGH_SQUARE_BRACKET: ']';
LEFT_PARENTHESIS: '{';
RIGH_PARENTHESIS: '}';
LEFT_BRACKET: '(';
RIGHT_BRACKET: ')';
SEMICOLON: ';';
COLON: ':';
DOT: '.';
COMMA: ',';
WS               :   [ \t\r\f\n]+ -> skip ;
IDENTIFIER : [a-zA-Z_][A-Za-z_0-9]*;

//Literal
STRING_LITERAL:  '\"'  '\"';

//Types
POSTIVE_INT:[0-9]+;
INTLIT: [-]?[0-9]+;
FLOATLIT:([0-9]+)(([.]([0-9]*
                      |([0-9]+'E''-'[0-9]+)))
                 |('e' '+'? [0-9]+));
BOOLLIT:['true''false'];
ASSIGN: ':=';
CONTANT_ASSIGN: '=';
UNCLOSE_STRING: '\"'  {System.out.print("There is an unclosed string.");};
