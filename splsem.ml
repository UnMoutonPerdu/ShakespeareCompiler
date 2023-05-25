(* open Splast;;

type pcfval =
  | Intval of int
  | Boolval of bool
  | Stringval of string
  | Funval of { param: string; body: expr; env: environment }
  | Funrecval of { fname: string; param: string; body: expr; env: environment }

and environment = (string * pcfval) list
;;

let rec printval = function
  | Intval n -> Printf.printf "%d" n
  | Boolval b -> Printf.printf "%s" (if b then "true" else "false")
  | Stringval s -> Printf.printf "%S" s
  | Funval _ -> Printf.printf "<fun>"
  | Funrecval _ -> Printf.printf "<fun rec>"
;;

(* Environnement. *)
let init_env = [] ;;

let error msg = raise(Failure msg) ;;

let extend rho x v = (x, v) :: rho ;;

let lookup var_name rho =
  try List.assoc var_name rho
  with Not_found -> error (Printf.sprintf "Undefined ident '%s'" var_name)
;;


(* Fonction "bouche-trou". *)
let afinir () = Stringval "A FINIR" ;;


let rec eval e rho =
  match e with
  | EInt n -> Intval n
  | EBool b -> Boolval b
  | EString s -> Stringval s
  | EIdent v -> lookup v rho
  | EApp (e1, e2) -> (
      match eval e1 rho with 
        | Funval {param; body; env} -> eval body (extend env param (eval e2 rho))
        | Funrecval {fname; param; body; env} as fval -> eval body (extend (extend env param (eval e2 rho)) fname fval)
        | _ -> raise (Failure "Must be a function")
  )
  | EMonop ("-", e) -> (
      match eval e rho with
        | Intval n -> Intval (-n)
        | _ -> raise (Failure "Must be an integer value")
  )
  | EMonop (op, _) ->
      error (Printf.sprintf "Unknown unary op: %s" op)
  | EBinop (op, e1, e2) -> (
    match (eval e1 rho, eval e2 rho) with
    | (Intval n1, Intval n2) -> (
        match op with
          | "+" -> Intval(n1 + n2)
          | "-" -> Intval(n1 - n2) 
          | "*" -> Intval(n1 * n2)
          | "/" -> Intval(n1 / n2)
          | "=" -> Boolval(n1 = n2)
          | "<=" -> Boolval(n1 <= n2)
          | "<" -> Boolval(n1 < n2)
          | ">" -> Boolval(n1 > n2)
          | ">=" -> Boolval(n1 >= n2)
          | _  -> raise (Failure (Printf.sprintf "Invalid integer operator: %s" op))
    )
    | (Boolval b1, Boolval b2) -> (
        match op with 
          | "=" -> Boolval(b1 = b2)
          | _ -> raise (Failure (Printf.sprintf "Invalid integer operator: %s" op))
    )
    | (Stringval s1, Stringval s2) -> (
        match op with 
          | "=" -> Boolval (s1 = s2)
          | _ -> raise (Failure (Printf.sprintf "Invalid integer operator: %s" op))
    )
    | _ -> raise (Failure (Printf.sprintf "Invalid operands for operator: %s" op))
  )
  | EIf (e, e1, e2) -> (
      match eval e rho with
        | Boolval b -> eval (if b then e1 else e2) rho
        | _ -> raise (Failure "Must be a boolean value")
  )
  | EFun (a, e) -> Funval { param = a; body = e; env = rho }
  | ELet (x, e1, e2) -> eval e2 (extend rho x (eval e1 rho))
  | ELetrec (f, x, e1, e2) -> eval e2 (extend rho f (Funrecval {fname = f; param = x; body = e1; env = rho}))
;;

let eval e = eval e init_env ;;
 *)