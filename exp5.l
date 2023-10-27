%{

#include <stdio.h>
int valid=0;

%}

exp1 aa[ab]*bb
exp2 [01]*000[01]*
exp3 [ab 0-9]*
exp4 .

%%

{exp1} {valid=1;}
{exp2} {valid=1;}
{exp3} {valid=0;}
{exp4} {valid=0;}
. ;

%%

int yywrap(void){}
int main()
{
	printf("Enter the Regular Expression: ");
    yylex();
    if(valid==1)
    {
    	printf("Regular Expression is Valid");
    }
    else
    {
    	printf("Regular Expression is Invalid");
    }
    return 0;
}
