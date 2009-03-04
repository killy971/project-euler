(require 'clojure.contrib.combinatorics)

(defn nth-permutation [n]
  (nth (clojure.contrib.combinatorics/permutations (range 10)) (dec n)))

(println
  (reduce str (nth-permutation 1000000)))

