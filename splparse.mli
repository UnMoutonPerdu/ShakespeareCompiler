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

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Splast.program
