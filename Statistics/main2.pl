:- initialization(main, main).

get(Nums) :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", [_|Tokens]),
  maplist(number_string, Nums, Tokens).

main :-
  get(Nums),

  min_list(Nums, Min),
  max_list(Nums, Max),

  Range is Max - Min,

  format("Case X: ~w ~w ~w~n", [Min, Max, Range]).
