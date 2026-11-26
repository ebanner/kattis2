:- initialization(main, main).

get(Junks) :-
  read_line_to_string(user_input, _),
  read_line_to_string(user_input, JunksString),
  split_string(JunksString, " ", "", Tokens),
  maplist(number_string, Junks, Tokens).

main :-
  get(Junks),

  aggregate_all(
    min(X, I0),
    nth0(I0, Junks, X),
    min(_, ArgMin)
  ),

  writeln(ArgMin).

