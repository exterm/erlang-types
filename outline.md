# Outline

- people write code that contains bugs
- the earlier these bugs are found, the cheaper they are
  - dynamic language:
    - local tests
    - tophatting
    - CI
    - production
  - costs increase because
    - loss of context
    - cost of infrastructure
    - time spent going back and forth
    - production / consumer impact
- Type systems are very different
  - Java:
    - very primitive inference
    - verbose and misleading
    - holes
      - nullable types
      - http://wouter.coekaerts.be/2018/java-type-system-broken
    - lots of work for OK effect
  - Haskell:
    - Hindley-Milner
    - Academic & Idealistic
    - complex
    - theoretically great
  - Erlang
    - success types http://www.it.uu.se/research/group/hipe/papers/succ_types.pdf
    -


- demonstrate
  - simple type mismatch without specs
    - with specs
  - dead code detection
  - subtypes and exhaustiveness
  - singleton types
  - discarded type information
