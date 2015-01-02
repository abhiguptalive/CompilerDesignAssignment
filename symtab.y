%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
struct symtab{
char *type;
char *name;
}st[100];
int n=0,flag=0;
char* name;
void insert(char*,char*);
%}
%union {
    char *s;
}
%token INT FLOAT C DOUBLE CHAR ID NL SE O ARR
%type <s> L1 L2 L3 L4 L5 L6 L7 L8

%%
START:S1 NL {return;}
;
S1:S NL S1
|S NL
;
S:INT L1 E
|FLOAT L2 E
|DOUBLE L3 E
|CHAR L4 E
|INT L1 E S
|FLOAT L2 E S
|DOUBLE L3 E S
|CHAR L4 E S
|INT ARR L5 E
|FLOAT ARR L6 E
|DOUBLE ARR L7 E
|CHAR ARR L8 E
|O
;
L1:L1 C ID {$$=yylval.s;insert($$,"int");}
|ID {$$=yylval.s;insert($$,"int");}
;
L2:L2 C ID {$$=yylval.s;insert($$,"float");}
|ID {$$=yylval.s;insert($$,"float");}
;
L3:L3 C ID {$$=yylval.s;insert($$,"double");}
|ID {$$=yylval.s;insert($$,"double");}
;
L4:L4 C ID {$$=yylval.s;insert($$,"char");}
|ID {$$=yylval.s;insert($$,"char");}
;

L5:L5 C ID {$$=yylval.s;insert($$,"array of int");}
|ID {$$=yylval.s;insert($$,"array of int");}
;
L6:L6 C ID {$$=yylval.s;insert($$,"array of float");}
|ID {$$=yylval.s;insert($$,"array of float");}
;
L7:L7 C ID {$$=yylval.s;insert($$,"array of double");}
|ID {$$=yylval.s;insert($$,"array of double");}
;
L8:L8 C ID {$$=yylval.s;insert($$,"array of char");}
|ID {$$=yylval.s;insert($$,"array of char");}
;

E:SE
;
%%
int yywrap()
{
        return 1;
}
void yyerror()
{ 
 printf("SYNTAX ERROR\n");
 flag=1;
}
main()
{
 printf("Identifires can have only int,float,double,char datatype.\nEvery declaration has to end with a semicolon.\nDeclare variables:\n");
 yyparse();
 if(flag==0)
 {
  int i;
  printf("Name       Datatype\n");
  for(i=0;i<n;i++)
  {
    printf("%s           %s\n",st[i].name,st[i].type);
  }

 }	
}
void insert(char *name,char* type)
{
  int i;
  for(i=0;i<n;i++)
  {
     if(strcmp(st[i].name,name)==0)
     {
	printf("Variable %s is already declared before.",name);
	flag=1;
     }
  }
  st[n].name=name;
  st[n].type=type; 
  n++; 

}
