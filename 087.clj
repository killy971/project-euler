(load-file "sieve.clj")

(defn for-p [primes, max-n, p-sum, array, pow-f, f2]
  (loop [p (first primes), p-seq (rest primes), arr array]
    (let [sum (+ p-sum (pow-f p))]
      (cond
        (> sum max-n) array
        (empty? p-seq) (f2 sum arr)
        :default (recur (first p-seq) (rest p-seq) (f2 sum arr))))))

(defn for-c [primes, max-n, p-sum, array]
  (for-p primes max-n p-sum array #(* % % % %)
            (fn [sum, arr] (do (aset arr sum 1) arr))))

(defn for-b [primes, max-n, p-sum, array]
  (for-p primes max-n p-sum array #(* % % %)
            (fn [sum, arr] (for-c primes max-n sum arr))))

(defn for-a [primes, max-n, p-sum, array]
  (for-p primes max-n p-sum array #(* % %)
            (fn [sum, arr] (for-b primes max-n sum arr))))

(defn fill-array [max-n]
  (let [array (int-array max-n 0)
        primes (sieve (Math/floor (Math/sqrt (- max-n (* 2 2) (* 2 2 2)))))]
    (for-a primes max-n 0 array)))

(defn count-ones [array]
  (count (filter #(= % 1) array)))

(println (count-ones (fill-array 5e7)))