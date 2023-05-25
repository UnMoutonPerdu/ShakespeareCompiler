%{
open Splast ;;
%}

%token Article  
%token And
%token Be       
%token <string list> Initialiser
%token <string> Character
%token <string> Speaker 
%token <string list> Entering  
%token <string list> Exiting 
%token Exeunt
%token FirstPersPoss 
%token FirstPersRef  
%token FirstPers  
%token NegComp  
%token NegNoun 
%token NeutNoun 
%token Nothing 
%token Adj  
%token PosComp 
%token PosNoun 
%token SecPersPoss 
%token SecPersRef 
%token SecPers 
%token ThiPersPoss
%token As 
%token Than 
%token Recall 
%token Remember
%token InputNum
%token InputStr
%token OutputNum
%token OutputStr
%token Goto
%token If 
%token IfNot
%token Not
%token <int> Act 
%token <int> Scene 
%token End
%token EndAct
%token Colon
%token Comma
%token Comment
%token <string> Roman
%token Sum
%token Difference
%token Product
%token Quotient
%token Square
%token Cube 
%token EOF

%left Sum Difference
%left Product Quotient

%start program
%type <Splast.program> program

%%

program: 
    | EOF { [] }
    | toplevel program { $1 :: $2 }
;

/* Grammaire */

toplevel:
    | var_decl {VARDECL $1}
    | act      {BEGIN $1}
;

var_decl:  
    | Initialiser {$1}
;

act:
    | Act scene act { {id = $1; scenes = $2;} :: $3 }
    | EOF { [] }
;

scene:
    | Scene lines scene { {id = $1; body = $2;} :: $3 }
    | { [] }
;

lines:
    | line lines {$1 :: $2}
    | { [] }
;

line:
    | Speaker {SPEAKER $1}
    | Entering {ENTER $1}
    | Exiting {EXIT $1}
    | Exeunt {EXEUNT}
    | SecPers value {ASSIGN ($2)}
    | SecPers Be As Adj As value {ASSIGN ($6)}
    | Remember FirstPers {PUSH}
    | Recall {POP}
    | InputNum {READNUM}
    | InputStr {READ}
    | OutputNum {PRINTNUM}
    | OutputStr {PRINT}
    | IfNot Goto Act {IFNTGOTO $3}
    | IfNot Goto Scene {IFNTGOTO $3}
    | If Goto Act {IFGOTO $3}
    | If Goto Scene {IFGOTO $3}
;

value:
    | adj noun {VALUE ($1, $2)}
    | noun {VALUE (INT (1) :: [], $1)}
    | Nothing {ZERO}
    | operation indicator value And indicator value {BINOP ($3, $1, $6)}
    | operation indicator value And charac {BINOP ($3, $1, $5)}
    | operation charac And indicator value {BINOP ($2, $1, $5)}
    | charac {$1}   
;

charac:
    | FirstPersRef {CHARAC "FIRST"}
    | SecPersRef {CHARAC "SECOND"}
    | Character {CHARAC $1}
;

indicator:
    | FirstPersPoss { [] }
    | SecPersPoss { [] }
    | ThiPersPoss { [] }
    | { [] }
;

operation:
    | Difference {"-"}
    | Sum        {"+"}
    | Product    {"*"}
    | Quotient   {"/"}
    | Square     {"^2"}
    | Cube       {"^3"}
;

adj:
    | Adj adj {INT (2) :: $2}
    | {INT (1) :: []}
;

noun:
    | NegNoun {INT (-1)}
    | PosNoun {INT (1)}
    | NeutNoun {INT (1)}
;