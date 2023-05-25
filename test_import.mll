{
    open Splast;;   
}

let empty = [' ' '\t' '\r'] 
let new_line = ['\n']
    
rule lex var = parse
    | empty {lex var lexbuf}
    | new_line {lex var lexbuf}
    | ("bad" | "cowardly" | "cursed" | "damned" | "dirty" | "disgusting" | "distasteful" | "dusty" | "evil" | "fat" | "fat-kidneyed" | "fatherless" | "foul" | "hairy" | "half-witted" | "horrible" | "horrid" | "infected" | "lying" | "miserable" | "misused" | "oozing" | "rotten" | "rotten" | "smelly" | "snotty" | "sorry" | "stinking" | "stuffed" | "stupid" | "vile" | "villainous" | "worried")
         {lex (var @ [" neg"]) lexbuf}
    | _ {lex (var @ [" other"]) lexbuf}
    | eof {(var)}

{

}