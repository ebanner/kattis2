:- initialization(main, main).

get(Faces1, Faces2, N) :-
  read_line_to_string(user_input, Line1),
  split_string(Line1, " ", "", Tokens1),
  maplist(number_string, Faces1, Tokens1),

  read_line_to_string(user_input, Line2),
  split_string(Line2, " ", "", Tokens2),
  maplist(number_string, Faces2, Tokens2),

  length(Faces1, N),
  length(Faces2, M),

  N =:= M.

main :-
  get(Faces1, Faces2, N),

  sum_list(Faces1, Sum1),
  Average1 is Sum1 / N,

  sum_list(Faces2, Sum2),
  Average2 is Sum2 / N,

  (
    Average1 > Average2 -> Y = "Gunnar" ;
    Average2 > Average1 -> Y = "Emma" ;
    Y = "Tie"
  ),

  writeln(Y).
