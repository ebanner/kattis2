:- initialization(main, main).

main :-
    read_line_to_string(user_input, Line),
    number_string(Iterations, Line),
    Seconds is Iterations*40*60*60,
    format("~w~n", [Seconds]).
