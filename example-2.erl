-module('example-2').

-compile(export_all).

-spec wait(non_neg_integer()) -> ok.
wait(Milliseconds) ->
    receive
    after Milliseconds -> ok
    end.

wait2(Milliseconds) ->
    receive
    after Milliseconds -> ok
    end.
