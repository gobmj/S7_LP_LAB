%{
	#include<stdio.h>
	#include<stdlib.h>
	int yyerror(char*);
	int yylex(void);
%}  
%token A B NL

%%
	stmt: S NL {printf("VALID"); exit(0);};
	S: A S B|;
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
