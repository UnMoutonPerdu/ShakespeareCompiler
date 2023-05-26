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
  | BINOP of (value * string * value)
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


open Printf ;;


let rec print_expr oc = function
  | _ -> ()


and print_exprs oc = function
  | [] -> ()
  | [last] -> print_expr oc last
  | h :: q -> fprintf oc "%a, %a" print_expr h print_exprs q


and print_var_decl oc = function
  | _ -> ()
;;


let rec print_instr oc = function
  | _ -> ()
;;

let rec print_scene oc = function 
  | (h:scene) :: q -> fprintf oc "Scene %d (%a) : %a\n" h.id print_instr h.body print_scene q
  | [] -> ()
;;

let print_var_decls oc v_names = List.iter (print_var_decl oc) v_names ;;

let rec print_param_decls oc = function
  | [] -> ()
  | [last] -> fprintf oc "%s" last
  | h :: q -> fprintf oc "%s, %a" h print_param_decls q
;;

let rec print_act oc = function
  | h :: q -> fprintf oc "Act %d (%a) : %a\n" h.id print_scene h.scenes print_act q
  | [] -> ()
;;

let print_toplevel oc = function
  | VARDECL decl -> print_param_decls oc decl
  | BEGIN f_def -> fprintf oc "BEGIN [%a]" print_act f_def
;;


let print_program oc prgm = fprintf oc "OUISDFHSLD\n" ;;

