:- initialization(main, main).

get(A, B, C) :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [A, B, C], Tokens).

solve([A, B, C], [Op1, Op2]) :-
  (
    member(Op1, [+, -, *, /]),
    Op2 = (=),
    Result =.. [Op1, A, B],
    Result =:= C
  ) ;
  (
    Op1 = (=),
    member(Op2, [+, -, *, /]),
    Result =.. [Op2, B, C],
    A =:= Result
  ).

main :-
  get(A, B, C),

  solve([A, B, C], [Op1, Op2]),

  format("~w~w~w~w~w~n", [A, Op1, B, Op2, C]).
