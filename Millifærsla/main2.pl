:- initialization(main, main).

get(A, B, C) :-
  read_line_to_string(user_input, SA),
  number_string(A, SA),

  read_line_to_string(user_input, SB),
  number_string(B, SB),

  read_line_to_string(user_input, SC),
  number_string(C, SC).

main :-
  get(A, B, C),

  (
    A =< B, A =< C -> Result = "Monnei" ;
    B =< A, B =< C -> Result = "Fjee" ;
    C =< A, C =< B -> Result = "Dolladollabilljoll"
  ),

  writeln(Result).
