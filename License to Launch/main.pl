:- initialization(main, main).

get(Junks) :-
  read_line_to_string(user_input, _),
  read_line_to_string(user_input, JunksString),
  split_string(JunksString, " ", "", Tokens),
  maplist(number_string, Junks, Tokens).

main :-
  get(Junks),

  min_list(Junks, MinValue),

  nth0(ArgMin, Junks, MinValue),

  writeln(ArgMin).
