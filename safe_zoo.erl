-module(safe_zoo).
-export([main/0]).

-type red_panda() :: bamboo | birds | eggs | berries.
-type squid() :: sperm_whale.
-type food(A) :: fun(() -> A).

-spec feeder(red_panda) -> food(red_panda());
            (squid) -> food(squid()).
-spec feed_red_panda(food(red_panda())) -> red_panda().
-spec feed_squid(food(squid())) -> squid().

feeder(red_panda) ->
  fun() ->
    element(random:uniform(4), {bamboo, birds, eggs, berries})
  end;
feeder(squid) ->
  fun() -> sperm_whale end.

feed_red_panda(Generator) ->
  Food = Generator(),
  io:format("feeding ~p to the red panda~n", [Food]),
  Food.

feed_squid(Generator) ->
  Food = Generator(),
  io:format("throwing ~p in the squid's aquarium~n", [Food]),
  Food.

main() ->
  %% Random seeding
  <<A:32, B:32, C:32>> = crypto:rand_bytes(12),
  random:seed(A, B, C),
  %% The zoo buys a feeder for both the red panda and squid
  FeederRP = feeder(red_panda),
  FeederSquid = feeder(squid),
  %% Time to feed them!
  %% This should not be right!
  feed_squid(FeederRP),
  feed_red_panda(FeederSquid).
