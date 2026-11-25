:- initialization(main, main).

main :-
  read_line_to_string(user_input, SA),
  number_string(A, SA),

  read_line_to_string(user_input, SB),
  number_string(B, SB),

  read_line_to_string(user_input, SC),
  number_string(C, SC),

  (
    A =< B, A =< C -> Result = "Monnei" ;
    B =< A, B =< C -> Result = "Fjee" ;
    C =< A, C =< B -> Result = "Dolladollabilljoll"
  ),

  writeln(Result).
