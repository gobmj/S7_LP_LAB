%{
	#include<stdio.h>
	#include<stdlib.h>
	int yyerror(char*);
	int yylex(void);
%}  
%token IF THEN NL ID NUM

%%
	stmt: if_stmt NL {printf("VALID"); exit(0);};
	if_stmt: IF '('cond')' THEN st;
	cond: ID '>' NUM;
	st: ID '=' NUM;
%%

int yyerror(char* msg)
{
	printf("INVALID");
	exit(0);
}

int main()
{
	printf("Enter String: ");
	yyparse();
	return 0;
}
