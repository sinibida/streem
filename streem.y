%{ // Prepended code
#include <stdio.h>
#include <stdlib.h>

extern int yylex(); // External Lex checker  

void yyerror(char *msg);
%}



%%



%%

// Appended code
void yyerror(char *msg) { // When syntax error occurs
  fprintf(stderr, "%s\n", msg);
  exit(1);
}

int main() {
  yyparse(); // Calling parser
}