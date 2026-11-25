:- initialization(main, main).

main :-
  read_line_to_string(user_input, SA),
  number_string(A, SA),

  read_line_to_string(user_input, SB),
  number_string(B, SB),

  (
    A > B -> Result = "MAGA!" ;
    B > A -> Result = "FAKE NEWS!" ;
    Result = "WORLD WAR 3!"
  ),

  writeln(Result).
