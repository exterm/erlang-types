module ImplicitEnum ( fun, other_fun ) where

fun 1 = 'a'
fun 2 = 'b'

other_fun param =
  case fun param of
    'a' -> 'A'
    'b' -> 'B'
    'c' -> 'C'
