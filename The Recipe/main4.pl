:- initialization(main, main).

parse(Line, Amount) :-
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [H, B, K], Tokens),
  Amount = [H, B, K].

get_amounts(Amounts) :-
  read_line_to_string(user_input, L1),
  read_line_to_string(user_input, L2),
  read_line_to_string(user_input, L3),

  Lines = [L1, L2, L3],

  maplist(parse, Lines, Amounts).

main :-
  get_amounts(Amounts),
  format("~w~n", [Amounts]).

