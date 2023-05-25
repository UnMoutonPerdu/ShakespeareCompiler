{
    open Splparse ;; 
}

(* UTILS *)

let roman_ones = ("I" | "II" | "III" | "I"+("V" | "X") | "V"+("" | "I" | "II" | "III"))
let roman_tens = ("X" | "XX" | "XXX" | "X"+("L" | "C") | "L"+("" | "X" | "XX" | "XXX"))
let roman_hundreds = ("C" | "CC" | "CCC" | "C"+("D" | "M") | "D"+("" | "C" | "CC" | "CCC"))
let roman_thousands = ['M']+
let roman_number = (roman_ones | ((roman_tens) (roman_ones)?) | ((roman_hundreds) (roman_tens)? (roman_ones)?) | ((roman_thousands) (roman_hundreds)? (roman_tens)? (roman_ones)?))

let empty = [' ' '\t' '\r'] 
let new_line = ['\n']
let fucking_new_line = (empty | new_line)(empty)?

let characters_name = ("Achilles" | "Adonis" | "Adriana" | "Aegeon" | "Aemilia" | "Agamemnon" | "Agrippa" | "Ajax" | "Alonso" | "Andromache" | "Angelo" | "Antiochus" | "Antonio" | "Arthur" | "Autolycus" | "Balthazar" | "Banquo" | "Beatrice" | "Benedick" | "Benvolio" | "Bianca" | "Brabantio" | "Brutus" | "Capulet" | "Cassandra" | "Cassius" | "Christopher Sly" | "Cicero" | "Claudio" | "Claudius" | "Cleopatra" | "Cordelia" | "Cornelius" | "Cressida" | "Cymberline" | "Demetrius" | "Desdemona" | "Dionyza" | "Doctor Caius" | "Dogberry" | "Don John" | "Don Pedro" | "Donalbain" | "Dorcas" | "Duncan" | "Egeus" | "Emilia" | "Escalus" | "Falstaff" | "Fenton" | "Ferdinand" | "Ford" | "Fortinbras" | "Francisca" | "Friar John" | "Friar Laurence" | "Gertrude" | "Goneril" | "Hamlet" | "Hecate" | "Hector" | "Helen" | "Helena" | "Hermia" | "Hermonie" | "Hippolyta" | "Horatio" | "Imogen" | "Isabella" | "John of Gaunt" | "John of Lancaster" | "Julia" | "Juliet" | "Julius Caesar" | "King Henry" | "King John" | "King Lear" | "King Richard" | "Lady Capulet" | "Lady Macbeth" | "Lady Macduff" | "Lady Montague" | "Lennox" | "Leonato" | "Luciana" | "Lucio" | "Lychorida" | "Lysander" | "Macbeth" | "Macduff" | "Malcolm" | "Mariana" | "Mark Antony" | "Mercutio" | "Miranda" | "Mistress Ford" | "Mistress Overdone" | "Mistress Page" | "Montague" | "Mopsa" | "Oberon" | "Octavia" | "Octavius Caesar" | "Olivia" | "Ophelia" | "Orlando" | "Orsino" | "Othello" | "Page" | "Pantino" | "Paris" | "Pericles" | "Pinch" | "Polonius" | "Pompeius" | "Portia" | "Priam" | "Prince Henry" | "Prospero" | "Proteus" | "Publius" | "Puck" | "Queen Elinor" | "Regan" | "Robin" | "Romeo" | "Rosalind" | "Sebastian" | "Shallow" | "Shylock" | "Slender" | "Solinus" | "Stephano" | "Thaisa" | "The Abbot of Westminster" | "The Apothecary" | "The Archbishop of Canterbury" | "The Duke of Milan" | "The Duke of Venice" | "The Ghost" | "Theseus" | "Thurio" | "Timon" | "Titania" | "Titus" | "Troilus" | "Tybalt" | "Ulysses" | "Valentine" | "Venus" | "Vincentio" | "Viola")

let article = ("a" | "an" | "the")

let be = ("am" | "is" | "are" | "art")

let first_pers_poss = ("mine" | "my")

let first_pers_ref = ("myself")

let first_pers = ("I" | "me")

let neg_adj = ("bad" | "cowardly" | "cursed" | "damned" | "dirty" | "disgusting" | "distasteful" | "dusty" | "evil" | "fat" | "fat-kidneyed" | "fatherless" | "foul" | "hairy" | "half-witted" | "horrible" | "horrid" | "infected" | "lying" | "miserable" | "misused" | "oozing" | "rotten" | "rotten" | "smelly" | "snotty" | "sorry" | "stinking" | "stuffed" | "stupid" | "vile" | "villainous" | "worried")

let neg_comp = ("punier" | "smaller" | "worse")

let neg_noun = ("Hell" | "Microsoft" | "bastard" | "beggar" | "blister" | "codpiece" | "coward" | "curse" | "death" | "devil" | "draught" | "famine" | "flirt-gill" | "goat" | "hate" | "hog" | "hound" | "leech" | "lie" | "pig" | "plague" | "starvation" | "toad" | "war" | "wolf")

let neut_adj = ("big" | "black" | "blue" | "bluest" | "bottomless" | "furry" | "green" | "hard" | "huge" | "large" | "little" | "normal" | "old" | "purple" | "red" | "rural" | "small" | "tiny" | "white" | "yellow")

let neut_noun = ("animal" | "aunt" | "brother" | "cat" | "chihuahua" | "cousin" | "cow" | "daughter" | "door" | "face" | "father" | "fellow" | "granddaughter" | "grandfather" | "grandmother" | "grandson" | "hair" | "hamster" | "horse" | "lamp" | "lantern" | "mistletoe" | "moon" | "morning" | "mother" | "nephew" | "niece" | "nose" | "purse" | "road" | "roman" | "sister" | "sky" | "son" | "squirrel" | "stone wall" | "thing" | "town" | "tree" | "uncle" | "wind")

let nothing = ("nothing" | "zero")

let pos_adj = ("amazing" | "beautiful" | "blossoming" | "bold" | "brave" | "charming" | "clearest" | "cunning" | "cute" | "delicious" | "embroidered" | "fair" | "fine" | "gentle" | "golden" | "good" | "handsome" | "happy" | "healthy" | "honest" | "lovely" | "loving" | "mighty" | "noble" | "peaceful" | "pretty" | "prompt" | "proud" | "reddest" | "rich" | "smooth" | "sunny" | "sweet" | "sweetest" | "trustworthy" | "warm")

let pos_comp = ("better" | "bigger" | "fresher" | "friendlier" | "nicer" | "jollier")

let pos_noun = ("Heaven" | "King" | "Lord" | "angel" | "flower" | "happiness" | "joy" | "plum" | (("summer's")(fucking_new_line)("day")) | "hero" | "rose" | "kingdom" | "pony")

let sec_pers_poss = ("thine" | "thy" | "your")

let sec_pers_ref = ("thyself" | "yourself")

let sec_pers = ("thee" | "you" | "thou" | "You" | "Thee" | "Thou")

let third_pers_poss = ("his" | "her" | "its" | "their")

let act = ("Act " | "act ")(roman_number)

let scene = ("Scene " | "scene ")(roman_number)

let input_num = ("Listen to" | "listen to")(fucking_new_line)(sec_pers_poss)(fucking_new_line)("heart")

let input_str = ("Open" | "open")(fucking_new_line)(sec_pers_poss)(fucking_new_line)("mind")

let output_num = ("Open" | "open")(fucking_new_line)(sec_pers_poss)(fucking_new_line)("heart")

let output_str = ("Speak" | "speak")(fucking_new_line)(sec_pers_poss)(fucking_new_line)("mind")

let goto = ("Let us " | "let us " | "We shall " | "we shall " | "We must " | "we must ")("return to " | "proceed to ")

let recall = ("Recall" | "recall")

(* rule description var = parse 
    | empty 
        {description var lexbuf}
    | new_line 
        {description var lexbuf}
    | (characters_name as name)(",")
        {description (var @ [Initialiser(name) }
    | act as num 
        {act_or_scene_desc (var @ [Act(10 * int_of_string(to_decimal 0 (Lexing.from_string num))) }
    | scene as num 
        {act_or_scene (var @ [Scene(int_of_string(to_decimal 0 (Lexing.from_string num))) }
    | _ 
        {description var lexbuf}
    | eof 
        {(var @ [EOF])} *)
    
rule lex = parse
    | empty 
        {lex lexbuf}
    | new_line 
        {lex lexbuf}
    | be(" ") 
        { Be }
    | (characters_name as name)(",")
        { Initialiser(in_description [name] lexbuf) } 
    | (characters_name as name)(":") 
        { Speaker(name) }
    | (characters_name as name)(" ") 
        { Character(name) }
    | first_pers_poss 
        { FirstPersPoss }
    | first_pers_ref 
        { FirstPersRef }
    | first_pers(" ") 
        { FirstPers }
    | (neg_adj | pos_adj | neut_adj) 
        { Adj }
    | neg_comp 
        { NegComp }
    | neg_noun 
        { NegNoun }
    | neut_noun 
        { NeutNoun }
    | nothing 
        { Nothing }
    | pos_comp 
        { PosComp }
    | pos_noun 
        { PosNoun }
    | sec_pers_poss 
        { SecPersPoss }
    | sec_pers_ref 
        { SecPersRef }
    | sec_pers 
        { SecPers }
    | third_pers_poss  
        { ThiPersPoss }
    | "and "
        { And }
    | "than "
        { Than }
    | "as "
        { As }
    | "not "
        { Not }
    | act as num  
        { Act(10 * int_of_string(to_decimal 0 (Lexing.from_string num))) }
    | scene as num 
        { Scene(int_of_string(to_decimal 0 (Lexing.from_string num))) }
    | ("the")(fucking_new_line)("sum")(fucking_new_line)("of")
        { Sum }
    | ("the")(fucking_new_line)("product")(fucking_new_line)("of")
        { Product }
    | ("the")(fucking_new_line)("difference")(fucking_new_line)("between")
        { Difference }
    | ("the")(fucking_new_line)("quotient")(fucking_new_line)("between")
        { Quotient }
    | ("the")(fucking_new_line)("square")(fucking_new_line)("of")
        { Square }
    | ("the")(fucking_new_line)("cube")(fucking_new_line)("of")
        { Cube }
    | input_num
        { InputNum }
    | input_str
        { InputStr }
    | output_num
        { OutputNum }
    | output_str
        { OutputStr }
    | "[Enter"
        {Entering (enter_exit [] lexbuf)}
    | "[Exit"
        {Exiting (enter_exit [] lexbuf)}
    | "[Exeunt"
        { in_exeunt lexbuf; Exeunt }
    | ("If")(fucking_new_line)("so")
        { If }
    | ("If")(fucking_new_line)("not")
        { IfNot }
    | goto 
        { Goto }
    | recall
        {in_recall lexbuf; Recall }
    | "Remember"
        { Remember }
    | _ 
        {lex lexbuf}
    | eof 
        { EOF }

and enter_exit var = parse 
    | characters_name as name
        { enter_exit (var @ [name]) lexbuf }
    | "]" 
        { var }
    | _ 
        {enter_exit var lexbuf}

and in_exeunt = parse 
    | "]" 
        { () }
    | _ 
        {in_exeunt lexbuf}

and in_description var = parse 
    | (".")(fucking_new_line)(characters_name as name)
        {in_description (var @ [name]) lexbuf }
    | (".")
        { var }
    | _ 
        {in_description var lexbuf}

(* and act_or_scene var = parse 
    | "."
        {in_description var lexbuf}
    | _ 
        {act_or_scene var lexbuf}
    | eof 
        {(var @ [EOF])} *)

and in_recall = parse
    | "!" 
        { () }
    | _ 
        {in_recall lexbuf}

and to_decimal num = parse
    | "Act "    { to_decimal num lexbuf}
    | "Scene "  { to_decimal num lexbuf}
    | "M"       { to_decimal (num + 1000) lexbuf}
    | "CM"      { to_decimal (num + 900)  lexbuf}
    | "D"       { to_decimal (num + 500)  lexbuf}
    | "CD"      { to_decimal (num + 400)  lexbuf}
    | "C"       { to_decimal (num + 100)  lexbuf}
    | "XC"      { to_decimal (num + 90)   lexbuf}
    | "L"       { to_decimal (num + 50)   lexbuf}
    | "XL"      { to_decimal (num + 40)   lexbuf}
    | "X"       { to_decimal (num + 10)   lexbuf}
    | "IX"      { to_decimal (num + 9)    lexbuf}
    | "V"       { to_decimal (num + 5)    lexbuf}
    | "IV"      { to_decimal (num + 4)    lexbuf}
    | "I"       { to_decimal (num + 1)    lexbuf}
    | eof       { (string_of_int num) }

{

}