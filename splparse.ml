type token =
  | Article
  | And
  | Be
  | Initialiser of (string list)
  | Character of (string)
  | Speaker of (string)
  | Entering of (string list)
  | Exiting of (string list)
  | Exeunt
  | FirstPersPoss
  | FirstPersRef
  | FirstPers
  | NegComp
  | NegNoun
  | NeutNoun
  | Nothing
  | Adj
  | PosComp
  | PosNoun
  | SecPersPoss
  | SecPersRef
  | SecPers
  | ThiPersPoss
  | As
  | Than
  | Recall
  | Remember
  | InputNum
  | InputStr
  | OutputNum
  | OutputStr
  | Goto
  | If
  | IfNot
  | Not
  | Act of (int)
  | Scene of (int)
  | End
  | EndAct
  | Colon
  | Comma
  | Comment
  | Roman of (string)
  | Sum
  | Difference
  | Product
  | Quotient
  | Square
  | Cube
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "splparse.mly"
open Splast ;;
# 58 "splparse.ml"
let yytransl_const = [|
  257 (* Article *);
  258 (* And *);
  259 (* Be *);
  265 (* Exeunt *);
  266 (* FirstPersPoss *);
  267 (* FirstPersRef *);
  268 (* FirstPers *);
  269 (* NegComp *);
  270 (* NegNoun *);
  271 (* NeutNoun *);
  272 (* Nothing *);
  273 (* Adj *);
  274 (* PosComp *);
  275 (* PosNoun *);
  276 (* SecPersPoss *);
  277 (* SecPersRef *);
  278 (* SecPers *);
  279 (* ThiPersPoss *);
  280 (* As *);
  281 (* Than *);
  282 (* Recall *);
  283 (* Remember *);
  284 (* InputNum *);
  285 (* InputStr *);
  286 (* OutputNum *);
  287 (* OutputStr *);
  288 (* Goto *);
  289 (* If *);
  290 (* IfNot *);
  291 (* Not *);
  294 (* End *);
  295 (* EndAct *);
  296 (* Colon *);
  297 (* Comma *);
  298 (* Comment *);
  300 (* Sum *);
  301 (* Difference *);
  302 (* Product *);
  303 (* Quotient *);
  304 (* Square *);
  305 (* Cube *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  260 (* Initialiser *);
  261 (* Character *);
  262 (* Speaker *);
  263 (* Entering *);
  264 (* Exiting *);
  292 (* Act *);
  293 (* Scene *);
  299 (* Roman *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\003\000\004\000\004\000\005\000\
\005\000\006\000\006\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\008\000\008\000\008\000\008\000\008\000\
\008\000\008\000\013\000\013\000\013\000\012\000\012\000\012\000\
\012\000\011\000\011\000\011\000\011\000\011\000\011\000\009\000\
\009\000\010\000\010\000\010\000\000\000"

let yylen = "\002\000\
\001\000\002\000\001\000\001\000\001\000\003\000\001\000\003\000\
\000\000\002\000\000\000\001\000\001\000\001\000\001\000\002\000\
\006\000\002\000\001\000\001\000\001\000\001\000\001\000\003\000\
\003\000\003\000\003\000\002\000\001\000\001\000\006\000\005\000\
\005\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\000\000\001\000\001\000\001\000\001\000\001\000\001\000\002\000\
\000\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\005\000\000\000\000\000\053\000\000\000\003\000\
\004\000\000\000\000\000\002\000\012\000\013\000\014\000\015\000\
\000\000\019\000\000\000\020\000\021\000\022\000\023\000\000\000\
\000\000\000\000\000\000\007\000\006\000\000\000\037\000\035\000\
\050\000\052\000\030\000\000\000\051\000\036\000\043\000\042\000\
\044\000\045\000\046\000\047\000\016\000\000\000\029\000\000\000\
\034\000\018\000\000\000\000\000\008\000\010\000\000\000\048\000\
\028\000\038\000\039\000\040\000\000\000\000\000\026\000\027\000\
\024\000\025\000\000\000\000\000\000\000\000\000\000\000\000\000\
\017\000\000\000\032\000\033\000\031\000"

let yydgoto = "\002\000\
\006\000\007\000\008\000\009\000\011\000\026\000\027\000\045\000\
\046\000\047\000\048\000\061\000\049\000"

let yysindex = "\027\000\
\004\000\000\000\000\000\000\255\000\000\000\000\004\000\000\000\
\000\000\083\255\005\000\000\000\000\000\000\000\000\000\000\000\
\253\254\000\000\026\255\000\000\000\000\000\000\000\000\007\255\
\008\255\000\255\083\255\000\000\000\000\029\255\000\000\000\000\
\000\000\000\000\000\000\051\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\048\255\000\000\012\255\
\000\000\000\000\229\254\239\254\000\000\000\000\056\255\000\000\
\000\000\000\000\000\000\000\000\010\255\063\255\000\000\000\000\
\000\000\000\000\059\255\085\255\041\255\010\255\012\255\010\255\
\000\000\010\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\006\000\003\000\000\000\000\000\000\000\
\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\006\000\001\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\079\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\033\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\055\255\000\000\033\255\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\078\000\000\000\000\000\084\000\070\000\079\000\000\000\014\000\
\061\000\062\000\000\000\221\255\215\255"

let yytablesize = 298
let yytable = "\030\000\
\011\000\031\000\007\000\005\000\028\000\009\000\062\000\032\000\
\063\000\064\000\033\000\034\000\035\000\036\000\031\000\037\000\
\031\000\038\000\065\000\066\000\032\000\058\000\032\000\033\000\
\034\000\035\000\036\000\001\000\037\000\075\000\038\000\059\000\
\038\000\072\000\060\000\074\000\010\000\050\000\051\000\052\000\
\039\000\040\000\041\000\042\000\043\000\044\000\041\000\041\000\
\041\000\041\000\058\000\041\000\055\000\039\000\040\000\041\000\
\042\000\043\000\044\000\041\000\059\000\033\000\034\000\060\000\
\069\000\041\000\037\000\036\000\041\000\041\000\041\000\041\000\
\067\000\041\000\068\000\041\000\041\000\041\000\041\000\041\000\
\041\000\041\000\070\000\073\000\012\000\076\000\071\000\077\000\
\013\000\014\000\015\000\016\000\049\000\049\000\029\000\053\000\
\056\000\049\000\041\000\041\000\041\000\041\000\041\000\041\000\
\017\000\054\000\000\000\057\000\018\000\019\000\020\000\021\000\
\022\000\023\000\000\000\024\000\025\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\007\000\003\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\011\000\011\000\007\000\004\000\
\004\000\009\000"

let yycheck = "\003\001\
\000\000\005\001\000\000\000\000\000\000\000\000\048\000\011\001\
\036\001\037\001\014\001\015\001\016\001\017\001\005\001\019\001\
\005\001\021\001\036\001\037\001\011\001\010\001\011\001\014\001\
\015\001\016\001\017\001\001\000\019\001\071\000\021\001\020\001\
\021\001\069\000\023\001\071\000\037\001\012\001\032\001\032\001\
\044\001\045\001\046\001\047\001\048\001\049\001\014\001\015\001\
\016\001\017\001\010\001\019\001\024\001\044\001\045\001\046\001\
\047\001\048\001\049\001\005\001\020\001\014\001\015\001\023\001\
\002\001\011\001\019\001\017\001\014\001\015\001\016\001\017\001\
\017\001\019\001\061\000\021\001\044\001\045\001\046\001\047\001\
\048\001\049\001\024\001\070\000\007\000\072\000\002\001\074\000\
\006\001\007\001\008\001\009\001\014\001\015\001\011\000\026\000\
\036\000\019\001\044\001\045\001\046\001\047\001\048\001\049\001\
\022\001\027\000\255\255\046\000\026\001\027\001\028\001\029\001\
\030\001\031\001\255\255\033\001\034\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\004\001\004\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\036\001\037\001\036\001\036\001\
\036\001\036\001"

let yynames_const = "\
  Article\000\
  And\000\
  Be\000\
  Exeunt\000\
  FirstPersPoss\000\
  FirstPersRef\000\
  FirstPers\000\
  NegComp\000\
  NegNoun\000\
  NeutNoun\000\
  Nothing\000\
  Adj\000\
  PosComp\000\
  PosNoun\000\
  SecPersPoss\000\
  SecPersRef\000\
  SecPers\000\
  ThiPersPoss\000\
  As\000\
  Than\000\
  Recall\000\
  Remember\000\
  InputNum\000\
  InputStr\000\
  OutputNum\000\
  OutputStr\000\
  Goto\000\
  If\000\
  IfNot\000\
  Not\000\
  End\000\
  EndAct\000\
  Colon\000\
  Comma\000\
  Comment\000\
  Sum\000\
  Difference\000\
  Product\000\
  Quotient\000\
  Square\000\
  Cube\000\
  EOF\000\
  "

let yynames_block = "\
  Initialiser\000\
  Character\000\
  Speaker\000\
  Entering\000\
  Exiting\000\
  Act\000\
  Scene\000\
  Roman\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "splparse.mly"
          ( [] )
# 320 "splparse.ml"
               : Splast.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'toplevel) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Splast.program) in
    Obj.repr(
# 66 "splparse.mly"
                       ( _1 :: _2 )
# 328 "splparse.ml"
               : Splast.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'var_decl) in
    Obj.repr(
# 72 "splparse.mly"
               (VARDECL _1)
# 335 "splparse.ml"
               : 'toplevel))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'act) in
    Obj.repr(
# 73 "splparse.mly"
               (BEGIN _1)
# 342 "splparse.ml"
               : 'toplevel))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string list) in
    Obj.repr(
# 77 "splparse.mly"
                  (_1)
# 349 "splparse.ml"
               : 'var_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'scene) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'act) in
    Obj.repr(
# 81 "splparse.mly"
                    ( {id = _1; scenes = _2;} :: _3 )
# 358 "splparse.ml"
               : 'act))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "splparse.mly"
          ( [] )
# 364 "splparse.ml"
               : 'act))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'lines) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'scene) in
    Obj.repr(
# 86 "splparse.mly"
                        ( {id = _1; body = _2;} :: _3 )
# 373 "splparse.ml"
               : 'scene))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "splparse.mly"
      ( [] )
# 379 "splparse.ml"
               : 'scene))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'line) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'lines) in
    Obj.repr(
# 91 "splparse.mly"
                 (_1 :: _2)
# 387 "splparse.ml"
               : 'lines))
; (fun __caml_parser_env ->
    Obj.repr(
# 92 "splparse.mly"
      ( [] )
# 393 "splparse.ml"
               : 'lines))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 96 "splparse.mly"
              (SPEAKER _1)
# 400 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string list) in
    Obj.repr(
# 97 "splparse.mly"
               (ENTER _1)
# 407 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string list) in
    Obj.repr(
# 98 "splparse.mly"
              (EXIT _1)
# 414 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 99 "splparse.mly"
             (EXEUNT)
# 420 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 100 "splparse.mly"
                    (ASSIGN (_2))
# 427 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 101 "splparse.mly"
                                 (ASSIGN (_6))
# 434 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "splparse.mly"
                         (PUSH)
# 440 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 103 "splparse.mly"
             (POP)
# 446 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 104 "splparse.mly"
               (READNUM)
# 452 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 105 "splparse.mly"
               (READ)
# 458 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "splparse.mly"
                (PRINTNUM)
# 464 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 107 "splparse.mly"
                (PRINT)
# 470 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 108 "splparse.mly"
                     (IFNTGOTO _3)
# 477 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 109 "splparse.mly"
                       (IFNTGOTO _3)
# 484 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 110 "splparse.mly"
                  (IFGOTO _3)
# 491 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 111 "splparse.mly"
                    (IFGOTO _3)
# 498 "splparse.ml"
               : 'line))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'adj) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'noun) in
    Obj.repr(
# 115 "splparse.mly"
               (VALUE (_1, _2))
# 506 "splparse.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'noun) in
    Obj.repr(
# 116 "splparse.mly"
           (VALUE (INT (1) :: [], _1))
# 513 "splparse.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 117 "splparse.mly"
              (ZERO)
# 519 "splparse.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : 'operation) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'indicator) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'value) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'indicator) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 118 "splparse.mly"
                                                    (BINOP (_3, _1, _6))
# 530 "splparse.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'operation) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'indicator) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'value) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'charac) in
    Obj.repr(
# 119 "splparse.mly"
                                           (BINOP (_3, _1, _5))
# 540 "splparse.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'operation) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'charac) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'indicator) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 120 "splparse.mly"
                                           (BINOP (_2, _1, _5))
# 550 "splparse.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'charac) in
    Obj.repr(
# 121 "splparse.mly"
             (_1)
# 557 "splparse.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 125 "splparse.mly"
                   (CHARAC "FIRST")
# 563 "splparse.ml"
               : 'charac))
; (fun __caml_parser_env ->
    Obj.repr(
# 126 "splparse.mly"
                 (CHARAC "SECOND")
# 569 "splparse.ml"
               : 'charac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 127 "splparse.mly"
                (CHARAC _1)
# 576 "splparse.ml"
               : 'charac))
; (fun __caml_parser_env ->
    Obj.repr(
# 131 "splparse.mly"
                    ( [] )
# 582 "splparse.ml"
               : 'indicator))
; (fun __caml_parser_env ->
    Obj.repr(
# 132 "splparse.mly"
                  ( [] )
# 588 "splparse.ml"
               : 'indicator))
; (fun __caml_parser_env ->
    Obj.repr(
# 133 "splparse.mly"
                  ( [] )
# 594 "splparse.ml"
               : 'indicator))
; (fun __caml_parser_env ->
    Obj.repr(
# 134 "splparse.mly"
      ( [] )
# 600 "splparse.ml"
               : 'indicator))
; (fun __caml_parser_env ->
    Obj.repr(
# 138 "splparse.mly"
                 ("-")
# 606 "splparse.ml"
               : 'operation))
; (fun __caml_parser_env ->
    Obj.repr(
# 139 "splparse.mly"
                 ("+")
# 612 "splparse.ml"
               : 'operation))
; (fun __caml_parser_env ->
    Obj.repr(
# 140 "splparse.mly"
                 ("*")
# 618 "splparse.ml"
               : 'operation))
; (fun __caml_parser_env ->
    Obj.repr(
# 141 "splparse.mly"
                 ("/")
# 624 "splparse.ml"
               : 'operation))
; (fun __caml_parser_env ->
    Obj.repr(
# 142 "splparse.mly"
                 ("^2")
# 630 "splparse.ml"
               : 'operation))
; (fun __caml_parser_env ->
    Obj.repr(
# 143 "splparse.mly"
                 ("^3")
# 636 "splparse.ml"
               : 'operation))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'adj) in
    Obj.repr(
# 147 "splparse.mly"
              (INT (2) :: _2)
# 643 "splparse.ml"
               : 'adj))
; (fun __caml_parser_env ->
    Obj.repr(
# 148 "splparse.mly"
      (INT (1) :: [])
# 649 "splparse.ml"
               : 'adj))
; (fun __caml_parser_env ->
    Obj.repr(
# 152 "splparse.mly"
              (INT (-1))
# 655 "splparse.ml"
               : 'noun))
; (fun __caml_parser_env ->
    Obj.repr(
# 153 "splparse.mly"
              (INT (1))
# 661 "splparse.ml"
               : 'noun))
; (fun __caml_parser_env ->
    Obj.repr(
# 154 "splparse.mly"
               (INT (1))
# 667 "splparse.ml"
               : 'noun))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Splast.program)
