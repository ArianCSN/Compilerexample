%{

%}

%token DECIMAL T_THEN T_IF T_ELSE T_CHAR REAL T_ID
%token T_INT EQUAL BOOLEQL GREAT GREATEQUAL LPAREN
%token RPAREN MULTIPLY PLUS SEMICOLON NOTEQUAL LESS LESSEQUAL OTHER EOL

%%
prog :
    stmts ;
stmts : stmt stmts EOL {printf("\n");} | {return 0}  ; 
stmt : 
  DECIMAL {printf("DECIMAL ");} | T_THEN {printf("THEN ");} | T_IF {printf("IF ");}
| T_CHAR {printf("CHAR ");} | REAL {printf("REAL ");} | T_INT {printf("INT ");}
| BOOLEQL {printf("BOOLEQL ");} | GREAT {printf("GREATER ");} | T_ELSE {printf("ELSE ");}
| NOTEQUAL {printf("NOTEQUAL ");} | LESS {printf("LESS ");} | LESSEQUAL {printf("LESSEQUAL ");} 
| RPAREN {printf("RPAREN ");} | MULTIPLY {printf("MULTIPLY ");} | PLUS {printf("PLUS ");} 
| GREATEQUAL {printf("GREATERQUAL ");} | EQUAL {printf("EQUAL ");} | LPAREN {printf("LPAREN ");} 
| SEMICOLON {printf("SEMICOLON ");} | OTHER {printf("OTHER ");} | T_ID {printf("ID ");} ;
%%

int main() {

    yyparse();

    return 0;
}

yyerror(){
    printf("ERROR: %s\n");

    return 0 ;
}