:- initialization(main, main).

get(A, B, C) :-
  read_line_to_string(user_input, Line),
  split_string(Line, " ", "", Tokens),
  maplist(number_string, [A, B, C], Tokens).

solve([A, B, C], Op) :-
  member(Op, [+, -, *, /]),

  Result =.. [Op, A, B],

  Result =:= C.

main :-
  get(A, B, C),

  solve([A, B, C], Op),

  format("~w~w~w=~w~n", [A, Op, B, C]).

