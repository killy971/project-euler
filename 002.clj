(defn fib-seq
  [max]
  (loop [fibs [1 0]]
    (if (> (first fibs) max)
      (rest fibs)
      (recur (cons (+ (first fibs) (second fibs)) fibs)))))

(defn sum-even-fib
  [max]
  (reduce + (filter (fn [x] (= 1 (rem x 2)))
                    (fib-seq max))))

(println (sum-even-fib 4000000))
