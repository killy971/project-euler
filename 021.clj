(defn proper-divisors-sum [n]
  (reduce + (filter #(zero? (rem n %)) (range 1 (inc (quot n 2))))))

(defn amical-number [a]
  (let [b (proper-divisors-sum a)]
    (and (not= a b) (= a (proper-divisors-sum b)))))

(println
  (reduce + (filter amical-number (range 10000))))
