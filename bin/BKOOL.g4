/*
 * student ID:1570216
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
constant_decl: (STATIC)? FINAL type IDENTIFIER CONSTANT_ASSIGN expression;
variable_decl: (STATIC)? IDENTIFIER+ COLON type ;
type: primitive_type | array_type | class_type;
class_type: NEW IDENTIFIER;

array_type: (primitive_type | class_type) LEFT_SQUARE_BRACKET POSTIVE_INT RIGH_SQUARE_BRACKET;

primitive_type: INTEGER | FLOAT | BOOL | STRING;
return_type: type | VOID;

expression: arithmetic_exp | bool_exp | string_exp | relation_exp 
            | index_exp | member_exp | object_creation;




arithmetic_exp: (ADD|SUB) arithmetic_exp
               | arithmetic_exp (ADD|SUB) term
               |term;
term: term (MUL|MODULUS|INT_DIV|FLOAT_DIV) factor
      | factor;
factor: (ADD|SUB)? (INTLIT | FLOATLIT | BOOLLIT | IDENTIFIER);
bool_exp: NOT bool_exp
         | bool_exp (AND|OR) bool_term
         | bool_term;
         
bool_term: NOT? (BOOLLIT | IDENTIFIER);

relation_exp: relation_exp relational_opt relation_term
             |relation_term;
relation_term: relation_term relational_opt relation_factor
             |relation_factor ;
relation_factor: type | IDENTIFIER | expression;



relational_opt: EQUAL | NOT_EQUAL | GREATER | LESS | GREATER_EQUAL | LESS_EQUAL ;

string_exp: string_exp CONCATE string_term
           | string_term;
string_term: STRING_LITERAL;

index_exp: array_type LEFT_SQUARE_BRACKET array_type RIGH_SQUARE_BRACKET;

member_exp: array_type DOT IDENTIFIER (LEFT_BRACKET  list_exp RIGHT_BRACKET)?
           | IDENTIFIER DOT IDENTIFIER (LEFT_BRACKET list_exp RIGHT_BRACKET)?;
list_exp: array_type|(array_type?(SEMICOLON array_type)*);

object_creation: NEW IDENTIFIER LEFT_BRACKET  list_exp RIGHT_BRACKET;

//statement: block_statement | assign_statement | if_statement | while_statement
//           | break_statement | continue_statement;

block_statement: LEFT_SQUARE_BRACKET  RIGH_PARENTHESIS;




















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
//UNARY_NEGATION: '-';
//UNARY_IDENTITY: '+' ;
ADD: '+';
SUB: '-';

MUL: '*';
INT_DIV: '\\';
NOT_EQUAL: '<>';
LESS: '<';
LESS_EQUAL: '<=';
OR: '||';
NOT: '!';
OBJECT_CREATE: 'new';

FLOAT_DIV: '/';
MODULUS: '%';
EQUAL: '==';
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
CONSTANT_ASSIGN: '=';
UNCLOSE_STRING: '\"'  {System.out.print("There is an unclosed string.");};
