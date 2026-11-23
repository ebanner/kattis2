:- initialization(main, main).

get_matches(Matches, [W, H]) :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [N, W, H], Tokens),

  length(Lines, N),
  maplist(read_line_to_string(user_input), Lines),
  maplist(number_string, Matches, Lines).

main :-
  get_matches(Matches, [W, H]),

  D is sqrt(W*W + H*H),

  maplist(
    [Result, Match]>>(
      Match =< D
        -> Result = "DA"
        ; Result = "NE"
    ),
    Results,
    Matches
  ),

  maplist(writeln, Results).
