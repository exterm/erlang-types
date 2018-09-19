-module(discrepancy_2).

-compile(export_all).

add(A, B) ->
    A + B.

broken() ->
  intermediate("hello", 42).

intermediate(A,B) ->
  intermediate2(A,B).

intermediate2(A,B) ->
  add(A,B).
