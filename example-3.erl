-module('example-3').

-export([public1/0,
         public2/0,
         public3/0,
         public4/0]).

public1() ->
    private_add(1, 2).

public2() ->
    private_add(1, 3).

public3() ->
    private_add(2, 3).

private_add(A, B) ->
    A + B.

public4() ->
    matching_demo(private_add(1,2)).

%% -spec matching_demo(3 | 4 | 5) -> 1 | 2 | 3.
matching_demo(A) ->
    case A of
        4 -> 1;
        5 -> 2
    end.
