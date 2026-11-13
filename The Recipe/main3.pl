:- initialization(main, main).

get_lines(Lines) :-
  read_line_to_string(user_input, L1),
  read_line_to_string(user_input, L2),
  read_line_to_string(user_input, L3),

  Lines = [L1, L2, L3].

main :-
  get_lines(Lines),
  format("~w~n", [Lines]).

