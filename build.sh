bison -d streem.y &&
flex streem.l &&
gcc lex.yy.c streem.tab.c -o streem &&
rm lex.yy.c streem.tab.c streem.tab.h
