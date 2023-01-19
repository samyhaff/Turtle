%{
open Ast
%}

%token EOF
%token FORWARD
%token LEFT
%token RIGHT
%token BACK
%token <int> INT

%start <expr> prog

%%

prog:
    | e = expr; EOF { e }
    ;

expr:
    | FORWARD; i = INT { Move (Forward, i) }
    | BACK ; i = INT { Move (Back, i) }
    | LEFT ; i = INT { Move (Left, i) }
    | RIGHT; i = INT { Move (Right, i) }
    ;
