:- initialization main.

main:-  current_prolog_flag(argv,Argv),
        nth0(0, Argv, A), % get first argument
        nth0(1, Argv, B), % get second argument
        nth0(2, Argv, C), % get third argument
        %format("~w ~w ~w ~w \n",[A,B,C]), % Print inputs
        consult('logica_binaria'), % Load main Prolog code
        atom_number(A,E), % Transform inputs into Prolog integers
        atom_number(B,F),
        atom_number(C,G),
        velocidade(X,Y,E,F,G), % Query control function with inputs
        format("~w ~w \n",[X,Y]), % Prints output variables
        halt. % Finishes execution
