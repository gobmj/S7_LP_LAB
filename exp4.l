%{

#include <stdio.h>

int v = 0;
int c = 0;

%}

%%

[AEIOUaeiou] {v++;}
[A-Za-z] {c++;}

"\n" {printf("The Number of Vowels are: %d\nThe Number of Consonants are: %d\n",v,c); v=0, c=0;}

%%

int yywrap(void){}
int main()
{
    printf("Enter the String: ");
    yylex();
    return 0;
}
