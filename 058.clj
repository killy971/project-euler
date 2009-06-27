(load-file "sieve.clj")

(def primes (vec (sieve 700000000)))

(defn next-diag [start-val side]
  (map #(+ start-val (* (dec side) %)) (range 1 5)))

(defn is-prime? [n]
  (>= (java.util.Collections/binarySearch primes n) 0))

(defn side-for-ratio [threshold-ratio]
  (loop [start-val 1, side 3, prime-count 0, non-prime-count 0]
    ;(println side start-val prime-count non-prime-count)
    (let [diag-seq (next-diag start-val side)
          primes (count (filter is-prime? diag-seq))
          next-prime-count (+ prime-count primes)
          next-non-prime-count (+ non-prime-count (- 4 primes))
          current-ratio (/ next-prime-count next-non-prime-count)]
      (if (< current-ratio threshold-ratio)
        side
        (recur
          (last diag-seq)
          (+ side 2)
          next-prime-count
          next-non-prime-count)))))

(println (side-for-ratio 0.10))
