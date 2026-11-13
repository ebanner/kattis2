:- initialization(main, main).

parse(Line, Amount) :-
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [H, B, K], Tokens),
  Amount = [H, B, K].

get_lines(Lines) :-
  read_line_to_string(user_input, Line),
  number_string(N, Line),

  length(Lines, N),

  maplist(read_line_to_string(user_input), Lines).

main :-
  get_lines(Lines),
  format("~w~n", [Lines]).

