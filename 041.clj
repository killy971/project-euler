(load-file "sieve.clj")

(defn digits [x]
  (loop [n x, dseq ()]
    (if (< n 10)
      (cons n dseq)
      (recur (quot n 10) (cons (rem n 10) dseq)))))

(defn pandigital? [x]
  (let [d-list (sort (digits x))]
    (and
      (not= 0 (first d-list))
      (= d-list (range 1 (inc (count d-list)))))))

(println (last (filter #(pandigital? %) (sieve 7654321))))
