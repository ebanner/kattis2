:- initialization(main, main).

get_amount(Amount) :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [H, B, K], Tokens),
  Amount = [H, B, K].

main :-
  get_amount([H, B, K]),
  Cost is max(B-H, 0)*K,
  format("~w~n", [Cost]).

