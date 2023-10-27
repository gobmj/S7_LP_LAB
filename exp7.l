%{

#include <stdio.h>
	int i_a=0;
	int len=0;
	int noi=0;
	int nouns=0;

%}

exp1 [a-z A-Z]+[a-z A-Z 0-9]*
exp2 [+-]+[0-9]+\.[0-9]

%%

{exp1} {
	noi++;
	if(yyleng==5)
	{
		len++;
		if(yytext[0]=='a'||yytext[0]=='A')
		{
			i_a++;
		}
	}
}
" " {}
{exp2} {nouns++;}

. ;

%%

int yywrap(void){}
int main()
{
    yyin=fopen("test_file.txt","r");
    yylex();
    printf("\nThe Number of Identifiers Starting with a/A are: %d",i_a);
    printf("\nThe Number of Identifiers with Length 5 are: %d",len);
    printf("\nThe Total Number of Identifiers are: %d",noi);
    printf("\nThe Number of Signed Floating Point Numbers are: %d",nouns);
    return 0;
}
