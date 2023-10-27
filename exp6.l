%{

#include <stdio.h>
	int c=0;
	int w=0;
	int l=0;

%}

%%

" " {w++;}
\n {l++;w++;}
. {c++;}


%%

int yywrap(void){}
int main()
{
    yyin=fopen("test_file.txt","r");
    yylex();
    printf("The Number of Characters are: %d\nThe Number of Words are: %d\nThe Number of Lines are: %d\n",c,w,l);
    return 0;
}
