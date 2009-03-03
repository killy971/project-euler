(require 'clojure.contrib.combinatorics)
(println
  (nth (clojure.contrib.combinatorics/permutations (range 10)) 1000000))

