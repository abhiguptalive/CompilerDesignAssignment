%{
#define YYSTYPE char *
extern YYSTYPE yylval;

#include"y.tab.h"
#include<string.h>
int x=0;
%}
alpha [A-Za-z]
digit [0-9]

%%
"[]" {return ARR;}
"int" {x++;return INT;}
"float" {x++;return FLOAT;}
"double" {x++;return DOUBLE;}
"char" {x++;return CHAR;}
{alpha}({alpha}|{digit})* {yylval=strdup(yytext);if(x>0)return ID;return O;}
[\n] {return NL;}
"," {return C;}
";" {x--;return SE;}
. {}
%%

