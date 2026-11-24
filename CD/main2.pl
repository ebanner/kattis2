:- initialization(main, main).

get(JackCDs, JillCDs) :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", Toks),
  maplist(number_string, [N, M], Toks),

  length(JackCDs, N),
  maplist(read_line_to_string(user_input), JackCDs_),
  maplist(number_string, JackCDs, JackCDs_),

  length(JillCDs, M),
  maplist(read_line_to_string(user_input), JillCDs_),
  maplist(number_string, JillCDs, JillCDs_).

main :-
  get(JackCDs, JillCDs),

  intersection(JackCDs, JillCDs, CDs),

  length(CDs, T),

  writeln(T).
