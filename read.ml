let file_to_list filename = 
  let ic = open_in filename in 
    try 
      let line = input_line ic in 
        close_in ic;
        line 
      with e ->
        close_in_noerr ic;
        raise e;; 

let neg_adj = file_to_list "wordlist/negative_adjective.wordlist";;