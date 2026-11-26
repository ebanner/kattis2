:- initialization(main, main).

get(Nums) :-
  read_line_to_string(user_input, Line),
  number_string(N, Line),

  length(Nums, N),
  maplist(read_line_to_string(user_input), Lines),
  maplist(number_string, Nums, Lines).

main :-
  get(Nums),

  maplist(
    [Num]>>
      (
        Num mod 2 =:= 0 -> format("~w is even~n", [Num]) ;
        format("~w is odd~n", [Num])
      ),
    Nums
  ).
