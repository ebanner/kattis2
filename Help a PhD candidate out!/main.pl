:- initialization(main, main).

solve_(Problem, Solution) :-
  split_string(Problem, "+", "", Tokens),
  maplist(number_string, Numbers, Tokens),
  sum_list(Numbers, Solution).

solve(Problem, Solution) :-
  sub_string(Problem, _, _, _, "=") -> Solution = "skipped" ;
  solve_(Problem, Solution).

main :-
  read_line_to_string(user_input, Line),
  number_string(N, Line),

  length(Problems, N),
  maplist(read_line_to_string(user_input), Problems),

  maplist(solve, Problems, Solutions),

  maplist(writeln, Solutions).

