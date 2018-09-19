-module('example-3').

-compile(export_all).

-spec wait(non_neg_integer()) -> ok.
wait(Milliseconds) ->
    receive
    after Milliseconds -> ok
    end.

% actually, this works with things that are not integers
wait2(Milliseconds) ->
    receive
    after Milliseconds -> ok
    end.
