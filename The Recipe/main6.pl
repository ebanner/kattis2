:- initialization(main, main).

parse(Line, Amount) :-
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [H, B, K], Tokens),
  Amount = [H, B, K].

get_amounts(Amounts) :-
  read_line_to_string(user_input, Line),
  number_string(N, Line),

  length(Lines, N),

  maplist(read_line_to_string(user_input), Lines),

  maplist(parse, Lines, Amounts).

get_cost([H, B, K], Cost) :-
  Cost is max(B-H, 0)*K.

main :-
  get_amounts(Amounts),
  maplist(get_cost, Amounts, Costs),
  sumlist(Costs, Cost),
  format("~w~n", [Cost]).

