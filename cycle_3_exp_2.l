%{
	#include"y.tab.h"
%}

%%
if return IF;
then return THEN;
\n return NL;
[a-z]+ return ID;
[0-9]+ return NUM;
[\t]+ ;
" "+ ;
. return yytext[0];

%%

int yywrap()
{
	return 1;
}
