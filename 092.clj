(defn digits [x]
  (loop [n x, dseq []]
    (if (< n 10)
      (cons n dseq)
      (recur (quot n 10) (cons (rem n 10) dseq)))))

(defn ends-by [n]
  (loop [i n]
    (let [next (reduce + (map #(* % %) (digits i)))]
      (if (or (= next 1) (= next 89))
        next
        (recur next)))))

(println (count (filter #(= % 89) (map ends-by (range 1 10000000)))))
