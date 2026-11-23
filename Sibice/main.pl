:- initialization(main, main).

main :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [N, W, H], Tokens),

  length(Lines, N),
  maplist(read_line_to_string(user_input), Lines),
  maplist(number_string, Matches, Lines),

  D is sqrt(W*W + H*H),

  maplist(
    [Fits, Match]>>(
      Match =< D
      -> Fits = true
      ; Fits = false
    ),
    Responses,
    Matches
  ),

  maplist(
    [Result, Response]>>(
      Response -> Result = "DA" ; Result = "NE"
    ),
    Results,
    Responses
  ),

  maplist(writeln, Results).
