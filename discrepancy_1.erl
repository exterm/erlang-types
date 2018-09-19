-module(discrepancy_1).

-compile(export_all).

add(A, B) ->
    A + B.

broken() ->
  add("hello", 42).
