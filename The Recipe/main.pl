:- initialization(main, main).

main :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [H, B, K], Tokens),
  Cost is max(B-H, 0)*K,
  format("~w~n", [Cost]).

