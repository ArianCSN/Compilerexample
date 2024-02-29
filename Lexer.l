%{
    #include "parser.tab.h"
    void showError();
%}

%%

if {return T_IF;}
then {return T_THEN;}
else {return T_ELSE;}
char {return T_CHAR;}
int {return T_INT;}
[a-zA-Z][a-zA-Z0-9]* {return T_ID;}
[0-9]+ {return REAL;}
[0-9][.][0-9]+ {return DECIMAL;}
= {return EQUAL;}
== {return BOOLEQL;}
> {return GREAT;}
>= {return GREATEQUAL;}
"(" {return LPAREN;}
")" {return RPAREN;}
"*" {return MULTIPLY;}
"+" {return PLUS;}
";" {return SEMICOLON;}
!= {return NOTEQUAL;}
"<" {return LESS;}
"<"= {return LESSEQUAL;}
\n {return EOL;}
[ ] 
. {return(OTHER);}

%%

yywrap() {} 

void showError(){
    printf("Other input");
}