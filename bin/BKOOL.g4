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
class_decl:  STRING_LITERAL+  ;

// student for Lexer start from here
WS               :   [ \t\r\f\n]+ -> skip ;

STRING_LITERAL:  '\"'  '\"';
UNCLOSE_STRING: '\"'  {System.out.print("There is an unclosed string.");};

