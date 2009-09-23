(defn to-d [number]
  (loop [n number, digit-seq []]
    (if (< n 10)
      (cons n digit-seq)
      (recur (quot n 10) (cons (rem n 10) digit-seq)))))

(def e-seq
  (drop 1 (map #(if (zero? (rem % 3)) (* 2 (/ % 3)) 1) (iterate inc 1))))

(defn e-frac [n]
  (let [c-seq (reverse (take (dec n) e-seq))]
    (+ 2 (reduce #(/ (+ %1 %2)) (/ (first c-seq)) (rest c-seq)))))

(println (reduce + (to-d (.numerator (e-frac 100)))))
