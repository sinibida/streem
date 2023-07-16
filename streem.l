%{
#include <stdio.h>
#include <stdlib.h>
#include "streem.tab.h"
%}

%option noyywrap

%%

(([1-9][0-9]*)|0)(\.[0-9]+)? { 
    yylval.f = atof(yytext);
    return NUM; 
}

"+" return op_add;
"-" return op_sub;
"*" return op_mul;
"/" return op_div;
"(" return par_l;
")" return par_r;

%%