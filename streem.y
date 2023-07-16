%{ // Prepended code
#include <stdio.h>
#include <stdlib.h>

extern int yylex(); // External Lex checker  

void yyerror(char *msg);
%}

%union {
    float f;
}

%token <f> NUM

%token 
  op_add 
  op_sub 
  op_mul 
  op_div
  par_l
  par_r

%%

program  : expr

expr    : val
        | expr op_add val
        | expr op_sub val
        | expr op_mul val
        | expr op_div val
        ;

val     : NUM
        | par_l expr par_r
        ;

%%

// Appended code
void yyerror(char *msg) { // When syntax error occurs
  fprintf(stderr, "%s\n", msg);
  exit(1);
}

int main() {
  yyparse(); // Calling parser
}