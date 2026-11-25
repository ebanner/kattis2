:- initialization(main, main).

get([N, K], Ratings) :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [N, K], Tokens),

  length(Ratings_, K),
  maplist(read_line_to_string(user_input), Ratings_),
  maplist(number_string, Ratings, Ratings_).

average(Nums, Average) :-
  length(Nums, N),
  sum_list(Nums, Sum),
  Average is Sum / N.

main :-
  get([N, K], Ratings),

  M is N-K,

  length(Highest, M),
  maplist(=(3), Highest),
  append(Ratings, Highest, Best),
  average(Best, Maximum),

  length(Lowest, M),
  maplist(=(-3), Lowest),
  append(Ratings, Lowest, Worst),
  average(Worst, Minimum),

  format("~w ~w~n", [Minimum, Maximum]).
