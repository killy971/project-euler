(load-file "sieve.clj")

(def primes-seq (sieve 10000000))

(defn set-cons [e l]
  (cond
    (empty? l) (list e)
    (= e (first l)) l
    :default (cons e l)))

(defn unique-prime-factors [x]
  (loop [f-seq (), p-seq primes-seq, n x]
    (let [p (first p-seq)
          d (zero? (rem n p))
          a (= p (first f-seq))]
    (cond
      (= 1 n) (reverse f-seq)
      (zero? (rem n p)) (recur (set-cons p f-seq) p-seq (quot n p))
      :default (recur f-seq (rest p-seq) n)))))

(defn phi [x]
  (reduce #(* %2 (/ (dec %1) %1)) x (unique-prime-factors x)))
