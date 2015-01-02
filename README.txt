Assignment Title: To Store the details of Identifier in Symbol 

Author: 

Abhishek Kumar Gupta (1PI12IS002) 

Implementation: Using LEX and Yaac in C Programming Language

Sample Input/Output :

Sample Input/Output1: 

abhi@da-Inspiron-5521:~/Desktop$ lex symtab.l
abhi@da-Inspiron-5521:~/Desktop$ cc y.tab.c lex.yy.c -ll
abhi@da-Inspiron-5521:~/Desktop$ yacc -d symtab.y
abhi@da-Inspiron-5521:~/Desktop$ cc y.tab.c lex.yy.c -ll
abhi@da-Inspiron-5521:~/Desktop$ ./a.out
Identifires can have only int,float,double,char datatype.
Every declaration has to end with a semicolon.
Declare variables:
int a;
float b;
char c;
int[] d;
float[] e;
char[] f;

Name       Datatype
a           int
b           float
c           char
d           array of int
e           array of float
f           array of char


Sample Input/Output2: 

abhi@da-Inspiron-5521:~/Desktop$ ./a.out
Identifires can have only int,float,double,char datatype.
Every declaration has to end with a semicolon.
Declare variables:
int a;
float a;
Variable a is already declared before.

Sample Input/Output3:

abhi@da-Inspiron-5521:~/Desktop$ ./a.out
Identifires can have only int,float,double,char datatype.
Every declaration has to end with a semicolon.
Declare variables:
a int;
SYNTAX ERROR

Sample Input/Output4:

abhi@da-Inspiron-5521:~/Desktop$ ./a.out
Identifires can have only int,float,double,char datatype.
Every declaration has to end with a semicolon.
Declare variables:
int a;
int[] a;
Variable a is already declared before.




