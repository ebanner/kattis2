:- initialization(main, main).

get(A, B, C) :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [A, B, C], Tokens).

solve([A, O1, B, O2, C]) :-
  (
    member(O1, [+, -, *, /]),
    O2 = (=),
    Result =.. [O1, A, B],
    Result =:= C
  ) ;
  (
    O1 = (=),
    member(O2, [+, -, *, /]),
    Result =.. [O2, B, C],
    A =:= Result
  ).

main :-
  get(A, B, C),

  solve([A, O1, B, O2, C]),

  format("~w~w~w~w~w~n", [A, O1, B, O2, C]).
