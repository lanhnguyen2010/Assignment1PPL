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

<<<<<<< HEAD
class_decl: CLASS IDENTIFIER (EXTENDS IDENTIFIER)? LEFT_PARENTHESIS member* RIGH_PARENTHESIS  ;
member: constant_decl | variable_decl | method_decl;
method_decl: return_type (STATIC)? IDENTIFIER ((IDENTIFIER)+':'type)+ block_statement '}'
            | IDENTIFIER ((IDENTIFIER)+':'type)+ block_statement ;
block_statement: ;

type: '2';

return_type: ;


constant_decl: (STATIC)? FINAL type IDENTIFIER CONTANT_ASSIGN expression;
expression: ;


variable_decl: (STATIC)? IDENTIFIER+ ':' type ;




=======
class_decl:  CLASS identifier (EXTENDS identifier)? '{' member* '}'  ;
member: constant_decl | variable_decl | method_decl;
method_decl: return_type ('static')+ identifier ((identifier)+':'type)+ block_statement '}'
            | identifier ((identifier)+':'type)+ block_statement ;

constant_decl: ('static')? 'final' type identifier '=' expression;

variable_decl: ('static')? 'final' identifier+ ':' type ;





identifier: IDENTIFIER ;
>>>>>>> 18aa50a7da878f408fc6c4d90dadf1bcece7e44b





// student for Lexer start from here
<<<<<<< HEAD

=======
WS               :   [ \t\r\f\n]+ -> skip ;
IDENTIFIER : [a-zA-Z_][A-Za-z_0-9]*;
>>>>>>> 18aa50a7da878f408fc6c4d90dadf1bcece7e44b
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
<<<<<<< HEAD
WS               :   [ \t\r\f\n]+ -> skip ;
IDENTIFIER : [a-zA-Z_][A-Za-z_0-9]*;
=======
>>>>>>> 18aa50a7da878f408fc6c4d90dadf1bcece7e44b

//Literal
STRING_LITERAL:  '\"'  '\"';

//Types
INTLIT: [-]?[0-9]+;
FLOATLIT:([0-9]+)(([.]([0-9]*
	                  |([0-9]+'E''-'[0-9]+)))
	             |('e' '+'? [0-9]+));
BOOLLIT:['true''false'];
ASSIGN: ':=';
<<<<<<< HEAD
CONTANT_ASSIGN: '=';
UNCLOSE_STRING: '\"'  {System.out.print("There is an unclosed string.");};
=======
UNCLOSE_STRING: '\"'  {System.out.print("There is an unclosed string.");};

>>>>>>> 18aa50a7da878f408fc6c4d90dadf1bcece7e44b
