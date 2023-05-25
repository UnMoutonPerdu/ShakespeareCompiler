(* Ce fichier contient la d�finition du type OCaml des arbres de
 * syntaxe abstraite du langage, ainsi qu'un imprimeur des phrases
 * du langage.
*)


type atom = 
  | INT of int 

and value = 
  | VALUE of (atom list * atom) 
  | BINOP of (value * string * value)
  | ZERO 
  | CHARAC of string

and line = 
  | SPEAKER of string 
  | ENTER of string list
  | EXIT of string list
  | EXEUNT 
  | ASSIGN of value
  | PUSH 
  | POP 
  | READNUM
  | READ 
  | PRINTNUM 
  | PRINT 
  | IFNTGOTO of int 
  | IFGOTO of int 
;;

type scene = {
  id : int ;
  body : line list
} ;;

type act = {
  id : int ;
  scenes : scene list
} ;;

type toplevel = 
  | VARDECL of string list
  | BEGIN of act list
;;

type program = toplevel list ;;


(* open Printf ;;


let rec print_expr oc = function
  | Int n -> fprintf oc "%d" n
  | Bool b -> fprintf oc "%s" (if b then "T" else "F")
  | Ident s -> fprintf oc "%s" s
  | String s -> fprintf oc "\"%s\"" (String.escaped s)
  | App (f_name, params) -> fprintf oc "%s (%a)" f_name print_exprs params
  | Binop (op, e1, e2) ->
      fprintf oc "(%a %s %a)" print_expr e1 op print_expr e2
  | Monop (op, e) -> fprintf oc "%s%a" op print_expr e
  | ArrayRead (s, e) -> fprintf oc "%s[%a]" s print_expr e


and print_exprs oc = function
  | [] -> ()
  | [last] -> print_expr oc last
  | h :: q -> fprintf oc "%a, %a" print_expr h print_exprs q


and print_var_decl oc = function
  | (v_name, Scalar) -> fprintf oc "var %s ;\n" v_name
  | (v_name, (Array e)) -> fprintf oc "var %s[%a] ;\n" v_name print_expr e
;;


let rec print_scene oc = function
  | While (e, i) ->
      fprintf oc "while %a do\n%adone\n" print_expr e print_instr i
  | If (e, i1, i2) ->
      fprintf oc "if %a then %aelse %aendif;\n"
        print_expr e print_instr i1 print_instr i2
  | Assign (id, e) -> fprintf oc "%s := %a ;\n" id print_expr e
  | ArrayWrite (id, e1, e2) ->
      fprintf oc "%s[%a] := %a ;\n" id print_expr e1 print_expr e2
  | Seq (i1, i2) -> fprintf oc "%a%a" print_instr i1 print_instr i2
  | Return e_op -> (
      match e_op with
      | None ->fprintf oc "return ;\n"
      | Some e -> fprintf oc "return %a ;\n" print_expr e
     )
  | Iapp (f_name, params) -> fprintf oc "%s (%a) ;\n" f_name print_exprs params
  | Print params -> fprintf oc "print (%a) ;\n" print_exprs params
;;


let print_toplevel oc = function
  | VARDECL decl -> print_var_decl oc decl
  | BEGIN f_def ->
      fprintf oc "BEGIN %d : %a"
        f_def.id print_scene f_def.scenes
;;


let print_program oc prgm = List.iter (print_toplevel oc) prgm ;;
 *)